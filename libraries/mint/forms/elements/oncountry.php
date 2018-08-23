<?php
/**
 * Onyx by MintJoomla
 * a component for Joomla! 3.0 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

defined('_JEXEC') or die;

JFormHelper::loadFieldClass('list');

class JFormFieldOnCountry extends JFormFieldList
{
	/**
	 * The form field type.
	 *
	 * @var		string
	 * @since	1.6
	 */
	protected $type = 'OnCountry';

	/**
	 * Method to get the field input markup.
	 *
	 * @return	string	The field input markup.
	 * @since	1.6
	 */
	protected function getOptions()
	{

		$db = JFactory::getDbo();
		$sql = "SELECT id as value, name as text FROM #__onyx_country ";

		if($this->element['use_country_limit'])
		{
			$shop = OnyxShopHelper::getShop();
			if($shop->params->get('general.country_limit'))
			{
				$sql .= " WHERE id IN ('".implode("','", $shop->params->get('general.country_limit'))."') ";
			}
		}

		$sql .= " ORDER BY name ASC";
		$db->setQuery($sql);
		$options = $db->loadObjectList();

		if($this->element['show_default'])
		{
			array_unshift($options, JHtml::_('select.option', '*', JText::_('ON_ANY')));
		}

		return $options;
	}

}