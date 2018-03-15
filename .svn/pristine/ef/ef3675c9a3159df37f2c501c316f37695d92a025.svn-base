{include file="public/head"/}
        {ad id="12"}
        <div class="banner02" style="background:url('{$navtop.litpic}') center bottom no-repeat">
            <div class="banner-position text-center">
            <div class="banner-tt">{$ad.title}</div>
            <div class="banner-txt">{$ad.content}</div>
            <div><a href="http://p.qiao.baidu.com/im/index?siteid=8274707&ucid=19491859&cp=%E7%A6%8F%E4%B9%90%E9%A2%82&cr=www.fulesong.com.cn&cw=360%E6%90%9C%E7%B4%A2" class="btn btn-fff">立即咨询</a></div>
            </div>
        </div>
        {/ad}
<!-- banner结束 -->
<div class="nav-top nav-border">
    <div class="container">
        <div class="clearfix dis-table">
            <div class="pull-left pull-xs">
        <div class="text-center removedian">
    {navlist type="son" id="$navtop['id']"}
    <a {if condition="$navself['id'] EQ $nav['id']"}class="bold"{/if} href="{$nav.url}" >{$nav.navname}</a>  <span>•</span> 
    {/navlist}
        </div>
            </div>
            <div class="pull-left btn-dropdown">
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
                        {if condition='$sex EQ "y"'}男性{else/}女性{/if}
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><a role="menuitem" tabindex="-1" id="selectnn" data="{if condition='$sex EQ "y"'}n{else/}y{/if}">{if condition='$sex EQ "y"'}女性{else/}男性{/if}</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="position-bottom"><a href=""><img src="{$style}/images/icon11.png"></a></div>
</div>

<div class="container ">
    <div class="row">
        {list row="20"}
         <div class="col-md-3 col-sm-6 col-xs-12 sl-zy"  >
             <div class="sl-zy-content" >
                    <p class=sl-title>{$arc.title}</p>
                 <p class=sl-more> <a href="{$arc.url}">更多内容</a> <img style="" src="{$style}/images/more.png"></p>
             </div>
         </div>
        {/list}
       
       
       
    </div>
</div>
{include file="public/foot"/}
<style>
body{    background: #ededed;}

</style>
<script>
$(function(){
    $('#selectnn').click(function(){
        window.location.href="/category_{$navself.id}_sex_"+$(this).attr('data');
    });
});
</script>