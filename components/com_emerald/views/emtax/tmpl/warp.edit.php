<?php
/**
 * Emerald by MintJoomla
 * a component for Joomla! 3.0 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

defined('_JEXEC') or die('Restricted access');

JHtml::_('behavior.formvalidation');
JHtml::_('behavior.keepalive');
JHtml::_('dropdown.init');
JHtml::_('formbehavior.chosen', 'select');
?>

<script type="text/javascript">
	Emerald.submitbutton = function(task)
	{
		if (task == 'emtax.cancel' || document.formvalidator.isValid('#item-form')) {
			Emerald.submitform(task, document.getElementById('item-form'));
		} else {
			alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED'));?>');
		}
	}
</script>
<form method="post" name="adminForm" id="item-form" class="uk-form uk-form-horizontal">
<div class="page-header">
    <div class="uk-float-right">
        <?php $layout = Mint::loadLayout('buttons', $basePath = JPATH_COMPONENT .'/layouts'); echo $layout->render(null); ?>
    </div>
	<h1>
		<?php if($this->item->id):?>
            <img src="<?php echo JUri::root(TRUE); ?>/components/com_emerald/images/cpanel/taxes.png" />
			<?php echo JText::sprintf('EEDITTAX', $this->item->tax_name);?>
		<?php else:?>
            <img src="<?php echo JUri::root(TRUE); ?>/components/com_emerald/images/cpanel/taxes.png" />
			<?php echo JText::_('ENEWTAX');?>
		<?php endif;?>
	</h1>
</div>
<hr />
	<div class="uk-grid">
		<div class="uk-width-1-1">
			<fieldset class="adminform">
				<div class="uk-form-row">
					<label class="uk-form-label"><?php echo $this->form->getLabel('id'); ?></label>
					<div class="uk-form-controls"><?php echo $this->form->getInput('id'); ?></div>
				</div>
				<div class="uk-form-row">
					<label class="uk-form-label"><?php echo $this->form->getLabel('country_id'); ?></label>
					<div class="uk-form-controls"><?php echo $this->form->getInput('country_id'); ?></div>
				</div>
				<div class="uk-form-row">
					<label class="uk-form-label"><?php echo $this->form->getLabel('state_id'); ?></label>
					<div class="uk-form-controls" id="statediv"><?php echo JText::_('ESELECT_COUNTRY'); ?></div>
				</div>
				<div class="uk-form-row">
					<label class="uk-form-label"><?php echo $this->form->getLabel('tax_name'); ?></label>
					<div class="uk-form-controls"><?php echo $this->form->getInput('tax_name'); ?></div>
				</div>
				<div class="uk-form-row">
					<label class="uk-form-label"><?php echo $this->form->getLabel('vies'); ?></label>
					<div class="uk-form-controls"><?php echo $this->form->getInput('vies'); ?></div>
				</div>
				<div class="uk-form-row">
					<label class="uk-form-label"><?php echo $this->form->getLabel('tax'); ?></label>
					<div class="uk-form-controls"><?php echo $this->form->getInput('tax'); ?></div>
				</div>
			</fieldset>
		</div>
	</div>

	<input type="hidden" name="task" value="" />
	<input type="hidden" name="id" value="<?php echo $this->item->id;?>" />
	<input type="hidden" name="return" value="<?php echo $this->state->get('state.return');?>" />
	<?php echo JHtml::_('form.token'); ?>
</form>

<script type="text/javascript">
	(function($) {
		var state = $(document.createElement('div'))
			.css({
				'display':     'inline',
				"margin-left": '10px'
			});

		$('#jform_country_id')
			.after(state)
			.bind('change keyup', function() {
				changeCountry($(this));
			});

		changeCountry($('#jform_country_id'));

		function changeCountry(el) {
			if(!el.val()) {
				return;
			}
			if(el.val() == '*')
			{
				$('#statediv').html('<?php echo JText::_('ESELECT_COUNTRY', true)?>');
				return;
			}

			$('#statediv').html('<img src="<?php echo JUri::root(TRUE); ?>/components/com_cobalt/images/load.gif" >');

			$.ajax({
				url: '<?php echo JRoute::_('index.php?option=com_emerald&task=emajax.getstates', FALSE); ?>',
				type: 'GET',
				dataType: 'html',
				data: {id: el.val(), name:'jform[state_id]', 'default': '<?php echo @$this->default['state_id']; ?>'}
			})
				.done(function(html) {
					if(!html)
					{
						$('#statediv').html('<?php echo JText::sprintf('E_STATE_NOT_FOUND', JRoute::_('index.php?option=com_emerald&view=emstates'), array('jsSafe'=>true))?>');
						return;

					}
					$('#statediv').html(html);
					$('#jformstate_id').chosen({
						disable_search_threshold : 10,
						allow_single_deselect : true
					});
				})
		}

		Emerald.redrawBS();

	}(jQuery));
</script>