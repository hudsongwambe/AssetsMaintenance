<?php /* Smarty version Smarty-3.1.7, created on 2016-07-03 12:04:22
         compiled from "/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/ModuleSummaryView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:505328745576ce8077126e4-35737084%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e97e212a9a795601b51f31d4a59f595bd6aec555' => 
    array (
      0 => '/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/ModuleSummaryView.tpl',
      1 => 1467381151,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '505328745576ce8077126e4-35737084',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_576ce80772877',
  'variables' => 
  array (
    'MODULE_NAME' => 0,
    'SUMMARY_RECORD_STRUCTURE' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_576ce80772877')) {function content_576ce80772877($_smarty_tpl) {?>
<div class="recordDetails"><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path('DetailViewBlockView.tpl',$_smarty_tpl->tpl_vars['MODULE_NAME']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('RECORD_STRUCTURE'=>$_smarty_tpl->tpl_vars['SUMMARY_RECORD_STRUCTURE']->value,'MODULE_NAME'=>$_smarty_tpl->tpl_vars['MODULE_NAME']->value), 0);?>
</div>
<?php }} ?>