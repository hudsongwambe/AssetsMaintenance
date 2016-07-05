<?php /* Smarty version Smarty-3.1.7, created on 2016-07-05 14:20:30
         compiled from "/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Users/FPLogin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:331965524577bc22e5e8094-48566590%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9dc38b3ddfea41db5059dd1b9a3d87b982e6df0e' => 
    array (
      0 => '/var/www/html/AssetsMaintenance/includes/runtime/../../layouts/vlayout/modules/Users/FPLogin.tpl',
      1 => 1467381151,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '331965524577bc22e5e8094-48566590',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'ERROR' => 0,
    'USERNAME' => 0,
    'PASSWORD' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_577bc22e61aa5',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_577bc22e61aa5')) {function content_577bc22e61aa5($_smarty_tpl) {?>
<?php if ($_smarty_tpl->tpl_vars['ERROR']->value){?> 
    Error, please retry setting the password!! 
<?php }else{ ?> 
<h4>Loading .... </h4>
<form class="form-horizontal" name="login" id="login" method="post" action="../../../index.php?module=Users&action=Login&mode=reset">
	<input type=hidden name="username" value="<?php echo $_smarty_tpl->tpl_vars['USERNAME']->value;?>
" >
	<input type=hidden name="password" value="<?php echo $_smarty_tpl->tpl_vars['PASSWORD']->value;?>
" >
</form>
<script type="text/javascript">
    function autoLogin () {
        var form = document.getElementById("login");
        form.submit();
    }
    window.onload = autoLogin;
</script>
<?php }?><?php }} ?>