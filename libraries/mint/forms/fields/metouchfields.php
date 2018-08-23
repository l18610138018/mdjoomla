<?php
/**
 * Cobalt by MintJoomla
 * a component for Joomla! 1.7 - 2.5 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

defined('JPATH_PLATFORM') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('mint.forms.fields.melist');
/**
 * Form Field class for the Joomla Framework.
 *
 * @package		Joomla.Framework
 * @subpackage	Form
 * @since		1.6
 */
class JFormFieldMetouchfields extends JFormMEFieldList
{
	/**
	 * The form field type.
	 *
	 * @var		string
	 * @since	1.6
	 */
	protected $type = 'Metouchfields';


	/**
	 * Method to get the field options.
	 *
	 * @return	array	The field option objects.
	 * @since	1.6
	 */
	protected function getOptions()
	{
		// Initialize variables.
		JModelLegacy::addIncludePath(JPATH_ROOT. 'components/com_mightytouch/models');
		$fieldsModel = JModelLegacy::getInstance('Fields', 'MightyTouchModel');
		$options = array();

		$fieldsModel->populateAllFieldsState();
		$fields = $fieldsModel->getItems();
		
		foreach($fields as $fld)
		{
			$options[] = JHTML::_('select.option', $fld->id, $fld->title);
		}
		
		$options = array_merge(parent::getOptions(), $options);
		
		return $options;
	}
}
