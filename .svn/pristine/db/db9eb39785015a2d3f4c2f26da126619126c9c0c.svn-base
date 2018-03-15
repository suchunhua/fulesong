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
						<table class="table  table-bordered table-hover" style="background: #fff">
							<thead><tr><th>收货人信息</th></tr></thead>
							<tbody>
								<tr><td>
										<div class="consignee-item item-selected col-sm-3"  accept="1">	
											<span limit="8" title="小丸子">小丸子 江苏</span><b></b>
										</div>
										<div class="addr-detail col-sm-8">
											 <span class="addr-info">江苏 苏州市 昆山市 陆家镇 135****2623</span>
										</div>
										<div class="op-btns col-sm-1">
											<a href="#none" class="ftx-05 edit-consignee">编辑</a>
										</div>
									</td></tr>
								<tr><td>
										<div class="consignee-item col-sm-3"  accept="2">		
											<span limit="8" title="小丸子">小丸子 江苏</span><b></b>
										</div>
										<div class="addr-detail col-sm-8">
											 <span class="addr-info">江苏 苏州市 昆山市 陆家镇 135****2623</span>
										</div>
										<div class="op-btns col-sm-1">
											<a href="#none" class="ftx-05 edit-consignee">编辑</a>
										</div>
									</td></tr>
							</tbody>
						</table>
						<table class="table  table-bordered table-hover" style="background: #fff">
							<thead><tr><th colspan="5">确认订单信息</th></tr></thead>
							<tbody>
								<tr>
									<td>商品</td>
									<td>商品属性</td>
									<td>单价</td>
									<td>数量</td>
									<td>小计</td>
								</tr>
								{foreach name="orderlist" item="arc"}

								<tr>
									<td>{$arc.title}</td>
									<td>{$arc.skuname}</td>
									<td>{$arc.price}</td>
									<td>{$arc.ordernum}</td>
									<td class="subtotal">{$arc.totalpay}</td>
								</tr>
								{/foreach}
								<tr>
									<td colspan="1" >
									<input type="submit" value="返回购物车">
									</td>
									<td colspan="3" >实付款：<span >{$totalpay}</span></td>
									<td colspan="1" >
									<button type="button" class="pull-right createorder">提交订单</button>
									</td>
								</tr>
							</tbody>
						</table>
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
<!-- {:url('createend')} -->

<script>
	$('.createorder').click(function(){
		//var loading = layer.load(2, {shade: [0.1,'#000']});
		$.ajax({
		   url:"{:url('createorder')}",
		   data:{'orderqueue':{$orderqueue},'address':$('.item-selected').attr('accept'),'ctype':"{$ctype}"},
		   type:'POST',
		   dataType:'json',
		   success:function(data){
		      if(data.status == 1){
				window.location.href=data.url;
		      }else{
		      	layer.alert(data.msg,{icon:5});
		      }
		   }
		});
	});
</script>