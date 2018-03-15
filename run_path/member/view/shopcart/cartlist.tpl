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
					<div class="col-xs-12">
						<form action="{:url('order/createbefore')}" method="post">
						<table id="simple-table" class="table  table-bordered table-hover" style="background: #fff">
							<thead>
								<tr>
									<th class="center detail-col">
										<label class="pos-rel">
											<input type="checkbox" class="ace" id="checkall"/><span class="lbl"></span>
										</label>
									</th>
									<th class="center">商品</th>
									<th class="center">单价(元)</th>
									<th class="center">数量</th>
									<th class="center">小计(元)</th>
									<th class="center">操作</th>
								</tr>
							</thead>
							<tbody>
							{volist name="datalist" id="arc"}
								
								<tr sku="{$arc.sku}" goodsid="{$arc.goodsid}">
									<td class="center">
										<label class="pos-rel">
											<input type="checkbox" class="ace checksingle" name="skuid[{$arc.skuid}]" value="{$arc.skuid}" />
											<span class="lbl"></span>
										</label> 
									</td>
									<td class="center"><img src="{$arc.litpic}" width="80">{$arc.title}</td>
									<td class="center sprice">{$arc|true_price}</td>
									<td class="center cartnum">
										<div class="labele_group">
					                        <label class="setdec"> - </label>
					                        <input type="text" name="cartnum[{$arc.skuid}]" value="{$arc.cartnum}" readonly>
					                        <label class="setinc"> + </label>
					                    </div>
									</td>
									<td class="center subtotal">{$arc|subtotal}</td>
									<td class="center">{$arc.2}</td>
								</tr>
							{/volist}
							<tr >
								<td colspan="6">
									<input type="submit" value="去结算">
								</td>
							</tr>	
							</tbody>
						</table>
						</form>
					</div>
					<div class="center">{$pagelist}</div>
				</div>
                    </div>
                </div>
            </div>
{include file="public/foot"/}
<script>
	$('#checkall').click(function(){
		$(this).is(":checked") ? $('.checksingle').prop('checked',true) : $('.checksingle').prop('checked',false);
	});

                    		/*产品数量增加和减小*/
						    $ (".setdec").click (function (){
						        	var me = $(this), 
						        	txt = me.next (":text");
						            val = parseFloat (txt.val ()),
						            goodsid = me.parents('tr').attr('goodsid'),
						            goodsmark = me.parents('tr').attr('sku');
						            me.parents('tr').find('.checksingle').attr('checked',true);
						            //判断全选按钮是否需要选中
						            var trlen = me.parents('tbody').find('tr').length;
						            (trlen<=2) ? $('#checkall').attr('checked',true) : '';
						            val > 1 ? txt.val (val - 1) : txt.val (1);
						    });

						    $(".setinc").click (function ()
						    {
						        var me = $ (this), txt = me.prev (":text");
						        var val = parseFloat (txt.val ());
						        txt.val (val + 1);
						        var goodsid = me.parents('tr').attr('goodsid'),
						            goodsmark = me.parents('tr').attr('sku');
						            subtotal = me.parents('tr').find('.subtotal');
						            sprice = me.parents('tr').find('.sprice').html();
						        $.ajax({
									   url:"/changenum",
									   data:{'id':goodsid,'sku':goodsmark,'num':val + 1,'settype':'inc'},
									   type:'POST',
									   dataType:'json',
									   success:function(data){
									   		if(data.status==1){
									   			subtotal.html((val + 1)*sprice);
									   		}
									   		if(data.status==0){
									   			$('#mes').val('库存不足');
									   		}
									   }
									});
						    });
                    </script>