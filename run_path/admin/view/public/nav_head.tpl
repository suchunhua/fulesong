{if condition="$navlist"}
    <div class="ace-save-state">
        <div id="sidebar2" class="sidebar h-sidebar navbar-collapse collapse ace-save-state">
            <ul class="nav nav-list">
                {volist name="navlist" id="nav"}
                <li class='hover {if condition="$noactive EQ 'no'"}{if condition="$navtopid EQ $nav['id']"}active{/if}{/if}'>
                    <a href="{:url('arc/index',['navid'=>$nav['id']])}">
                        <span class="menu-text"> {$nav.navname} </span><b class="arrow fa fa-angle-down"></b>
                    </a><b class="arrow"></b>
                    {if condition="$nav['son']"}
                    <ul class="submenu">
                        {volist name="nav.son" id="son"}
                        <li class="hover">
                            <a href="{:url('arc/index',['navid'=>$son['id']])}">
                                <i class="menu-icon fa fa-caret-right"></i>{$son.navname}
                            </a><b class="arrow"></b>
                                {if condition="$son['son']"}
                                <ul class="submenu">
                                    {volist name="son.son" id="sun"}
                                    <li class="hover">
                                        <a href="{:url('arc/index',['navid'=>$sun['id']])}">
                                            <i class="menu-icon fa fa-caret-right"></i>{$sun.navname}
                                        </a>
                                        <b class="arrow"></b>
                                        {if condition="$sun['son']"}
                                            <ul class="submenu">
                                                {volist name="sun.son" id="qsun"}
                                                <li class="hover">
                                                    <a href="{:url('arc/index',['navid'=>$qsun['id']])}">
                                                        <i class="menu-icon fa fa-caret-right"></i>{$qsun.navname}
                                                    </a>
                                                    <b class="arrow"></b>
                                                </li>
                                                {/volist}
                                            </ul>
                                        {/if}
                                    </li>
                                    {/volist}
                                </ul>
                                {/if}
                        </li>
                        {/volist}
                    </ul>
                    {/if}
                </li>
                {/volist}
                
            </ul>
        </div>
    </div>
{else/}
    <div class="breadcrumbs ace-save-state h44" id="breadcrumbs">
        <ul class="breadcrumb">
            <li><i class="ace-icon fa fa-home home-icon"></i><a href="/admin_index_index.html">系统</a></li>
            <li class="active">新增导航菜单</li>
        </ul>
    </div>
{/if}