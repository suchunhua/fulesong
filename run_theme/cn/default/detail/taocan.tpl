{include file="public/head"/}
<div class="banner02 banner03">
    <div class="banner-position text-center">
        <div class="banner-tt">全外显子基因检测 • 无创 • 精准 • 全面 • 高效</div>
        <div class="banner-txt">定制您专属的健康管理锦囊</div>
    </div>
</div>
<div class="product-back">
    <div class="container padding-p">
        <div class="tc-title">
            <div class="clearfix">
                <div class="pull-left icon-tc icon-tc01"></div>
                <div class="pull-left icon-tc-txt">
                    <div class="tt-color">{$cont.title}</div>
                    <div class="txt">适合：{$cont.tcfw}</div>
                </div>
            </div>
            <div class="article-title"><div class="span-c span-border-no"><span>套餐服务内容</span></div></div>
            <div class="tc-txt" style="padding:0">
            {$cont.tcnr}
            </div>
            <div class="table-responsive">
                {$cont.body}
            </div>
        </div>
    </div>
</div>
{include file="public/foot"/}
<script>
$('table').addClass('table table-bordered');
</script>