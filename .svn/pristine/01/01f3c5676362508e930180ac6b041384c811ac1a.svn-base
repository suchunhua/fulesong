{include file="public/head"/}
<div class="banner02 banner06">
    <div class="banner-position text-center">
        <!--<div class="banner-tt banner-tt-w">帮助中心</div>-->
        <!--<div class="banner-txt banner-txt-w">您需要了解的一些问题，我们已经为您准好了回答</div>-->
    </div>
</div>
     
<!-- banner结束 -->
<div class="nav-top nav-border">
        <div class="text-center removedian">
    {navlist type="son" id="$navtop['id']"}
    <a {if condition="$navself['id'] EQ $nav['id']"}class="bold"{/if} href="{$nav.url}" >{$nav.navname}</a>  <span>•</span> 
    {/navlist}
        </div>
</div>
        <div class="article-back join-back">
        	<div class="container">
            	<div class="join-tt">职位列表</div>
                <div class="clearfix join-zw">
                    <div class="col-sm-6 col-xs-4">职位</div>
                    <div class="col-sm-3 col-xs-4">工作职能</div>
                    <div class="col-sm-3 col-xs-4">工作地点</div>
                </div>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                {list row="10"}
                  <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                      <div class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                          <div class="clearfix">
                            <div class="col-sm-6 col-xs-4">{$arc.title}<i class="glyphicon glyphicon-chevron-up up"></i><i class="glyphicon glyphicon-chevron-down down"></i></div>
                            <div class="col-sm-3 col-xs-4 text-center">{$arc.department}</div>
                            <div class="col-sm-3 col-xs-4 text-center">{$arc.address}</div>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                      <div class="panel-body">
                      	{$arc.body}
                      </div>
                    </div>
                  </div>
                  {/list}
                </div>
            </div>
        </div>
  {include file="public/foot"/}