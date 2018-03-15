{include file="public/head"/}
        <!-- 导航结束 -->
        <!-- banner开始 -->
        <div class="banner02 news">
            <div class="banner-position text-center">
            <div class="banner-tt">新闻中心</div>
            <div class="banner-txt">了解我们，了解基因行业</div>
            </div>
        </div>
        <!-- banner结束 -->
        <div class="back-dedede padding-top-60">
			<div class="container container-news">
            	<div class="row">
                	<div class="col-lg-9">
                    	<div class="news-c">
                        	<div class="news-tt">
                            	<div class="clearfix">
                                	<div class="pull-left">{$navself.navname}</div>
                                    <div class="pull-right"><a href="" class="news-btn"><span>所有新闻</span></a></div>
                                </div>
                            </div>
                            
                            
                            {list row="6"}
                            <div class="news-txt">
                            	<div class="clearfix">
                                	<div class="pull-left news-title">{$arc.title}</div>
                                    <div class="pull-right news-date">{$arc.savedate|date="Y-m-d H:i",###} 发表</div>
                                </div>
                                <div class="news-img"><img src="{$arc.litpic}" width="100%"></div>
                                <p>{$arc.description}<a href="{$arc.url}" class="back-list-a">阅读更多></a></p>
                                <hr>
                            </div>
							{/list}
                            <div class="text-center">
                                <div class="pagelist">{$pagelist}</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 margin-top-40">
                    	<a class="tc-border tc-border02" href="/content_18_2.html">
						<div class="tc-title tc-title02">
                     		<div class="clearfix">
                        		<div class="pull-left icon-tc icon-tc01"></div>
                             	<div class="pull-left icon-tc-txt icon-tc-txt02">
                                	<div class="tt">遗传性肿瘤套餐</div>
                                  	<div class="txt">适合：中老年</div>
                            	</div>
                           	</div>
                     	</div>
                        </a>
                        <a class="tc-border tc-border02" href="/content_18_3.html">
						<div class="tc-title tc-title02">
                      		<div class="clearfix">
                        		<div class="pull-left icon-tc icon-tc02"></div>
                          		<div class="pull-left icon-tc-txt icon-tc-txt02">
                                	<div class="tt">中老年健康管理套餐</div>
                                 	<div class="txt">适合：中老年</div>
                             	</div>
                         	</div>
                     	</div>
                        </a>
                        <a class="tc-border tc-border02" href="/content_18_4.html">
						<div class="tc-title tc-title02">
                      		<div class="clearfix">
                        		<div class="pull-left icon-tc icon-tc03"></div>
                          		<div class="pull-left icon-tc-txt icon-tc-txt02">
                                	<div class="tt">儿童成长套餐</div>
                                 	<div class="txt">适合：儿童</div>
                             	</div>
                         	</div>
                     	</div>
                        </a>
						<div class="news-c">
                        	<div class="news-tt">
                            	<div class="clearfix">
                                	<div class="pull-left">热门推荐</div>
                                </div>
                            </div>
                            <div class="news-tj">
                                	<ul>
                                    	{arclist row="6" navid="$navself['id']" flag="c"}
                                    	<li class="border-no">
                                            <a href="{$arc.url}">
                                            <div class="clearfix">
                                            <div class="pull-left news-tj-img"><img src="{$arc.litpic}" width="60" height="60"></div>
                                            <div class="news-tj-txt">{$arc.title}</div>
                                            </div>
                                            </a>
                                        </li>
                                        {/arclist}
                                    </ul>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
{include file="public/foot"/}