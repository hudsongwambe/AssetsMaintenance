<?php /* Smarty version Smarty-3.1.7, created on 2016-05-26 12:03:08
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/vtiger/includes/runtime/../../layouts/vlayout/modules/Vtiger/SideBar.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4427364625746e5fc6c81f9-51306454%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'daa305ed3c455d2d843099821a37f3260d75c5b8' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/vtiger/includes/runtime/../../layouts/vlayout/modules/Vtiger/SideBar.tpl',
      1 => 1464075155,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4427364625746e5fc6c81f9-51306454',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_5746e5fc6f729',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5746e5fc6f729')) {function content_5746e5fc6f729($_smarty_tpl) {?>
<div class="sideBarContents"><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path('SideBarLinks.tpl',$_smarty_tpl->tpl_vars['MODULE']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<div class="clearfix"></div><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path('SideBarWidgets.tpl',$_smarty_tpl->tpl_vars['MODULE']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</div><?php }} ?>