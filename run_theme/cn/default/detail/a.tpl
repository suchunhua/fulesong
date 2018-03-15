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

        <div class="nav-top" style="    text-align: center;">

        	<div class="container removedian">

    {arclist row="5" navid="$cont['navid']"}

    <a {if condition="$arc['id'] EQ $_GET['id']"}class="bold"{/if} href="{$arc.url}" >{$arc.title}</a>  <span>•</span> 

    {/arclist}

            </div>

        </div>

        <div class="custom">{$cont.body}</div>

        <div class="article-back back-fff">

        	<div class="container  margin-b-20 kyset ">

            	

                

               <p class="article-tt cm">服务流程</p>

          {ad id="32"}{$ad.content}{/ad}

            </div>

           </div>

{include file="public/foot"/}

<script>

$('.table100 img').css('max-width','100%');

$('.table100 table').css('width','100%');

$('.table100 table td').css('padding-left','10px');

$('.custom table td').css({

	'max-width' : '1200px',

	'margin'    : '0 auto'

 });



$('.custom table').css('border','none');

$('.custom table td h2').css({

	'max-width'   : '600px',

	'border-bottom' : '1px solid #777',

	'text-align'  : 'center',

	'margin-left' : 'auto',

	'margin-right' : 'auto',

	'padding-bottom' : '15px',

	'color'    : '#eb003d',

});

$('.custom table td p').css({

	'max-width'   : '1200px',

	'margin-left' : 'auto',

	'margin-right' : 'auto',

	'padding-bottom' : '15px'

});

$('.custom table td h3').css({

	'max-width'   : '1200px',

	'margin-left' : 'auto',

	'margin-right' : 'auto',

	'padding-bottom' : '15px',

});

$('.custom table').eq(1).css({

	'background':'url(http://sd.28kp.com/uploads/images/20170302/sccc.png)',

	'min-height' : '500px'

	});

</script>