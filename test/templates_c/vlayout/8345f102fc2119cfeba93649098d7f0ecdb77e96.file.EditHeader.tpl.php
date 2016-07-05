<?php /* Smarty version Smarty-3.1.7, created on 2016-07-05 11:30:11
         compiled from "/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Reports/EditHeader.tpl" */ ?>
<?php /*%%SmartyHeaderCode:325530603576fd1ca00a0a6-82006259%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8345f102fc2119cfeba93649098d7f0ecdb77e96' => 
    array (
      0 => '/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Reports/EditHeader.tpl',
      1 => 1467381151,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '325530603576fd1ca00a0a6-82006259',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_576fd1ca08953',
  'variables' => 
  array (
    'RECORD_ID' => 0,
    'QUALIFIED_MODULE' => 0,
    'REPORT_MODEL' => 0,
    'MODULE' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_576fd1ca08953')) {function content_576fd1ca08953($_smarty_tpl) {?>
<div class="editContainer" style="padding-left: 2%;padding-right: 2%"><br><h3><?php if ($_smarty_tpl->tpl_vars['RECORD_ID']->value==''){?><?php echo vtranslate('LBL_CREATING_REPORT',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
<?php }else{ ?><?php echo vtranslate('LBL_EDITING_REPORT',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
 : <?php echo $_smarty_tpl->tpl_vars['REPORT_MODEL']->value->get('reportname');?>
<?php }?></h3><hr><div><ul class="crumbs marginLeftZero"><li class="first step"  style="z-index:9" id="step1"><a><span class="stepNum">1</span><span class="stepText"><?php echo vtranslate('LBL_REPORT_DETAILS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</span></a></li><li style="z-index:8" class="step" id="step2"><a><span class="stepNum">2</span><span class="stepText"><?php echo vtranslate('LBL_SELECT_COLUMNS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</span></a></li><li class="step last" style="z-index:7" id="step3"><a><span class="stepNum">3</span><span class="stepText"><?php echo vtranslate('LBL_FILTERS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</span></a></li></ul></div><div class="clearfix"></div></div><?php }} ?>