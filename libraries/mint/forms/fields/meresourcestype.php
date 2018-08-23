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
JFormHelper::loadFieldClass('melist');

class JFormFieldMeresourcestype extends JFormMEFieldList
{
	public $type = 'Meresourcestype';
	
	protected function getOptions()
	{
		JHtml::addIncludePath(JPATH_ROOT. DIRECTORY_SEPARATOR .'administrator'. DIRECTORY_SEPARATOR .'components'. DIRECTORY_SEPARATOR .'com_cobalt'. DIRECTORY_SEPARATOR .'library'. DIRECTORY_SEPARATOR .'php'. DIRECTORY_SEPARATOR .'html');
		$sections = JHtml::_('cobalt.recordtypes');
	
		$options = array();
		if ($this->element['select'] == 1)
		{
			$options[] = JHTML::_('select.option', '', JText::_('Selet Content Type'));
		}
		foreach ($sections as $type)
		{
			$options[] = JHTML::_('select.option', $type->value, $type->text);

		}
		return $options;
	}
}
?>