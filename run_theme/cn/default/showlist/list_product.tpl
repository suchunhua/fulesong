<html lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <title>福乐颂</title>
		<link rel="stylesheet" href="_PLUG_/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="{$style}/css/main.css" />
		<link rel="stylesheet" href="{$style}/css/animate.min.css">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
	</head>
	<body>
    	{include file="public/head"/}
        <!-- banner开始 -->
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
        <div class="container padding-p">
        	<div class="row">
                <div class="col-md-5 product-img">
                	<img src="{$navself.litpic}">
                </div>
            	<div class="col-md-7 divh2">
             		{$navself.content}
                </div>
            </div>
            <div class="position-bottom"><a href=""><img src="{$style}/images/icon11.png"></a></div>
        </div>
        <div class="product-back">
        	<div class="container padding-p">
            	<div class="divh2 text-center"><h2>{$navself.navname}基因检测项目</h2></div>
                <div class="row">
					{list rw="40"}
                	<div class="col-md-3 col-sm-6">
                    	<div class="back-list">
                        	<div class="tt">{$arc.title}</div>
                            <p class="txt">{$arc.description}...</p>
                            <div class=""><a href="{$arc.url}" class="back-list-a">更多内容&raquo;</a></div>
                        </div>
                    </div>
                    {/list}
                </div>
            </div>
        </div>
  {include file="public/foot"/}