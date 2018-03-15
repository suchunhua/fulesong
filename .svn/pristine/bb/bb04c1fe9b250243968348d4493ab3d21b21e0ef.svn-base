<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<meta charset="utf-8" />
		<title>控制台</title>
		<meta name="keywords" content="kykkk" />
		<meta name="description" content="kykkk" />
		<link rel="stylesheet" href="_PLUG_/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="_PLUG_/awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="{$style}/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="{$style}/css/jquery.gritter.min.css" />
		<link rel="stylesheet" href="{$style}/css/ace-fonts.css" />
		<link rel="stylesheet" href="{$style}/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="{$style}/css/ace-part2.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="{$style}/css/ace-skins.css" />
		<link rel="stylesheet" href="{$style}/css/ace-rtl.css" />
		<link rel="stylesheet" href="{$style}/css/kykkk.css" />
		<link rel="shortcut icon" href="/favicon.ico"/>

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="{$style}/css/ace-ie.css" />
		<![endif]-->

		<!-- inline styles related to this page -->
		<style>
			/* some elements used in demo only */
			.spinner-preview {
				width: 100px;
				height: 100px;
				text-align: center;
				margin-top: 60px;
			}
			
			.dropdown-preview {
				margin: 0 5px;
				display: inline-block;
			}
			.dropdown-preview  > .dropdown-menu {
				display: block;
				position: static;
				margin-bottom: 5px;
			}
		</style>

		<!-- ace settings handler -->
		<script src="{$style}/js/ace-extra.js"></script>
		<!--[if lte IE 8]>
		<script src="../components/html5shiv/dist/html5shiv.min.js"></script>
		<script src="../components/respond/dest/respond.min.js"></script>
		<![endif]-->
		
		<!--[if !IE]> --><script src="{$style}/js/jquery2.min.js"></script><!-- <![endif]-->
		<!--[if IE]> --><script src="{$style}/js/jquery1.min.js"></script><!-- <![endif]-->
		<script type="text/javascript" src="_PLUG_/js/jquery.form.js"></script>
		<script type="text/javascript" src="_PLUG_/js/layer.js"></script>
		<script src="/run_plug/js/jquery.dragsort.min.js"></script>
		<script src="{$style}/js/kykkk.js"></script>
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='{$style}/js/jquery.mobile.custom.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript" src="_PLUG_/ueditor/ueditor.config.js"></script>
	    <script type="text/javascript" src="_PLUG_/ueditor/ueditor.all.js"></script>

	</head>
	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>
				<button data-target="#sidebar2" data-toggle="collapse" type="button" class="pull-left navbar-toggle collapsed">
                        <span class="sr-only">手机菜单</span>
                        <i class="ace-icon fa fa-dashboard white bigger-125"></i>
                </button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Ace Admin
						</small>
					</a>
				</div>

				<!-- #section:basics/navbar.dropdown -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="grey dropdown-modal">
							<a class="dropdown-toggle" href="{$home}" target="_blank">
								<i class="ace-icon fa fa-home"></i>浏览网站
							</a>
						</li>
						{if condition="config('morelang')"}
						{volist name="uselang" id="lang"}
						<li class="grey dropdown-modal">
							<a class="dropdown-toggle" href="{:url('index/change',['lid'=>$lang['id']])}">
								{$lang.name}
							</a>
							{if condition="$lid EQ $lang['id']"}<span class="curlang"></span>{/if}
							
						</li>
						{/volist}
						{/if}
						<li class="light-blue dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="/run_style/admin/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎您</small>
									{$admin.admin_name}
								</span>
								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>编辑资料
									</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="#">
										<i class="ace-icon fa fa-power-off"></i>退出
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>
		<div class="main-container ace-save-state" id="main-container">
				<div class="zwf"></div>

		<style>
			#navbar{position: fixed;top:0px; height: 45px; z-index: 999999; width: 100%}
			.zwf{clear:both; height: 45px; width:100%;}
		</style>