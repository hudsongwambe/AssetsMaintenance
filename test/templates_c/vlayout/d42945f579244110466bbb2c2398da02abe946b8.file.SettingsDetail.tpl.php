<?php /* Smarty version Smarty-3.1.7, created on 2016-07-01 14:50:40
         compiled from "/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/MailManager/SettingsDetail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:96445946557717de6517386-67481768%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd42945f579244110466bbb2c2398da02abe946b8' => 
    array (
      0 => '/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/MailManager/SettingsDetail.tpl',
      1 => 1467381151,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '96445946557717de6517386-67481768',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_57717de664f8d',
  'variables' => 
  array (
    'MODULE' => 0,
    'MAILBOX' => 0,
    'SERVERNAME' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57717de664f8d')) {function content_57717de664f8d($_smarty_tpl) {?>

<div class="detailViewContainer"><br><form action="javascript:void(0);" method="POST" id="EditView"><div class="row-fluid"><div class="span6"><h3 class="title widgetTextOverflowEllipsis"><?php echo vtranslate('JSLBL_Settings',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</h3></div><?php if ($_smarty_tpl->tpl_vars['MAILBOX']->value&&$_smarty_tpl->tpl_vars['MAILBOX']->value->exists()){?><div class="span6"><div class="pull-right"><button class="btn edit" onclick="MailManager.open_settings()"><strong><?php echo vtranslate('LBL_EDIT',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button>&nbsp;<button class="btn btn-danger" onclick="MailManager.remove_settings(this.form);"><strong><?php echo vtranslate('LBL_DELETE_Mailbox',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button></div></div><?php }?></div><hr><?php if ($_smarty_tpl->tpl_vars['MAILBOX']->value&&$_smarty_tpl->tpl_vars['MAILBOX']->value->exists()){?><table class="table table-bordered blockContainer showInlineTable"><thead><tr><th class="blockHeader" colspan="4"><?php echo vtranslate('LBL_MAILBOX_DETAILS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</th></tr></thead><tbody><tr><td class="fieldLabel"><label class="muted pull-right"><?php echo vtranslate('LBL_ACCOUNT_TYPE',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" style="width: 70%;"><div><?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value=='gmail'){?><?php echo vtranslate('JSLBL_Gmail',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<?php }elseif($_smarty_tpl->tpl_vars['SERVERNAME']->value=='yahoo'){?><?php echo vtranslate('JSLBL_Yahoo',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<?php }elseif($_smarty_tpl->tpl_vars['SERVERNAME']->value=='fastmail'){?><?php echo vtranslate('JSLBL_Fastmail',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<?php }elseif($_smarty_tpl->tpl_vars['SERVERNAME']->value=='other'){?><?php echo vtranslate('JSLBL_Other',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<?php }?></div></td></tr><tr><td class="fieldLabel"><label class="muted pull-right"><?php echo vtranslate('LBL_Mail_Server',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" style="width: 70%;"><div><?php echo $_smarty_tpl->tpl_vars['MAILBOX']->value->server();?>
</div></td></tr><tr><td class="fieldLabel"><label class="muted pull-right"><?php echo vtranslate('LBL_Username',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" style="width: 70%;"><div><?php echo $_smarty_tpl->tpl_vars['MAILBOX']->value->username();?>
</div></td></tr><tr><td class="fieldLabel"><label class="muted pull-right"><?php echo vtranslate('LBL_REFRESH_TIME',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" style="width: 70%;"><div><?php if (strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->refreshTimeOut(),'300000')==0){?><?php echo vtranslate('LBL_5_MIN',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<?php }elseif(strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->refreshTimeOut(),'600000')==0){?><?php echo vtranslate('LBL_10_MIN',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<?php }else{ ?><?php echo vtranslate('LBL_NONE',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<?php }?></div></td></tr><tr><td class="fieldLabel"><label class="muted pull-right"><?php echo vtranslate('LBL_SELECTED_FOLDER',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" style="width: 70%;"><div><?php echo $_smarty_tpl->tpl_vars['MAILBOX']->value->folder();?>
</div></td></tr></tbody></table><?php }else{ ?><div class="mailConveterDesc" style="height: 225px;"><center><br><br><div><?php echo vtranslate('LBL_MODULE_DESCRIPTION',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</div><br><br><a href="javascript:;" onclick="MailManager.open_settings();"><u class="cursorPointer" style="font-size:12pt;"><?php echo vtranslate('LBL_CREATE_MAILBOX',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</u></a></center></div><?php }?></form></div>
<?php }} ?>