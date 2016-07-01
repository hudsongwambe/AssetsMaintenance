<?php /* Smarty version Smarty-3.1.7, created on 2016-07-01 14:29:45
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/uitypes/StringDetailView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:111742614257767e594cd519-78798892%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f2bc6eb739a61b990aa9eb87d9b2c4d578ed8384' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/uitypes/StringDetailView.tpl',
      1 => 1467370614,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '111742614257767e594cd519-78798892',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'FIELD_MODEL' => 0,
    'RECORD' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_57767e594d2a4',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57767e594d2a4')) {function content_57767e594d2a4($_smarty_tpl) {?>



<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getDisplayValue($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('fieldvalue'),$_smarty_tpl->tpl_vars['RECORD']->value->getId(),$_smarty_tpl->tpl_vars['RECORD']->value);?>
<?php }} ?>