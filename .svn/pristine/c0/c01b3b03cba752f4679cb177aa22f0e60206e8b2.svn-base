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

<div class="back-dedede">

    <div class="container sl-jf">

        <div class="sl-tt text-center">{$navself.navname}综合结果</div>

        <div class="sl-tt-sm text-center">我们一共为您检查了4500项，您有18项需要关注的风险</div>

        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">


            {navlist type="son" id="$navself['id']"}

            <div class="panel panel-default">

                <div class="panel-heading panel-heading-tz" role="tab" id="heading{$nav.id}">

                    <div class="panel-title panel-title-tz">

                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse{$nav.id}" aria-expanded="false" aria-controls="collapse{$nav.id}" class="collapsed">

                            <div class="clearfix tizhi">

                                <div class="pull-left">{$nav.navname}</div>

                                <div class="pull-right">点击展开全部<i class="glyphicon glyphicon-chevron-up up"></i><i class="glyphicon glyphicon-chevron-down down"></i></div>

                            </div>

                        </a>

                    </div>

                </div>

                <div id="collapse{$nav.id}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading{$nav.id}" aria-expanded="false" style="height: 0px;">

                    <div class="panel-body">

                        <div class="table-responsive">

                            <table class="table table-hover table-sl table-jf">

                                <tbody>

                                {arclist row="60" navid="$nav['id']" orderby="rank desc"}

                                <tr>

                                    <td class="text-left"><a href="{$arc.url}">{$arc.title}</a></td>

                                    <td class="text-right">{if condition="$arc['stitle'] EQ '阳性'"}<span style="color:#f00">{/if}{$arc.stitle}{if condition="$arc['stitle'] EQ '阳性'"}</span>{/if}</td>

                                </tr>

                                {/arclist}

                                </tbody>

                            </table>

                        </div>

                    </div>

                </div>

            </div>

            {/navlist}

        </div>

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