<?php
/**
 * Cobalt by MintJoomla
 * a component for Joomla! 1.7 - 2.5 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license   GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

defined('JPATH_PLATFORM') or die();

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.filesystem.file');

JFormHelper::loadFieldClass('list');

if(JFile::exists(JPATH_ROOT.'/components/com_cobalt/library/php/helpers/templates.php'))
{
	require_once JPATH_ROOT.'/components/com_cobalt/library/php/helpers/templates.php';
}
else
{
	require_once JPATH_ROOT.'/administrator/components/com_cobalt/helpers/templates.php';
}

class JFormFieldMersubtmpls extends JFormFieldList
{

	protected $type = 'Mersubtmpls';

	static $js = '';

	private $_key = '';

	protected function getInput()
	{
		jimport('joomla.filesystem.folder');
		jimport('joomla.filesystem.file');

		$app      = JFactory::getApplication();
/*		$document = JFactory::getDocument();
		$document->addStyleDeclaration('.tmpl_button{padding: 2px; font-size: 110%;}.tmpl_button img { padding: 0 2px 0 0; margin: 0px;}');
		$document->addScript(JUri::base(TRUE) . '/components/com_cobalt/library/js/main.js');*/

		$tmpltype     = $this->element['tmpltype'];
		$invite_label = $this->element['invite_label'];
		$tmpl_select  = $this->element['tmpl_select'];
		$noparams     = $this->element['noparams'];

		$options = array();
		if((string)$this->element['select'] == '1')
		{
			$options[] = JHTML::_('select.option', '', JText::_('CSELECTTEMPLATE'));
		}

		$options = array_merge($options, $this->getTmplObjectList($tmpltype));
		$options = array_merge($this->getOptions(), $options);

		$multi = $this->element['multi'] ? 'size="5" multiple="multiple"' : NULL;

		$script     = "<script type='text/javascript'>
			Cobalt.addTmplEditLink('{$tmpltype}', '{$this->id}', '" . $app->input->get('tmpl') . "', '" . JUri::root() . "');
		</script>";
		$javascript = " onchange=\"Cobalt.addTmplEditLink('{$tmpltype}', '{$this->id}', '" . $app->input->get('tmpl') . "', '" . JUri::root() . "')\"";

		if($noparams)
		{
			$script = $javascript = NULL;
		}

		$out = sprintf('<div class="pull-left">%s</div><div class="pull-left" style="margin-left:10px" id="%s_link">%s</div>', JHTML::_('select.genericlist', $options, $this->name . ($multi ? '[]' : NULL), $multi . $javascript, 'value', 'text', $this->value, "{$this->id}"),
			str_replace(array(']', '['), '', $this->id), $script);

		return $out;
	}

	function getTmplObjectList($type)
	{
		$app    = JFactory::getApplication();
		$result = array();

		$layouts_path = CobaltTmplHelper::getTmplPath($type);
		$tmpl_mask    = CobaltTmplHelper::getTmplMask($type);

		$files   = JFolder::files($layouts_path, $tmpl_mask['index_file']);
		$exclude = explode(',', $this->element['exclude']);

		$md5id = $this->_getKey();
		foreach($files as $key => $file)
		{
			$tmplname = preg_replace($tmpl_mask['ident'], '', $file);
			if(in_array($tmplname, $exclude))
			{
				continue;
			}

			$result[] = JHTML::_('select.option', $tmplname . "." . $md5id, $tmplname);
		}

		return $result;
	}

	private function _getKey()
	{
		$app = JFactory::getApplication();
		if($this->_key)
		{
			return $this->_key;
		}

		$option = $app->input->get('option');
		$view   = $app->input->get('view');

		if($app->input->get('newkey', FALSE))
		{
			$this->_key = md5("$option.$view." . time() . "." . rand(1, 1000000) . "." . $app->input->get('newkey', FALSE));

			return $this->_key;
		}


		$value = is_array($this->value) ? $this->value[0] : $this->value;
		$name  = explode('.', $value);
		if(count($name) > 1)
		{
			$this->_key = $name[1];

			return $this->_key;
		}

		$encid = $app->input->getVar('encid', FALSE);
		if($encid)
		{
			$this->_key = $encid;

			return $this->_key;
		}

		$option     = $app->input->get('option');
		$view       = $app->input->get('view');
		$this->_key = md5("$option.$view." . time() . "." . rand(1, 1000000));

		return $this->_key;
	}
}