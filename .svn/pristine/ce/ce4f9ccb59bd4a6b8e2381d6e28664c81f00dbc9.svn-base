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

                        {if condition='$cont["sex"] EQ "男"'}男性{/if}

                        {if condition='$cont["sex"] EQ "女"'}女性{/if}

                        {if condition='$cont["sex"] EQ "共用"'}男女{/if}

                        <span class="caret"></span>

                    </button>

                   

                </div>

            </div>

        </div>

    </div>

    <div class="position-bottom"><a href=""><img src="{$style}/images/icon11.png"></a></div>

</div>

<div class="back-dedede padding-top-60">

    <div class="container back-fff margin-b-20">

        <div class="article-title"><div class="span-c"><span class="padding-span">{$cont.title}</span></div></div>

        <div class="clearfix">

            <div class="pull-left sl-m"><img src="{$cont.litpic}"></div>

            <div class="pull-left sl-m-txt">

            

                {$cont.body}



            </div>

        </div>

        <div class="article-title"><div class="span-c"><span>基因位点</span></div></div>

        <div class="table-responsive">{$cont.jywd}</div>



        <div class="article-title"><div class="span-c"><span>生活建议</span></div></div>

        	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

            

            {$cont.shjy|ret_shjy}

            

        </div>

    </div>

</div>

{include file="public/foot"/}

<script>

$(function(){

$('.table-responsive').find('table').attr('width','100%');

});

</script>