<?php
/* Smarty version 4.3.2, created on 2023-11-17 07:34:25
  from 'C:\xampp\htdocs\ssmotors\layouts\v7\modules\Install\InstallPreProcess.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.2',
  'unifunc' => 'content_65571781ebbfd8_01440295',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8fb1b7b89e60efeea3824515f0996806177544f2' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ssmotors\\layouts\\v7\\modules\\Install\\InstallPreProcess.tpl',
      1 => 1693558649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65571781ebbfd8_01440295 (Smarty_Internal_Template $_smarty_tpl) {
?>
<input type="hidden" id="module" value="Install" />
<input type="hidden" id="view" value="Index" />
<div class="container-fluid page-container">
	<div class="row">
		<div class="col-sm-6">
			<div class="logo">
				<img src="<?php echo vimage_path('logo.png');?>
"/>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="head pull-right">
				<h3><?php echo vtranslate('LBL_INSTALLATION_WIZARD','Install');?>
</h3>
			</div>
		</div>
	</div>
<?php }
}
