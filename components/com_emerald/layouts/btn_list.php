<?php
/**
 * Cobalt by MintJoomla
 * a component for Joomla! 1.7 - 2.5 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 *
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license   GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

defined('_JEXEC') or die();
$app        = JFactory::getApplication();
$controller = $app->input->getCmd('view', 'emplan');
if($controller == 'emtaxes')
{
	$single = 'emtax';
} else {
	$single = rtrim($controller, 's');
}
?>
<div class="pull-left">
	<img src="<?php echo JUri::root(TRUE); ?>/components/com_emerald/images/arrow-turn-270-left.png" alt="Select and"
		 class="arrow"/>
	<button type="button" class="btn-submit btn btn-primary" onclick="if (document.adminForm.boxchecked.value==0){alert('<?php echo JText::_('SELECTFIRST', TRUE) ?>');}else{Emerald.submitbutton('<?php echo $single; ?>.edit');}">
		<?php echo JText::_('EEDIT'); ?>
	</button>
	<div class="btn-group">
		<button type="button" class="btn-submit btn" onclick="if (document.adminForm.boxchecked.value==0){alert('<?php echo JText::_('SELECTFIRST', TRUE) ?>');}else{Emerald.submitbutton('<?php echo $controller; ?>.publish');}">
			<?php echo JText::_('EPUBLISH'); ?>
		</button>

		<button type="button" class="btn-submit btn" onclick="if (document.adminForm.boxchecked.value==0){alert('<?php echo JText::_('SELECTFIRST', TRUE) ?>');}else{Emerald.submitbutton('<?php echo $controller; ?>.unpublish');}">
			<?php echo JText::_('EUNPUBLISH'); ?>
		</button>
	</div>

	<button type="button" class="btn-submit btn btn-danger"
			onclick="if (document.adminForm.boxchecked.value==0){alert('<?php echo JText::_('SELECTFIRST', TRUE) ?>');}else{if(confirm('<?php echo JText::_('E_SURE_DELETE'); ?>'))Emerald.submitbutton('<?php echo $controller; ?>.delete');}">
		<?php echo JText::_('EDELETE'); ?>
	</button>
</div>
<div class="pull-right">
	<button type="button" class="btn-submit btn btn-success" onclick="Emerald.submitbutton('<?php echo $single; ?>.add');">
		<?php echo JText::_('EADD'); ?>
	</button>
</div>