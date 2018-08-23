<?php
/**
 * Emerald by MintJoomla
 * a component for Joomla! 3.0 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

defined('_JEXEC') or die('Restricted access');

JHtml::_('formbehavior.chosen', 'select');

$user = JFactory::getUser();
$userId = $user->get('id');

$listOrder = $this->state->get('list.ordering');
$listDirn = $this->state->get('list.direction');
$canOrder = $user->authorise('core.edit.state', 'com_emerald.fields');
$saveOrder = $listOrder == 'f.ordering';

if ($saveOrder)
{
	$saveOrderingUrl = 'index.php?option=com_emerald&task=emfields.ordersave&tmpl=component';
	JHtml::_('sortablelist.sortable', 'fieldsList', 'adminForm', strtolower($listDirn), $saveOrderingUrl);
}
?>
<script type="text/javascript">
	Joomla.orderTable = function()
	{
		table = document.getElementById("sortTable");
		direction = document.getElementById("directionTable");
		order = table.options[table.selectedIndex].value;
		if (order != '<?php echo $listOrder; ?>')
		{
			dirn = 'asc';
		}
		else
		{
			dirn = direction.options[direction.selectedIndex].value;
		}
		Joomla.tableOrdering(order, dirn, '');
	}
</script>
<style type="text/css">
	.page-header .input-append {
		margin-top: 10px;
	}
	.arrow {
		margin-left: 8px;
	}
</style>
<?php echo $this->menu->render(null); ?>

<form action="<?php echo JRoute::_('index.php?option=com_emerald&view=emfields');?>" method="post" name="adminForm" id="adminForm" class="uk-form">

	<div class="page-header">
		<div class="input-append uk-float-right">
			<input type="text" placeholder="<?php echo JText::_('CFILTER_SEARCH_FIELDSDESC'); ?>" style="margin-left: 5px;" name="filter_search" id="filter_search" value="<?php echo $this->state->get('filter.search'); ?>" />
            <div class="uk-button-group">
			<button class="uk-button" type="submit" data-uk-tooltip title="<?php echo JText::_('JSEARCH_FILTER_SUBMIT'); ?>"><i class="uk-icon-search"></i></button>
			<button class="uk-button" type="button" onclick="document.id('filter_search').value='';this.form.submit();" data-uk-tooltip title="<?php echo JText::_('JSEARCH_FILTER_CLEAR'); ?>"><i class="uk-icon-remove"></i></button>
            </div>
		</div>
		<h1>
			<img src="<?php echo JUri::root(TRUE); ?>/components/com_emerald/images/cpanel/fields.png" />
			<?php echo JText::_('COM_EMERALD_FIELDS'); ?>
		</h1>
	</div>
<hr />
	<div id="j-main-container">
		<?php echo $this->buttons->render(null);?>
		<div class="uk-clearfix"></div>
		<table class="uk-table uk-table-striped" id="fieldsList">
			<thead>
				<tr>
					<th width="1%"><input type="checkbox" name="checkall-toggle" value="" onclick="Joomla.checkAll(this)" /></th>
					<th width="1%" class="nowrap center uk-hidden-small">
						<?php echo str_replace('class="hasTooltip"', 'data-uk-tooltip', JHtml::_('grid.sort', '<i class="icon-menu-2"></i>', 'f.ordering', $listDirn, $listOrder, null, 'asc', 'JGRID_HEADING_ORDERING')); ?>
					</th>
					<th width="1%" class="nowrap">
						<?php echo str_replace('class="hasTooltip"', 'data-uk-tooltip', JHtml::_('grid.sort',  'EFIELDTYPE', 'f.type', $listDirn, $listOrder)); ?>
					</th>
					<th class="title" class="nowrap center">
						<?php echo str_replace('class="hasTooltip"', 'data-uk-tooltip', JHtml::_('grid.sort',  'ENAME', 'f.name', $listDirn, $listOrder)); ?>
					</th>
					<th width="1%" class="nowrap">
						<?php echo str_replace('class="hasTooltip"', 'data-uk-tooltip', JHtml::_('grid.sort',  'JSTATUS', 'f.published', $listDirn, $listOrder)); ?>
					</th>
					<th width="1%" class="nowrap">
						<?php echo str_replace('class="hasTooltip"', 'data-uk-tooltip', JHtml::_('grid.sort',  'EACCESS', 'f.access', $listDirn, $listOrder)); ?>
					</th>
					<th width="1%" class="nowrap">
						<?php echo str_replace('class="hasTooltip"', 'data-uk-tooltip', JHtml::_('grid.sort',  'ID', 'f.id', $listDirn, $listOrder)); ?>
					</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="8">
						<div class="uk-float-right">
							<?php echo str_replace('<option value="0">'.JText::_('JALL').'</option>', '', $this->pagination->getLimitBox());?>
						</div>
						<div style="uk-float-left">
							<small>
								<?php if($this->pagination->getPagesCounter()):?>
									<?php echo $this->pagination->getPagesCounter(); ?> |
								<?php endif;?>
								<?php echo $this->pagination->getResultsCounter(); ?>
							</small>
						</div>
						<?php if($this->pagination->getPagesLinks()): ?>
							<div style="text-align: center;" class="pagination">
								<?php echo str_replace('<ul>', '<ul class="uk-pagination">', $this->pagination->getPagesLinks()); ?>
							</div>
							<div class="uk-clearfix"></div>
						<?php endif; ?>
					</td>
				</tr>
			</tfoot>
			<tbody>
			<?php
			foreach($this->items as $i => $item):
				$canCheckin = $user->authorise('core.manage',     'com_checkin') || $item->checked_out == $userId || $item->checked_out == 0;
				$canChange  = true;
				?>
				<tr class="row<?php echo $i % 2; ?>">
					<td class="center">
						<?php echo JHtml::_('grid.id', $i, $item->id); ?>
					</td>
					<td class="center">
						<?php echo $item->type; ?>
					</td>
					<td class="order nowrap center uk-hidden-small">
						<?php if ($canChange) :
							$disableClassName = '';
							$disabledLabel	  = '';

							if (!$saveOrder) :
								$disabledLabel    = JText::_('JORDERINGDISABLED');
								$disableClassName = 'inactive tip-top';
							endif; ?>
							<span class="sortable-handler <?php echo $disableClassName?>" title="<?php echo $disabledLabel?>" rel="tooltip">
								<i class="icon-menu"></i>
							</span>
							<input type="text" style="display:none"  name="order[]" size="5" value="<?php echo $item->ordering;?>" class="width-20 text-area-order " />
						<?php else : ?>
							<span class="sortable-handler inactive" >
								<i class="icon-menu"></i>
							</span>
						<?php endif; ?>
					</td>
					<td nowrap="nowrap">
						 <div class="uk-float-left">
							<?php if ($item->checked_out) : ?>
								<?php echo JHtml::_('jgrid.checkedout', $i, $item->checked_out, $item->checked_out_time, 'emfields.', $canCheckin); ?>
							<?php endif; ?>

							<a href="<?php echo JRoute::_('index.php?option=com_emerald&task=emfield.edit&id='.(int) $item->id);?>">
								<?php echo $this->escape(JText::_($item->name)); ?>
							</a>
						</div>
					</td>
					<td nowrap="nowrap" align="center">
						<?php echo str_replace('hasTooltip"', '" data-uk-tooltip', JHtml::_('jgrid.published', $item->published, $i, 'emfields.',  $canChange ));?>
					</td>
					<td class="center">
						<small><?php echo $this->escape($item->access_level); ?></small>
					</td>
					<td class="center">
						<?php echo (int) $item->id; ?>
					</td>
				</tr>
				<?php endforeach; ?>
			</tbody>
		</table>

		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>
