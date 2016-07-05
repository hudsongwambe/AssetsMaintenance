<?php /* Smarty version Smarty-3.1.7, created on 2016-07-01 14:29:46
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/NoComments.tpl" */ ?>
<?php /*%%SmartyHeaderCode:177016449057767e5a251a66-66589689%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd9d97df0ba2f37611d12c5285641b312317d9888' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/NoComments.tpl',
      1 => 1467370614,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '177016449057767e5a251a66-66589689',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_57767e5a256dd',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57767e5a256dd')) {function content_57767e5a256dd($_smarty_tpl) {?>
<div class="summaryWidgetContainer noCommentsMsgContainer"><p class="textAlignCenter"> <?php echo vtranslate('LBL_NO_COMMENTS',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</p></div><?php }} ?>