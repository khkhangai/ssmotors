<?php
/* Smarty version 4.3.2, created on 2023-11-24 10:31:50
  from 'C:\xampp\htdocs\ssmotors\layouts\v7\modules\Settings\Workflows\Tasks\VTEntityMethodTask.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.2',
  'unifunc' => 'content_65607b96771821_91669197',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9d8797f12e4c0c3c7845cf52f784129914b8fb7b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ssmotors\\layouts\\v7\\modules\\Settings\\Workflows\\Tasks\\VTEntityMethodTask.tpl',
      1 => 1693558649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65607b96771821_91669197 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="row form-group"><div class="col-sm-6 col-xs-6"><div class="row"><div class="col-sm-3 col-xs-3"><?php echo vtranslate('LBL_METHOD_NAME',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
 :</div><div class="col-sm-8 col-xs-8"><?php $_smarty_tpl->_assignInScope('ENTITY_METHODS', $_smarty_tpl->tpl_vars['WORKFLOW_MODEL']->value->getEntityMethods());
if (empty($_smarty_tpl->tpl_vars['ENTITY_METHODS']->value)) {?><div class="alert alert-info"><?php echo vtranslate('LBL_NO_METHOD_IS_AVAILABLE_FOR_THIS_MODULE',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
</div><?php } else { ?><select name="methodName" class="select2"><?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ENTITY_METHODS']->value, 'METHOD');
$_smarty_tpl->tpl_vars['METHOD']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['METHOD']->value) {
$_smarty_tpl->tpl_vars['METHOD']->do_else = false;
?><option <?php if ($_smarty_tpl->tpl_vars['TASK_OBJECT']->value->methodName == $_smarty_tpl->tpl_vars['METHOD']->value) {?>selected="" <?php }?> value="<?php echo $_smarty_tpl->tpl_vars['METHOD']->value;?>
"><?php echo vtranslate($_smarty_tpl->tpl_vars['METHOD']->value,$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
</option><?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?></select><?php }?></div></div></div></div>	
<?php }
}
