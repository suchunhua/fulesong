{include file="public/head"/}
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
          	{banner platform="p"}
            <li data-target="#carousel-example-generic" data-slide-to="{$a++}" {if condition='$a EQ 0'}class="active"{/if}></li>
            {/banner}
          </ol>
          <iframe style="position: absolute;z-index: 3;"  frameborder="0" scrolling="no" src="/index2.html" width="100%" height="75%"></iframe>
          <div class="carousel-inner" role="listbox">
          	{banner platform="p"}
            <div class="item {if condition='$b++ EQ 0'}active{/if}">
                <img src="{$banner.litpic}" alt="{$banner.title}">
                <div class="carousel-caption">
                    <a href="{$banner.url}" class="see-xq" target="_blank">查看详情</a>
                </div>
            </div>
            {/banner}
          </div>
        
          <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			<img class="icon-left" src="{$style}/images/left.png">
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			<img class="icon-right" src="{$style}/images/right.png">
          </a>
        </div>
        <!-- banner结束 -->
        <!-- 第一屏开始-->
        <div class="page01">
        	<div class="container">
            	<div class="row">
                	<div class="col-md-5">
                    	<div class="title   " data-wow-offset="50">4500+项检测结果</div>
                        <div class="title-sm" data-wow-offset="50">全外显子检测</div>
                        <p  class="article-txt " data-wow-offset="50">营养代谢易感基因 | 遗传性疾病 | 遗传特性 | 药物反应 | 肿瘤基因筛查 | 心血管糖尿病易感基因 | 酒精代谢 | 家系分析</p>
						<div class="title-sm " data-wow-offset="50" ><a href="/category_26.html" class="btn btn-look">查看示例报告<img src="{$style}/images/icon02.png"></a></div>
                    </div>
                    <div class="col-md-7 icon01 " data-wow-offset="50"><img src="{$style}/images/icon01.png"></div>
                </div>
            </div>
                <div class="flow">
                	<div class="container">
                	<div class="title text-center">足不出户</div>
                    <div class="flow-tt text-center">简易的检测流程</div>
                    <div class="row">
                    	<div class="col-sm-2 col-xs-4">
                        	<div class="clearfix">
                        	<div class="flow-img text-center">
                            	<figure><img src="{$style}/images/icon03.png"></figure>
                                <p>购买</p>
                            </div>
                            <div class="flow-spot"><img src="{$style}/images/icon09.png"></div>
                            </div>
                        </div>
                    	<div class="col-sm-2 col-xs-4">
                        	<div class="clearfix">
                        	<div class="flow-img text-center">
                            	<figure><img src="{$style}/images/icon04.png"></figure>
                                <p>收到检测包</p>
                            </div>
                            <div class="flow-spot"><img src="{$style}/images/icon09.png"></div>
                            </div>
                        </div>
                    	<div class="col-sm-2 col-xs-4">
                        	<div class="clearfix">
                        	<div class="flow-img text-center">
                            	<figure><img src="{$style}/images/icon05.png"></figure>
                                <p>口腔细胞采样</p>
                            </div>
                            <div class="flow-spot"><img src="{$style}/images/icon09.png"></div>
                            </div>
                        </div>
                    	<div class="col-sm-2 col-xs-4">
                        	<div class="clearfix">
                        	<div class="flow-img text-center">
                            	<figure><img src="{$style}/images/icon06.png"></figure>
                                <p>回寄</p>
                            </div>
                            <div class="flow-spot"><img src="{$style}/images/icon09.png"></div>
                            </div>
                        </div>
                    	<div class="col-sm-2 col-xs-4">
                        	<div class="clearfix">
                        	<div class="flow-img text-center">
                            	<figure><img src="{$style}/images/icon07.png"></figure>
                                <p>基因检测</p>
                            </div>
                            <div class="flow-spot"><img src="{$style}/images/icon09.png"></div>
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
                    <div class="text-center">
                        <a href="/category_46.html" class="btn btn-look">查看详细流程<img src="{$style}/images/icon02.png"></a>
                        <a href="javascript:void(0);" class="btn btn-look video-play">观看采样视频</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 第一屏结束-->
        <!-- 检测套餐开始-->
        <div class="page02">
        	<div class="container">
            	<div class="row">
                	<div class="col-md-9 slide-back">
                    	<p class="tt text-center">检测套餐</p>
                        <div id="carousel02" class="carousel slide slide02" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators carousel02">
                            <li data-target="#carousel02" data-slide-to="0" class="active"></li>
                            
                           
                          </ol>
                        
                          <!-- Wrapper for slides -->
                          <div class="carousel-inner" role="listbox">
                            <div class="item active">
								<div class="clearfix img-c">
								<style>
								.mask{text-align: center; color:#fff;}
								.mask h2{color:#f9d261; font-weight: normal; font-size: 16px}
								</style>
									
                                    {ad id="26"}
                                	<div class="col-xs-4">
                                    	<div class="position">
                                    	<figure><img src="{$ad.litpic}"></figure>
                                        <div class="flow-tt">{$ad.title}</div>
                                        <div class="mask">
                                            {$ad.content}
                                        </div>
                                        </div>
                                    </div>
                                    {/ad}
                                    {ad id="27"}
                                	<div class="col-xs-4">
                                    	<div class="position">
                                    	<figure><img src="{$ad.litpic}"></figure>
                                        <div class="flow-tt">{$ad.title}</div>
                                        <div class="mask">
                                            {$ad.content}
                                        </div>
                                        </div>
                                    </div>
                                    {/ad}
                                    {ad id="28"}
                                	<div class="col-xs-4">
                                    	<div class="position">
                                    	<figure><img src="{$ad.litpic}"></figure>
                                        <div class="flow-tt">{$ad.title}</div>
                                        <div class="mask">
                                            {$ad.content}
                                        </div>
                                        </div>
                                    </div>
                                    {/ad}
                                </div>
                            </div>
                            
                            
                          </div>
                        
                          <!-- Controls -->
                        </div>
                    </div>
                    <div class="col-md-3 text-b">
                    	<div class="title">检测套餐</div>
                        <p class="article-txt" style="text-align:justify">通过基因遗传信息，了解潜在健康风险，规划个性化健康管理，提前预防重大疾病发生。尊敬的用户，您可以在线申请检测项目，随时开启你的基因探索之旅</p>
						<div><a href="/category_18.html" class="btn btn-look">查看更多套餐<img src="{$style}/images/icon02.png"></a></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 检测套餐结束-->
        <!-- 合作伙伴开始-->
        <div class="friend">
            <div class="container">
                <div class="flow-tt text-center">合作伙伴</div>
                <ul>
                	{link type="p"}
                    <li><a href="{$link.url}"><img src="{$link.litpic}"></a></li>
                    {/link}
                </ul>
            </div>
        </div>
        <div class="video-modal" style="display: none;">
          <div class="video-bd-wrap">
            <a class="modal-close" href="javascript:;">关闭</a>
            <video id="instructVideo" src="http://images.firstdimension.cn/video/fulesong/promo20170515.mp4" type="video/mp4" class="embed-video fn-hide" controls="controls" preload="meta"></video>
          </div>
        </div>
     {include file="public/foot"/}
      <script>
		$(function(){
			$('.see-xq').attr('src','http://p.qiao.baidu.com/im/index?siteid=8274707&ucid=19491859&cp=%E7%A6%8F%E4%B9%90%E9%A2%82&cr=www.fulesong.com.cn&cw=360%E6%90%9C%E7%B4%A2');
		});
     	</script>

     