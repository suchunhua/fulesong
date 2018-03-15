<div id="sidebar" class="sidebar responsive ace-save-state">
    <ul class="nav nav-list">
        <li class="leftmenu_top">
            <a href="/member" class="h42">
                <i class="menu-icon fa fa-home"></i>
                <span class="menu-text">会员主页</span>
            </a>
        </li>
        <li {if condition="$left EQ 'info'"}class="open"{/if}>
            <a class="dropdown-toggle h42">
                <i class="menu-icon fa fa-user"></i>
                <span class="menu-text">账号管理</span>
                <b class="arrow fa fa-angle-down"></b>
            </a><b class="arrow"></b>
            <ul class="submenu">
                <li {if condition="$act EQ 'upinfo'"}class="active"{/if}>
                <a href="{:url('info/index')}"><i class="menu-icon fa fa-caret-right"></i>修改资料</a>
                <b class="arrow"></b></li>
                <li {if condition="$act EQ 'upphoto'"}class="active"{/if}>
                <a href="{:url('info/upphoto')}"><i class="menu-icon fa fa-caret-right"></i>更换头像</a>
                <b class="arrow"></b></li>
               
                <li {if condition="$act EQ 'uppass'"}class="active"{/if}>
                <a href="{:url('info/uppass')}"><i class="menu-icon fa fa-caret-right"></i>修改密码</a>
                <b class="arrow"></b></li>
				{if condition="$cfg['shoping']"}
                <li {if condition="$act EQ 'model'"}class="active"{/if}>
                <a href="{:url('address/index')}"><i class="menu-icon fa fa-caret-right"></i>收货地址</a>
                <b class="arrow"></b></li>
                {/if}
            </ul>
        </li>
        {if condition="config('shoping')"}
        <li {if condition="$left EQ 'trading'"}class="open"{/if}>
            <a  class="dropdown-toggle h42">
                <i class="menu-icon fa fa-shopping-cart"></i>
                <span class="menu-text">交易中心</span>
                <b class="arrow fa fa-angle-down"></b>
            </a><b class="arrow"></b>
            <ul class="submenu">
                <li {if condition="$act EQ 'cart'"}class="active"{/if}>
                <a href="{:url('trading/cartlist')}"><i class="menu-icon fa fa-caret-right"></i>购物车</a>
                <b class="arrow"></b></li>
                <li {if condition="$act EQ 'nopay'"}class="active"{/if}>
                <a href="{:url('trading/nopaylist')}"><i class="menu-icon fa fa-caret-right"></i>待付款</a>
                <b class="arrow"></b></li>
               
                <li {if condition="$act EQ 'pay'"}class="active"{/if}>
                <a href="{:url('trading/paylist')}"><i class="menu-icon fa fa-caret-right"></i>已付款</a>
                <b class="arrow"></b></li>

                <li {if condition="$act EQ 'over'"}class="active"{/if}>
                <a href="{:url('trading/overlist')}"><i class="menu-icon fa fa-caret-right"></i>已完结</a>
                <b class="arrow"></b></li>
            </ul>
        </li>
        {/if}
        <li>
            <a href="{:url('index/out')}" class="h42"><i class="menu-icon fa fa-sign-out"></i>
                <span class="menu-text">退出登录</span></a>
        </li>
       
    </ul>
</div>