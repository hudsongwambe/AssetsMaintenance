<?php /* Smarty version Smarty-3.1.7, created on 2016-07-04 08:25:56
         compiled from "/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/SendSMSForm.tpl" */ ?>
<?php /*%%SmartyHeaderCode:836439696575e79af38c487-49809739%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7bba930c7f561e6e415ff8e521a5f24c1449e762' => 
    array (
      0 => '/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Vtiger/SendSMSForm.tpl',
      1 => 1467381151,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '836439696575e79af38c487-49809739',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_575e79af463f8',
  'variables' => 
  array (
    'MODULE' => 0,
    'SOURCE_MODULE' => 0,
    'VIEWNAME' => 0,
    'SELECTED_IDS' => 0,
    'EXCLUDED_IDS' => 0,
    'SEARCH_KEY' => 0,
    'OPERATOR' => 0,
    'ALPHABET_VALUE' => 0,
    'SEARCH_PARAMS' => 0,
    'PHONE_FIELDS' => 0,
    'PHONE_FIELD' => 0,
    'PHONE_FIELD_NAME' => 0,
    'SINGLE_RECORD' => 0,
    'FIELD_VALUE' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_575e79af463f8')) {function content_575e79af463f8($_smarty_tpl) {?>
<div id="sendSmsContainer" class='modelContainer'><div class="modal-header contentsBackground"><button data-dismiss="modal" class="close" title="<?php echo vtranslate('LBL_CLOSE');?>
">&times;</button><h3><?php echo vtranslate('LBL_SEND_SMS_TO_SELECTED_NUMBERS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</h3></div><form class="form-horizontal" id="massSave" method="post" action="index.php"><input type="hidden" name="module" value="<?php echo $_smarty_tpl->tpl_vars['MODULE']->value;?>
" /><input type="hidden" name="source_module" value="<?php echo $_smarty_tpl->tpl_vars['SOURCE_MODULE']->value;?>
" /><input type="hidden" name="action" value="MassSaveAjax" /><input type="hidden" name="viewname" value="<?php echo $_smarty_tpl->tpl_vars['VIEWNAME']->value;?>
" /><input type="hidden" name="selected_ids" value=<?php echo ZEND_JSON::encode($_smarty_tpl->tpl_vars['SELECTED_IDS']->value);?>
><input type="hidden" name="excluded_ids" value=<?php echo ZEND_JSON::encode($_smarty_tpl->tpl_vars['EXCLUDED_IDS']->value);?>
><input type="hidden" name="search_key" value= "<?php echo $_smarty_tpl->tpl_vars['SEARCH_KEY']->value;?>
" /><input type="hidden" name="operator" value="<?php echo $_smarty_tpl->tpl_vars['OPERATOR']->value;?>
" /><input type="hidden" name="search_value" value="<?php echo $_smarty_tpl->tpl_vars['ALPHABET_VALUE']->value;?>
" /><input type="hidden" name="search_params" value='<?php echo ZEND_JSON::encode($_smarty_tpl->tpl_vars['SEARCH_PARAMS']->value);?>
' /><div class="modal-body tabbable"><div><span><strong><?php echo vtranslate('LBL_STEP_1',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></span>&nbsp;:&nbsp;<?php echo vtranslate('LBL_SELECT_THE_PHONE_NUMBER_FIELDS_TO_SEND',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</div><select name="fields[]" data-placeholder="<?php echo vtranslate('LBL_ADD_MORE_FIELDS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
" multiple class="chzn-select"><optgroup><?php  $_smarty_tpl->tpl_vars['PHONE_FIELD'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['PHONE_FIELD']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['PHONE_FIELDS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['PHONE_FIELD']->key => $_smarty_tpl->tpl_vars['PHONE_FIELD']->value){
$_smarty_tpl->tpl_vars['PHONE_FIELD']->_loop = true;
?><?php $_smarty_tpl->tpl_vars['PHONE_FIELD_NAME'] = new Smarty_variable($_smarty_tpl->tpl_vars['PHONE_FIELD']->value->get('name'), null, 0);?><option value="<?php echo $_smarty_tpl->tpl_vars['PHONE_FIELD_NAME']->value;?>
"><?php if (!empty($_smarty_tpl->tpl_vars['SINGLE_RECORD']->value)){?><?php $_smarty_tpl->tpl_vars['FIELD_VALUE'] = new Smarty_variable($_smarty_tpl->tpl_vars['SINGLE_RECORD']->value->get($_smarty_tpl->tpl_vars['PHONE_FIELD_NAME']->value), null, 0);?><?php }?><?php echo vtranslate($_smarty_tpl->tpl_vars['PHONE_FIELD']->value->get('label'),$_smarty_tpl->tpl_vars['SOURCE_MODULE']->value);?>
<?php if (!empty($_smarty_tpl->tpl_vars['FIELD_VALUE']->value)){?> (<?php echo $_smarty_tpl->tpl_vars['FIELD_VALUE']->value;?>
)<?php }?></option><?php } ?></optgroup></select><hr><div><span><strong><?php echo vtranslate('LBL_STEP_2',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></span>&nbsp;:&nbsp;<?php echo vtranslate('LBL_TYPE_THE_MESSAGE',$_smarty_tpl->tpl_vars['MODULE']->value);?>
&nbsp;(&nbsp;<?php echo vtranslate('LBL_SMS_MAX_CHARACTERS_ALLOWED',$_smarty_tpl->tpl_vars['MODULE']->value);?>
&nbsp;)</div><textarea class="input-xxlarge" name="message" id="message" placeholder="<?php echo vtranslate('LBL_WRITE_YOUR_MESSAGE_HERE',$_smarty_tpl->tpl_vars['MODULE']->value);?>
"></textarea></div><div class="modal-footer"><div class=" pull-right cancelLinkContainer"><a class="cancelLink" type="reset" data-dismiss="modal"><?php echo vtranslate('LBL_CANCEL',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</a></div><button class="btn btn-success" type="submit" name="saveButton"><strong><?php echo vtranslate('LBL_SEND',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button></div></form></div>
<?php }} ?>