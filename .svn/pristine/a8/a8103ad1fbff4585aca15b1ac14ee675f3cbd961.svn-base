<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Dashboard - Ace Admin</title>
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
                    <a href="#" class="navbar-brand"><img src="{$member_style}/images/logo.jpg" alt=""></a>
                </div>
                <div class="navbar-buttons navbar-header pull-right hidden-xs" role="navigation">
					<ul class="nav ace-nav member_nav">
						<li class="grey dropdown-modal">
							<a class="dropdown-toggle" href="/" target="_blank">网站首页</a>
						</li>
						
					</ul>
				</div>
            </div>
        </div>

        <div class="main-container ace-save-state" id="main-container">
            <div class="main-content">
                <div class="main-content-inner">
                    <div class="page-content">
                    <div class="row">
					<div class="col-sm-8">
						<form action="{:url('createend')}" method="post">
						<table class="table  table-bordered table-hover" style="background: #fff">
							<thead><tr><th>收货人信息</th></tr></thead>
							<tbody>
								<tr><td>
										订单{$order}
										<a href="">去支付</a>
									</td>
								</tr>
							</tbody>
						</table>
						</form>
					</div>
				</div>
                    </div>
                </div>
            </div>
{include file="public/foot"/}
<script>
	var totalpay = 0;
	$('.subtotal').each(function(){
		
		totalpay+=parseFloat($(this).html());
	});

	$('#totalpay').html(totalpay);
</script>