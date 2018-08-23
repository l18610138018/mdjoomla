<?php
/**
 * Emerald by MintJoomla
 * a component for Joomla! 3.0 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

defined('_JEXEC') or die;
jimport('mint.helper');

JFormHelper::loadFieldClass('list');
jimport('mint.helper');

class JFormFieldEmCountry extends JFormFieldList
{
	/**
	 * The form field type.
	 *
	 * @var		string
	 * @since	1.6
	 */
	protected $type = 'EmCountry';

	/**
	 * Method to get the field input markup.
	 *
	 * @return	string	The field input markup.
	 * @since	1.6
	 */
	protected function getOptions()
	{

		$db = JFactory::getDbo();
		$sql = "SELECT id as value, name as text FROM #__emerald_country ";

		$options = JComponentHelper::getParams('com_emerald');
		if($options->get('country_limit'))
		{
			$sql .= " WHERE id IN ('".implode("','", $options->get('country_limit'))."') ";
		}

		$sql .= " ORDER BY name ASC";
		$db->setQuery($sql);
		$options = $db->loadObjectList();

		foreach($options AS &$o)
		{
			$o->text = Mint::_('COUNTRY_'.$o->value, $o->text);
		}

		if($this->element['show_default'])
		{
			array_unshift($options, JHtml::_('select.option', '*', JText::_('EANY')));
		}

		return $options;
	}

	/**
	 * Method to get the field input markup fora grouped list.
	 * Multiselect is enabled by using the multiple attribute.
	 *
	 * @return  string  The field input markup.
	 *
	 * @since   11.1
	 */
	protected function getInput()
	{
		$out = parent::getInput();

		return $out;
	}
}