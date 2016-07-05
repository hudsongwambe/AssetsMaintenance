<?php /* Smarty version Smarty-3.1.7, created on 2016-07-01 14:50:39
         compiled from "/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/MailManager/MainuiQuickLinks.tpl" */ ?>
<?php /*%%SmartyHeaderCode:175946273557717de5420e82-24463761%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fcec365ad7f097bc7c84141beb942a21243ecddc' => 
    array (
      0 => '/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/MailManager/MainuiQuickLinks.tpl',
      1 => 1467381151,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '175946273557717de5420e82-24463761',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_57717de5448a7',
  'variables' => 
  array (
    'MAILBOX' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57717de5448a7')) {function content_57717de5448a7($_smarty_tpl) {?>

<br><div class="quickWidget"><div class="accordion-heading accordion-toggle quickWidgetHeader"><table width="100%" cellspacing="0" cellpadding="0"><tbody><tr><td class="span5"><div class="dashboardTitle textOverflowEllipsis" title="<?php echo vtranslate('LBL_Mailbox','MailManager');?>
"><h5 class="title widgetTextOverflowEllipsis"><?php echo vtranslate('LBL_Mailbox','MailManager');?>
</h5></div></td><td class="widgeticons span5" align="right"><div class="box pull-right"><a href='#Reload' id="_mailfolder_mm_reload" onclick="MailManager.reload_now();"><i alt="Refresh" title="<?php echo vtranslate('LBL_Refresh','MailManager');?>
" align="absmiddle" border="0" hspace="2" class="icon-refresh"></i></a><a href='#Settings' id="_mailfolder_mm_settings" onclick="MailManager.open_settings_detail();"><i alt="Settings" title="<?php echo vtranslate('LBL_SETTINGS','MailManager');?>
" align="absmiddle" border="0" hspace="2" class="icon-cog"></i></a></div></td></tr></tbody></table><div class="clearfix"></div></div><div class="defaultContainer <?php if ($_smarty_tpl->tpl_vars['MAILBOX']->value->exists()==false){?>hide<?php }?>"><div class="widgetContainer accordion-body collapse in"><input type=hidden name="mm_selected_folder" id="mm_selected_folder"><input type="hidden" name="_folder" id="mailbox_folder"><div class="row-fluid"><div class="span12"><ul class="nav nav-list"><li><a href="javascript:void(0);" onclick="MailManager.mail_compose();"><?php echo vtranslate('LBL_Compose','MailManager');?>
</a></li><li><a href="#Drafts" id="_mailfolder_mm_drafts" onclick="MailManager.folder_drafts(0);"><?php echo vtranslate('LBL_Drafts','MailManager');?>
</a></li></ul></div></div></div></div></div>
<?php }} ?>