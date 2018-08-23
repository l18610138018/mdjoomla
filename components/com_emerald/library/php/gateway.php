<?php
/**
 * Emerald by MintJoomla
 * a component for Joomla! 3.0 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license   GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */
defined('_JEXEC') or die();

class EmeraldGateway extends JObject
{

	/**
	 * @var JRegistry
	 */
	public $params = '';
	public $type = '';
	public $_errors = array();

	public function __construct($type, $params)
	{
		$this->params = new JRegistry($params);
		$this->type   = $type;

		$lang = JFactory::getLanguage();
		$tag  = $lang->getTag();
		if($tag != 'en-GB')
		{
			if(!JFile::exists(JPATH_BASE . "/language/{$tag}/{$tag}.com_emerald_gateway_{$type}.ini"))
			{
				$tag == 'en-GB';
			}
		}

		$lang->load('com_emerald_gateway_' . $type, JPATH_ROOT, $tag, TRUE);
	}

	public function init_params($params)
	{
		$this->params = new JRegistry($params);
	}

	public function _get_notify_url($id)
	{
		$app = JFactory::getApplication();
		$url = 'index.php?option=com_emerald&task=plans.create&Itemid=1&processor=' . $this->type . '&em_id=' . $id;
		$url = JRoute::_($url, FALSE, -1);
		if($app->getCfg('force_ssl'))
		{
			$url = str_replace('http:', 'https:', $url);
		}

		return $url;
	}

	public function _get_return_url($id)
	{
		$app = JFactory::getApplication();
		$url = 'index.php?option=com_emerald&task=payment.back&Itemid=1&processor=' . $this->type . '&em_id=' . $id;
		$url = JRoute::_($url, FALSE, -1);
		if($app->getCfg('force_ssl'))
		{
			$url = str_replace('http:', 'https:', $url);
		}

		return $url;
	}

	public function log($message, $data = NULL)
	{
		if(!$this->params->get('errorlog'))
		{
			return;
		}
		if(is_object($data))
		{
			$data = get_object_vars($data);
		}
		if(is_array($data))
		{
			$data = print_r($data, TRUE);
		}
		error_log("\n" . $message . ':' . $data, 3, JPATH_ROOT . '/logs/' . $this->type . '.txt');
	}

	public function getButton($plan, $total)
	{
		$out = $this->_displayButton($plan, $total);

		if($out)
		{
			return $out;
		}

		$out = sprintf('<button type="button" style="width: 210px" class="btn btn-link"	data-payment-gateway="%s">%s<br><small>%s</small></button>',
			$this->type, ($this->params->get('image') != -1 ?
				sprintf('<img src="%s/components/com_emerald/library/gateways/%s/%s">', JURI::root(TRUE), $this->type, $this->params->get('image')) :
				NULL),
			JText::_($this->params->get('label'))
		);

		return $out;
	}

	private function _displayButton($plan, $total)
	{
		$tmpl = JPATH_ROOT . '/components/com_emerald/library/gateways/' . $this->type . '/tmpl/' . $this->params->get('tmpl', 'default.php');

		if(!JFile::exists($tmpl))
		{
			return NULL;
		}

		ob_start();
		include_once $tmpl;
		$out = ob_get_contents();
		ob_end_clean();

		return $out;
	}

	/**
	 * @param string $who - who asks for subscription id. May be NOTIFY_URL or RETURN_URL;
	 *
	 * @return int
	 */
	function get_subscrption_id($who = NULL)
	{
		return JFactory::getApplication()->input->get('em_id');
	}

	/**
	 * legacy method to support old IPNS
	 */
	function get_plan_id()
	{
	}

	/**
	 * legacy method to support als IPNs
	 */
	function get_user_id()
	{
	}

	function get_amount()
	{
	}

	function get_gateway_id()
	{
	}

	public function setError($error)
	{
		array_push($this->_errors, $error);
	}
}