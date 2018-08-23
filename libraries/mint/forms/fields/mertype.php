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

class JFormFieldMertype extends JFormField
{
	protected $type = 'Mertype';
	protected function getInput()
	{
		global $app;
		
		$db			= JFactory::getDBO();
		$doc 		= JFactory::getDocument();
		$template 	= $app->getTemplate();
		$multi    	= $this->element['multi'];		
		
		$query = $db->getQuery ( true );
		
		$query->select ( 'id, name' );
		$query->from ( '#__js_res_types' );		
		$query->where ( 'published = 1' );
		$db->setQuery($query);
		$list = $db->loadObjectList();
		
		$types[] = JHTML::_('select.option', "", '- Select Type -');
		foreach ($list as $val)
		{
		    $types[] = JHTML::_('select.option', $val->id, $val->name);
		}
				
		$multiselect = '';
		count($types) > 20 ? $n = 20 : $n = count($types);
		if($multi) $multiselect = 'size="'.$n.'" multiple';
		
		
		$html = '';
		$html	.= JHTML::_('select.genericlist',  $types, 
            $this->name.($multi ? "[]" : null),  ' class="inputbox" '.$multiselect, 'value', 'text', $this->value);
            
		return $html;
	}
}
?>