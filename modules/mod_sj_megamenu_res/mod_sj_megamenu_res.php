<?php
/**
 * @package Sj Megamenu
 * @version 3.1.1
 * @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 * @copyright (c) 2012 YouTech Company. All Rights Reserved.
 * @author YouTech Company http://www.smartaddons.com
 *
 */
defined('_JEXEC') or die;

// Include the syndicate functions only once
require_once dirname(__FILE__) . '/core/helper.php';
require_once dirname(__FILE__) .'/core/Mobile_Detect.php';

// include jQuery.
if ( $params->get('include_js', 1)  ){
	$params->get('include_jquery', 1) && SjMegamenuHelper::include_jquery('megamenu');
	SjMegamenuHelper::include_js('megamenu/megamenu.js');
	SjMegamenuHelper::include_js('megamenu/jquery.megamenu.js');
	SjMegamenuHelper::include_js('megamenu/dropdown_menu.js');
	SjMegamenuHelper::include_js('megamenu/jquery.easing.1.3.js');
}
if ( $params->get('include_css', 1) ){
	SjMegamenuHelper::include_css('megamenu/font-awesome.min.css');
	SjMegamenuHelper::include_css('megamenu/megamenu.css');
	SjMegamenuHelper::include_css('megamenu/sj-megamenu.css');
	SjMegamenuHelper::include_css('megamenu/sj-megamenu-mobile.css');
}

if ($params->get('mobilemenutype') === 'push') {
	SjMegamenuHelper::include_css('megamenu/sj-pushmenu.css');
	SjMegamenuHelper::include_js('megamenu/modernizr.custom.js');
	SjMegamenuHelper::include_js('megamenu/classie.js');
	// SjMegamenuHelper::include_js('megamenu/sj-pushmenu.js');
}
if ($params->get('megamenutype') === 'vertical') {
	SjMegamenuHelper::include_css('megamenu/sj-megamenu-vertical.css');
}

$megamenu = SjMegamenuHelper::getMegaMenu($params);

$list		= SjMegamenuHelper::getList($params);
$active		= SjMegamenuHelper::getActive($params);
$active_id 	= $active->id;
$path		= $active->tree;
$default    = SjMegamenuHelper::getDefault();
$default_id = $default->id;
$class_sfx  = htmlspecialchars($params->get('class_sfx'), ENT_COMPAT, 'UTF-8');

$showAll	= $params->get('showAllChildren');

$menu_class_sfx	= htmlspecialchars($params->get('class_sfx'));
$menu_tag_id = htmlspecialchars($params->get('tag_id'));

$layout = $params->get('layout', 'default');
if( count($list) ) {
	require JModuleHelper::getLayoutPath('mod_sj_megamenu_res', $layout);
}