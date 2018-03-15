<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>会员中心_{$webname}</title>
        <meta name="description" content="overview &amp; stats" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <link rel="stylesheet" href="{$style}/css/bootstrap.css" />
        <link rel="stylesheet" href="_PLUG_/awesome/css/font-awesome.css" />
        <link rel="stylesheet" href="{$style}/css/ace-fonts.css" />
        <link rel="stylesheet" href="{$style}/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
        <link rel="stylesheet" href="{$style}/css/ace-skins.css" />
        <link rel="stylesheet" href="{$style}/css/ace-rtl.css" />
        <link rel="stylesheet" href="{$member_style}/css/main.css" />
        <script src="{$style}/js/ace-extra.js"></script>
    </head>

    <body class="no-skin">
<div id="navbar" class="navbar navbar-default          ace-save-state">
            <div class="navbar-container ace-save-state" id="navbar-container">
                <!-- #section:basics/sidebar.mobile.toggle -->
                <button type="button" class="navbar-toggle menu-toggler pull-right" id="menu-toggler" data-target="#sidebar">
                    <span class="sr-only">Toggle sidebar</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-header pull-left">
                    <a href="#" class="navbar-brand"><img src="{$cfg.logo}" height="56"></a>
                </div>
                <div class="navbar-buttons navbar-header pull-left hidden-xs" role="navigation" style="margin-left: 150px">
					<ul class="nav ace-nav member_nav">
						<li class="grey dropdown-modal">
							<a class="dropdown-toggle" href="/" target="_blank">网站首页</a>
						</li>
						{foreach name="navlist" item="nav"}
						<li class="grey dropdown-modal">
							<a class="dropdown-toggle" href="{$nav.url}">{$nav.navname}</a>
						</li>
						{/foreach}
                        {if condition="$cfg['shoping']"}
                        <li class="grey dropdown-modal">
                            <a class="dropdown-toggle" href="/shopping">企业商城</a>
                        </li>
                        {/if}
					</ul>
				</div>
				<div class="pull-right hidden-xs hidden-sm" style="margin-right:15px ">
                    <a href="{:url('index/out')}" title="退出" class="toploginout">
                    	<i class="fa fa-sign-out"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="main-container ace-save-state" id="main-container">