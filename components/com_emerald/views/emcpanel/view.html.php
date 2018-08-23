<?php
/**
 * Cobalt by MintJoomla
 * a component for Joomla! 1.7 - 2.5 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */
defined('_JEXEC') or die();

jimport('mint.mvc.view.base');
class EmeraldViewEmCpanel extends MViewBase
{
	function display($tpl = null)
	{
		JFactory::getDocument()->addScript(JUri::root(TRUE).'/components/com_emerald/library/js/hightcharts.js');

		$this->latest = $this->get('Latest');
		$this->activate = $this->get('Active');
		$this->data = $this->get('Analytics');

		parent::display($tpl);
	}

}