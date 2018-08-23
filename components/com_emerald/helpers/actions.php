<?php
/**
 * Emerald by MintJoomla
 * a component for Joomla! 3.0 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 *
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license   GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

defined('_JEXEC') or die();

include_once JPATH_ROOT . '/components/com_emerald/views/emactions/html.php';
include_once JPATH_ROOT . '/components/com_emerald/models/emactions.php';

class EmeraldActionsHelper
{
	public static function run($method, $subscription)
	{
		$db = JFactory::getDbo();

		$query = $db->getQuery(TRUE);
		$query->select("*");
		$query->from("#__emerald_plans_actions");
		$query->where("plan_id = {$subscription->plan_id}");
		$db->setQuery($query);

		$actions = $db->loadObjectList();

		foreach($actions AS $action)
		{
			$class = EmeraldActionsHelper::get_action_class($action);
			$class->$method($subscription);
		}

		$plan = EmeraldApi::getPlan($subscription->plan_id);
		if($plan->params->get('properties.fields'))
		{
			$fields = MModelBase::getInstance('EmPayment', 'EmeraldModel')->getAddonFields($plan, json_decode($subscription->fields, TRUE));
			foreach($fields AS $field)
			{
				$field->$method($subscription);
			}
		}

		if(in_array($method, array('onActive','onDisactive')))
		{
			$query = sprintf("UPDATE `#__emerald_subscriptions` SET %s = 1 WHERE id = %d",
				($method == 'onActive' ? 'track_active' : 'track_disactive'), $subscription->id);
			$db->setQuery($query);
			$db->execute();
		}
	}

	public static function actions_form($plan)
	{
		$paths = new SplPriorityQueue;
		$paths->insert(JPATH_ROOT . '/components/com_emerald/views/emactions/tmpl', 1);

		$template = JFactory::getApplication()->getTemplate();
		$paths->insert(JPATH_ROOT . '/templates/' . $template . '/html/com_emerald/emactions', 2);


		$view = new EmeraldViewsEmActionsHtml(new EmeraldModelsEmActions(), $paths);
		$view->setLayout('default');
		$view->plan = $plan;

		return $view->render();
	}

	public static function load_lang($action)
	{
		$lang = JFactory::getLanguage();
		$tag  = $lang->getTag();
		if($tag != 'en-GB')
		{
			if(!JFile::exists(JPATH_BASE . "/language/{$tag}/{$tag}.com_emerald_action_{$action}.ini"))
			{
				$tag == 'en-GB';
			}
		}

		$lang->load('com_emerald_action_' . $action, JPATH_ROOT, $tag, TRUE);
	}

	public static function get_action_class($action)
	{
		static $out = array();

		$actions = JFolder::folders(JPATH_ROOT . '/components/com_emerald/library/actions/');

		if(!in_array($action->type, $actions))
		{
			throw new Exception('Action isnot installed', 500);
			$action->type = 'default';
		}
		$key = $action->type . ':' . $action->id;
		if(!empty($out[$key]) && is_object($out[$key]))
		{
			return $out[$key];
		}

		self::load_lang($action->type);

		include_once JPATH_ROOT . '/components/com_emerald/library/actions/' . $action->type . '/' . $action->type . '.php';

		$class = 'EmeraldAction' . ucfirst($action->type);

		$out[$key] = new $class($action);

		return $out[$key];
	}

	public static function get_action_name($type)
	{
		self::load_lang($type);
		$path = JPATH_COMPONENT . DIRECTORY_SEPARATOR . 'library' . DIRECTORY_SEPARATOR . 'actions';
		$xml  = $path . DIRECTORY_SEPARATOR . $type . DIRECTORY_SEPARATOR . $type . '.xml';
		$xml  = new SimpleXMLElement($xml, NULL, TRUE);

		return JText::_($xml->name);
	}

	public static function description($action)
	{
		if(!is_array($action))
		{
			$action->action = json_decode($action->action);
		}
		$out = self::get_action_class($action)->getDescription();

		$name = self::get_action_name($action->type);

		return sprintf('<h4 data-toggle="collapse" data-target="#action-%s"><span class="pull-right"><small data-action-edit="%d">Edit</small></span>%s</h4><div id="action-%s" class="collapse fade"><small>%s</small></div>',
			$action->id, $action->id, $name, $action->id, $out);
	}

	/**
	 *
	 * @param mixed  $plan_ids int or array of plan ids
	 * @param string $type     (optional) name of type actions, if not set return all types
	 *
	 * @return array of actions objects
	 */
	public static function getActions($plan_ids, $type = FALSE)
	{
		settype($plan_ids, 'array');
		if(empty($plan_ids))
		{
			return array();
		}

		$db    = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select('*');
		$query->from('#__emerald_plans_actions');
		$query->where('plan_id IN(' . implode(',', $plan_ids) . ')');
		if($type)
		{
			$query->where('type="' . $type . '"');
		}
		$db->setQuery($query);

		return $db->loadObjectList('id');
	}

	public static function cleanUrlHistory($subscription_id)
	{
		$db = JFactory::getDbo();
		$db->setQuery("DELETE FROM `#__emerald_url_history` WHERE subscription_id = " . $subscription_id);
		$db->execute();
	}
}
