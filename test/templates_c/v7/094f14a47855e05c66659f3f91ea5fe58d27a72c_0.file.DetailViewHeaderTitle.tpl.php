<?php
/* Smarty version 4.3.2, created on 2023-11-21 09:48:56
  from 'C:\xampp\htdocs\ssmotors\layouts\v7\modules\Products\DetailViewHeaderTitle.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.2',
  'unifunc' => 'content_655c7d08f24411_01313727',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '094f14a47855e05c66659f3f91ea5fe58d27a72c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ssmotors\\layouts\\v7\\modules\\Products\\DetailViewHeaderTitle.tpl',
      1 => 1693558649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_655c7d08f24411_01313727 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\xampp\\htdocs\\ssmotors\\vendor\\smarty\\smarty\\libs\\plugins\\modifier.count.php','function'=>'smarty_modifier_count',),));
?>
<div class="col-sm-6 col-lg-6 col-md-6"><div class="record-header clearfix"><?php $_smarty_tpl->_assignInScope('IMAGE_DETAILS', $_smarty_tpl->tpl_vars['RECORD']->value->getImageDetails());?><div class="recordImage bgproducts app-<?php echo $_smarty_tpl->tpl_vars['SELECTED_MENU_CATEGORY']->value;?>
" <?php if (smarty_modifier_count($_smarty_tpl->tpl_vars['IMAGE_DETAILS']->value) > 1) {?>style = "display:block"<?php }?>><?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['IMAGE_DETAILS']->value, 'IMAGE_INFO', false, 'ITER');
$_smarty_tpl->tpl_vars['IMAGE_INFO']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['ITER']->value => $_smarty_tpl->tpl_vars['IMAGE_INFO']->value) {
$_smarty_tpl->tpl_vars['IMAGE_INFO']->do_else = false;
if (!empty($_smarty_tpl->tpl_vars['IMAGE_INFO']->value['url'])) {
if (smarty_modifier_count($_smarty_tpl->tpl_vars['IMAGE_DETAILS']->value) == 1) {?><img src="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['url'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['orgname'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['orgname'];?>
" width="100%" height="100%" align="left"><br><?php } elseif (smarty_modifier_count($_smarty_tpl->tpl_vars['IMAGE_DETAILS']->value) == 2) {?><span><img src="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['url'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['orgname'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['orgname'];?>
" width="50%" height="100%" align="left"></span><?php } elseif (smarty_modifier_count($_smarty_tpl->tpl_vars['IMAGE_DETAILS']->value) == 3) {?><span><img src="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['url'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['orgname'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['orgname'];?>
" <?php if ($_smarty_tpl->tpl_vars['ITER']->value == 0 || $_smarty_tpl->tpl_vars['ITER']->value == 1) {?>width="50%" height = "50%"<?php }
if ($_smarty_tpl->tpl_vars['ITER']->value == 2) {?>width="100%" height="50%"<?php }?> align="left"></span><?php } elseif (smarty_modifier_count($_smarty_tpl->tpl_vars['IMAGE_DETAILS']->value) == 4 || smarty_modifier_count($_smarty_tpl->tpl_vars['IMAGE_DETAILS']->value) > 4) {
if ($_smarty_tpl->tpl_vars['ITER']->value > 3) {
break 1;
}?><span><img src="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['url'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['orgname'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['IMAGE_INFO']->value['orgname'];?>
"width="50%" height="50%" align="left"></span><?php }
} else { ?><img src="<?php echo vimage_path('summary_Products.png');?>
" class="summaryImg"/><?php }
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
if (empty($_smarty_tpl->tpl_vars['IMAGE_DETAILS']->value)) {?><div class="name"><span><strong><?php echo $_smarty_tpl->tpl_vars['MODULE_MODEL']->value->getModuleIcon();?>
</strong></span></div><?php }?></div><div class="recordBasicInfo"><div class="info-row"><h4><span class="recordLabel pushDown" title="<?php echo $_smarty_tpl->tpl_vars['RECORD']->value->getName();?>
"><?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['MODULE_MODEL']->value->getNameFields(), 'NAME_FIELD');
$_smarty_tpl->tpl_vars['NAME_FIELD']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['NAME_FIELD']->value) {
$_smarty_tpl->tpl_vars['NAME_FIELD']->do_else = false;
$_smarty_tpl->_assignInScope('FIELD_MODEL', $_smarty_tpl->tpl_vars['MODULE_MODEL']->value->getField($_smarty_tpl->tpl_vars['NAME_FIELD']->value));
if ($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getPermissions()) {?><span class="<?php echo $_smarty_tpl->tpl_vars['NAME_FIELD']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['RECORD']->value->get($_smarty_tpl->tpl_vars['NAME_FIELD']->value);?>
</span>&nbsp;<?php }
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?></span></h4></div><?php $_smarty_tpl->_subTemplateRender(vtemplate_path("DetailViewHeaderFieldsView.tpl",$_smarty_tpl->tpl_vars['MODULE']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?></div></div></div><?php }
}
