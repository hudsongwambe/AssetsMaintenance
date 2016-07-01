<?php /* Smarty version Smarty-3.1.7, created on 2016-07-01 14:29:06
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/EditView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:36252172057767e32e4e8c7-86697383%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '21c8b1254a5cb7c80b5fb81a665630c7c59ec8d6' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/EditView.tpl',
      1 => 1467370614,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '36252172057767e32e4e8c7-86697383',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_57767e32e7ed6',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57767e32e7ed6')) {function content_57767e32e7ed6($_smarty_tpl) {?>
<?php echo $_smarty_tpl->getSubTemplate (vtemplate_path("EditViewBlocks.tpl",$_smarty_tpl->tpl_vars['MODULE']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate (vtemplate_path("EditViewActions.tpl",$_smarty_tpl->tpl_vars['MODULE']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>