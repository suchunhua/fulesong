{include file="public/head"/}
        {ad id="12"}
        <div class="banner02" style="background:url('/uploads/images/20170121/1484968906930777.jpg') center bottom no-repeat">
            <div class="banner-position text-center">
            
            <div><a href="{$ad.url}" class="btn btn-fff">立即咨询</a></div>
            </div>
        </div>
        {/ad}
<!-- banner结束 -->
<div class="nav-top nav-border">
    <div class="container">
        <div class="clearfix dis-table">
            <div class="pull-left pull-xs">
        <div class="text-center removedian">
        </div>
            </div>
            
        </div>
    </div>
    <div class="position-bottom"><a href=""><img src="{$style}/images/icon11.png"></a></div>
</div>
<style>
.xq-search{border: 1px solid #eae9e9;}
.xq-search{border-bottom: 0}
.xq-search:nth-child(0){border-bottom: 1px solid #eae9e9}
</style>
<div class="back-dedede">
    <div class="container sl-jf">
    		{if condition="$datalist"}
    	    <div class="sl-tt text-center">以下为 <b style="color:#f00">{:$_GET['key']}</b> 的检索结果</div>
        	<div class="sl-tt-sm text-center"></div>
        	
			
            {foreach name="datalist" item="arc"}
            <div class="panel-title panel-title-tz xq-search">
                <a href="/content_{$arc.navid}_{$arc.id}.html"   class="collapsed">
                    <div class="clearfix tizhi">
                        <div class="pull-left">{$arc.title}</div>
                        <div class="pull-right">点击展开全部<i class="glyphicon glyphicon-chevron-right"></i></div>
                    </div>
                </a>
            </div>
            {/foreach}
           <div class="pagelist">
                <ul class="pagination">
                    {for start=0 end="$pagenum"}
                        <li><a href="?p={++$c}&key={:$_GET['key']}">{++$b}</a></li>
                    {/for}
                </ul>
           </div>

        	{else/}
        	<div class="sl-tt text-center" style="padding:25px 0">未查找到您要搜索的数据</div>
        	
           {/if}
        </div>
</div>
{include file="public/foot"/}
<script>
$(function(){
    $('#selectnn').click(function(){
        window.location.href="/category_{$navself.id}_sex_"+$(this).attr('data');
    });
});
</script>