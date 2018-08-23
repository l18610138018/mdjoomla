<?php
/**
 * Emerald by MintJoomla
 * a component for Joomla! 3.0 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license   GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */
defined('_JEXEC') or die();

class EmeraldActionSql extends EmeraldAction {

	public function onActive($subscription)
	{
		if(!$this->params->get('sql_active'))
		{
			return;
		}
		$this->_run($subscription, $this->params->get('sql_active'));
	}

	public function onDisactive($subscription)
	{
		if(!$this->params->get('sql_disactive'))
		{
			return;
		}
		$this->_run($subscription, $this->params->get('sql_disactive'));
	}

	public function getDescription()
	{
		$out = '';
		if($this->params->get('sql_active'))
		{
			$out .= '<b>'.JText::_('X_SQL_ACTIVE').'</b><br />';
			$out .= $this->params->get('sql_active') . '<br/>';
		}

		if($this->params->get('sql_disactive'))
		{
			$out .= '<b>'.JText::_('X_SQL_DISACTIVE').'</b><br />';
			$out .= $this->params->get('sql_disactive');
		}
		return $out;
	}

	private function _run($subscription, $sql)
	{
		$from = array(
			'[PLAN_ID]',
			'[USER_ID]',
			'[USER_SUBSCR_ID]',
			'[PRICE]',
			'[GATEWAY_ID]',
			'[GATEWAY]',
			'[START_DATE]',
			'[END_DATE]'
		);

		$to = array(
			$subscription->plan_id,
			$subscription->user_id,
			$subscription->id,
			$subscription->price,
			$subscription->gateway_id,
			$subscription->gateway,
			$subscription->ctime,
			$subscription->extime
		);

		$sql = str_replace($from, $to, $sql);
		$db = JFactory::getDbo();
		$db->setQuery($sql);
		$db->query();
	}
}
