<html lang="zh-CN">

    <head>

        <meta charset="utf-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

        <title>{$title}</title>

		<link rel="stylesheet" href="_PLUG_/bootstrap/css/bootstrap.min.css" />

		<link rel="stylesheet" href="{$style}/css/main.css" />

		<link rel="stylesheet" href="{$style}/css/animate.min.css">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->

        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

        <!--[if lt IE 9]>

        <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>

        <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

		<style>



		</style>

        <![endif]-->

	</head>

	<body>

        {include file="public/head"/}

        <div class="banner02">

            <div class="banner-position text-center">

            <div class="banner-tt">福乐颂基因检测服务</div>

            <div class="banner-txt">足不出户，完成4500+项基因检测</div>

            <div><a href="http://p.qiao.baidu.com/im/index?siteid=8274707&ucid=19491859&cp=%E7%A6%8F%E4%B9%90%E9%A2%82&cr=www.fulesong.com.cn&cw=360%E6%90%9C%E7%B4%A2" class="btn btn-fff">立即咨询</a></div>

            </div>

        </div>

        <!-- banner结束 -->

        <div class="nav-top">

        	<div class="container removedian">

    {navlist type="son" id="$navtop['id']"}

    <a {if condition="$navself['id'] EQ $nav['id']"}class="bold"{/if} href="{$nav.url}" >{$nav.navname}</a>  <span>•</span> 

    {/navlist}

            </div>

        </div>

        <div class="article-back">

        	<div class="container back-fff margin-b-20 kyset table100">

            	<div class="article-tt">{$cont.title}</div>

                

				{$cont.body}

                

               <p class="article-tt cm">服务流程</p>

          {ad id="32"}{$ad.content}{/ad}

            </div>

            <!-- <div class="container back-fff padding-t-0 kyset">

                <h2><em>服务流程</em></h2>

					<div class="row box-sh">

                    	<div class="col-sm-2 col-xs-4">

                        	<div class="clearfix">

                        	<div class="flow-img text-center">

                            	<figure><img src="{$style}/images/icon03.png"></figure>

                                <p>购买</p>

                            </div>

                            <div class="flow-spot"><img src="{$style}/images/icon12.png"></div>

                            </div>

                        </div>

                    	<div class="col-sm-2 col-xs-4">

                        	<div class="clearfix">

                        	<div class="flow-img text-center">

                            	<figure><img src="{$style}/images/icon04.png"></figure>

                                <p>收到检测包</p>

                            </div>

                            <div class="flow-spot"><img src="{$style}/images/icon12.png"></div>

                            </div>

                        </div>

                    	<div class="col-sm-2 col-xs-4">

                        	<div class="clearfix">

                        	<div class="flow-img text-center">

                            	<figure><img src="{$style}/images/icon05.png"></figure>

                                <p>口腔细胞采样</p>

                            </div>

                            <div class="flow-spot"><img src="{$style}/images/icon12.png"></div>

                            </div>

                        </div>

                    	<div class="col-sm-2 col-xs-4">

                        	<div class="clearfix">

                        	<div class="flow-img text-center">

                            	<figure><img src="{$style}/images/icon06.png"></figure>

                                <p>回寄</p>

                            </div>

                            <div class="flow-spot"><img src="{$style}/images/icon12.png"></div>

                            </div>

                        </div>

                    	<div class="col-sm-2 col-xs-4">

                        	<div class="clearfix">

                        	<div class="flow-img text-center">

                            	<figure><img src="{$style}/images/icon07.png"></figure>

                                <p>基因检测</p>

                            </div>

                            <div class="flow-spot"><img src="{$style}/images/icon12.png"></div>

                            </div>

                        </div>

                    	<div class="col-sm-2 col-xs-4">

                        	<div class="clearfix">

                        	<div class="flow-img text-center">

                            	<figure><img src="{$style}/images/icon08.png"></figure>

                                <p>出报告</p>

                            </div>

                            </div>

                        </div>

                    </div>

            </div> -->

        </div>

{include file="public/foot"/}

<script>

$('.table100 img').css('max-width','100%');

$('.table100 table').css('width','100%');

$('.table100 table td').css('padding-left','10px');

</script>