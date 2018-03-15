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

<div class="container container-g">
    <div class="row dt-r">
    	{$navself.content}
    </div>
    <div class="tdxx">
        <div class="tdxx-content">
            <p class="header">核心团队</p>
            {list row="10"}
            <div class="tdxx-z row" >
                <div class="col-md-2 col-sm-4  xx-img">
                    <img src="{$arc.litpic}" alt="">
                </div>
                <div  class="col-md-10 col-sm-8  xx-word" style="padding-right: 0">
                   <p class="xx-world-title">{$arc.title}<span>{$arc.stitle}</span></p>
                    {$arc.body}
                </div>
            </div>
            {/list}
            
        </div>
        
    </div>
</div>
{include file="public/foot"/}