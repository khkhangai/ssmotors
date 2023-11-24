<?php
/* Smarty version 4.3.2, created on 2023-11-21 09:48:57
  from 'C:\xampp\htdocs\ssmotors\layouts\v7\modules\Vtiger\DetailViewFullContents.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.2',
  'unifunc' => 'content_655c7d0925f943_64418618',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '248bd917d1ec42dcac6b876a951ec7fb86849699' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ssmotors\\layouts\\v7\\modules\\Vtiger\\DetailViewFullContents.tpl',
      1 => 1693558649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_655c7d0925f943_64418618 (Smarty_Internal_Template $_smarty_tpl) {
?>
<form id="detailView" method="POST"><?php $_smarty_tpl->_subTemplateRender(vtemplate_path('DetailViewBlockView.tpl',$_smarty_tpl->tpl_vars['MODULE_NAME']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('RECORD_STRUCTURE'=>$_smarty_tpl->tpl_vars['RECORD_STRUCTURE']->value,'MODULE_NAME'=>$_smarty_tpl->tpl_vars['MODULE_NAME']->value), 0, true);
?></form>
<?php }
}
