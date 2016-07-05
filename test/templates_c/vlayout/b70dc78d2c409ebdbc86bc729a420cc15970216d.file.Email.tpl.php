<?php /* Smarty version Smarty-3.1.7, created on 2016-07-01 14:04:13
         compiled from "/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/uitypes/Email.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1704591805576fc9f4a16b06-91008935%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b70dc78d2c409ebdbc86bc729a420cc15970216d' => 
    array (
      0 => '/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/uitypes/Email.tpl',
      1 => 1467381151,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1704591805576fc9f4a16b06-91008935',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_576fc9f4aa96d',
  'variables' => 
  array (
    'FIELD_MODEL' => 0,
    'MODULE' => 0,
    'MODE' => 0,
    'FIELD_INFO' => 0,
    'SPECIAL_VALIDATOR' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_576fc9f4aa96d')) {function content_576fc9f4aa96d($_smarty_tpl) {?>
<?php $_smarty_tpl->tpl_vars["FIELD_INFO"] = new Smarty_variable(Vtiger_Util_Helper::toSafeHTML(Zend_Json::encode($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getFieldInfo())), null, 0);?><?php $_smarty_tpl->tpl_vars["SPECIAL_VALIDATOR"] = new Smarty_variable($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getValidator(), null, 0);?><input id="<?php echo $_smarty_tpl->tpl_vars['MODULE']->value;?>
_editView_fieldName_<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('name');?>
" class="input-large" data-validation-engine="validate[<?php if ($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory()==true){?> required,<?php }?>funcCall[Vtiger_Base_Validator_Js.invokeValidation]]" name="<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getFieldName();?>
"value="<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('fieldvalue');?>
" <?php if ($_smarty_tpl->tpl_vars['MODE']->value=='edit'&&$_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('uitype')=='106'){?> readonly <?php }?> data-fieldinfo='<?php echo $_smarty_tpl->tpl_vars['FIELD_INFO']->value;?>
' <?php if (!empty($_smarty_tpl->tpl_vars['SPECIAL_VALIDATOR']->value)){?>data-validator=<?php echo Zend_Json::encode($_smarty_tpl->tpl_vars['SPECIAL_VALIDATOR']->value);?>
<?php }?> /><?php }} ?>