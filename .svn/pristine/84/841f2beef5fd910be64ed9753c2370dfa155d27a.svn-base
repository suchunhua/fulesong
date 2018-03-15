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
    <div class="row">
        <div class="gsry" >
            <p class="gsry-title">{$navself.navname}</p>
        </div>

        <div class="ry-content">
            {$navself.content|honor}
            
            
        </div>
    </div>
</div>
{include file="public/foot"/}