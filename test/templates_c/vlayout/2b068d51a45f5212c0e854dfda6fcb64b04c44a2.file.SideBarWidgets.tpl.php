<?php /* Smarty version Smarty-3.1.7, created on 2016-05-26 12:03:08
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/vtiger/includes/runtime/../../layouts/vlayout/modules/Calendar/SideBarWidgets.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20761493965746e5fc73c126-56925333%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2b068d51a45f5212c0e854dfda6fcb64b93b17544a2' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/vtiger/includes/runtime/../../layouts/vlayout/modules/Calendar/SideBarWidgets.tpl',
      1 => 1464075155,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20761493965746e5fc73c126-56925333',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'QUICK_LINKS' => 0,
    'MODULE' => 0,
    'SIDEBARWIDGET' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_5746e5fc76c39',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5746e5fc76c39')) {function content_5746e5fc76c39($_smarty_tpl) {?>
<div class="quickWidgetContainer accordion"><?php $_smarty_tpl->tpl_vars['val'] = new Smarty_variable(1, null, 0);?><?php  $_smarty_tpl->tpl_vars['SIDEBARWIDGET'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['SIDEBARWIDGET']->_loop = false;
 $_smarty_tpl->tpl_vars['index'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['QUICK_LINKS']->value['SIDEBARWIDGET']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['SIDEBARWIDGET']->key => $_smarty_tpl->tpl_vars['SIDEBARWIDGET']->value){
$_smarty_tpl->tpl_vars['SIDEBARWIDGET']->_loop = true;
 $_smarty_tpl->tpl_vars['index']->value = $_smarty_tpl->tpl_vars['SIDEBARWIDGET']->key;
?><div class="quickWidget"><div class="accordion-heading accordion-toggle quickWidgetHeader" data-target="#<?php echo $_smarty_tpl->tpl_vars['MODULE']->value;?>
_sideBar_<?php echo Vtiger_Util_Helper::replaceSpaceWithUnderScores($_smarty_tpl->tpl_vars['SIDEBARWIDGET']->value->getLabel());?>
"data-toggle="collapse" data-parent="#quickWidgets" data-label="<?php echo $_smarty_tpl->tpl_vars['SIDEBARWIDGET']->value->getLabel();?>
"data-widget-url="<?php echo $_smarty_tpl->tpl_vars['SIDEBARWIDGET']->value->getUrl();?>
" ><span class="pull-left"><img class="imageElement" data-rightimage="<?php echo vimage_path('rightArrowWhite.png');?>
" data-downimage="<?php echo vimage_path('downArrowWhite.png');?>
" src="<?php echo vimage_path('rightArrowWhite.png');?>
" /></span><?php if ($_smarty_tpl->tpl_vars['SIDEBARWIDGET']->value->getLabel()=='LBL_ADDED_CALENDARS'||$_smarty_tpl->tpl_vars['SIDEBARWIDGET']->value->getLabel()=='LBL_ACTIVITY_TYPES'){?><span class="pull-right"><i class="icon-plus addCalendarView" title="<?php echo vtranslate('LBL_ADD_CALENDAR_VIEW',$_smarty_tpl->tpl_vars['MODULE']->value);?>
"></i></span><?php }?><h5 class="title widgetTextOverflowEllipsis" title="<?php echo vtranslate($_smarty_tpl->tpl_vars['SIDEBARWIDGET']->value->getLabel(),$_smarty_tpl->tpl_vars['MODULE']->value);?>
"><?php echo vtranslate($_smarty_tpl->tpl_vars['SIDEBARWIDGET']->value->getLabel(),$_smarty_tpl->tpl_vars['MODULE']->value);?>
</h5><div class="loadingImg hide pull-right"><div class="loadingWidgetMsg"><strong><?php echo vtranslate('LBL_LOADING_WIDGET',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></div></div><div class="clearfix"></div></div><div class="widgetContainer accordion-body collapse" id="<?php echo $_smarty_tpl->tpl_vars['MODULE']->value;?>
_sideBar_<?php echo Vtiger_Util_Helper::replaceSpaceWithUnderScores($_smarty_tpl->tpl_vars['SIDEBARWIDGET']->value->getLabel());?>
" data-url="<?php echo $_smarty_tpl->tpl_vars['SIDEBARWIDGET']->value->getUrl();?>
"></div></div><?php } ?></div><?php }} ?>