<!DOCTYPE html>

<html>

	<head>

		<meta charset="UTF-8">

		<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge">-->

		<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->



		<!--<link rel="shortcut icon" href="" type="image/x-icon"/>--><!--网站图标-->



		<link rel="stylesheet" type="text/css" href="{$style}/css/public.css"/>

		<link rel="stylesheet" type="text/css" href="{$style}/css/style.css"/>



		<script src="{$style}/js/jquery-1.11.3.min.js"></script>

		<script src="{$style}/js/jquery.flexslider-min.js"></script>

		<script src="{$style}/js/jquery.SuperSlide.2.1.1.js"></script>

		<script src="{$style}/js/main.js"></script>





		<title>{$title}</title>

		<meta name="keywords" content="{$keywords}" />

		<meta name="description" content="{$description}"  />

	</head>

	<body>

		{include file="public/head"/}



		<div class="page_con">

			<div class="mbx_nav w1000">

				<i class="iconfont mbx_icon">&#xe73d;</i>你当前所在的位置：{position/}

			</div>

			<div class="page_about w1000">

				<div class="news_show">

					<h3>{$cont.title}</h3>

					<div class="article_info">

						来源：<span>{$cont.source}</span>

						发布时间：<span>{$cont.savedate|date="Y-m-d",###}</span>

						浏览：<span><script src="click_{$cont.navid}_{$cont.id}"></script></span>

					</div>

					<div class="news_show_main">

						{$cont.body}

					</div>

					<div class="np clearfix">

						<div class="prev fl">上一职位：{prev nomore="暂无更多"/}</div>

						<div class="next fr">下一职位：{next nomore="暂无更多"/}</div>

					</div>

				</div>

			</div>

		</div>



		

	{include file="public/foot"/}



<!-- 百度地图 -->

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=MsEgHvDr7HFQIr2hRPxdpjQTraXMY3zw"></script>

<script type="text/javascript">

	// 百度地图API功能

	var map = new BMap.Map("allmap");

	var point = new BMap.Point(116.404, 39.915);

	map.centerAndZoom(point, 17);

	var marker = new BMap.Marker(point);  // 创建标注

	map.addOverlay(marker);               // 将标注添加到地图中

	marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画

</script>

