<div id="sidebar" class="sidebar responsive  ce-save-state" style="position: fixed; height: 100%">
<ul class="nav nav-list">
	<li {if condition="$left EQ 'system'"}class="open"{/if}>
		<a href="#" class="dropdown-toggle h42">
			<i class="menu-icon fa fa-tachometer"></i>
			<span class="menu-text">配置管理</span>
			<b class="arrow fa fa-angle-down"></b>
		</a><b class="arrow"></b>
        <ul class="submenu">
            <li {if condition="$act EQ 'system'"}class="active"{/if}>
            <a href="{:url('system/index')}#jbsz"><i class="menu-icon fa fa-caret-right"></i>系统配置</a>
            <b class="arrow"></b></li>
           
            <li {if condition="$act EQ 'model'"}class="active"{/if}>
            <a href="{:url('model/index')}"><i class="menu-icon fa fa-caret-right"></i>频道模型</a>
            <b class="arrow"></b></li>
            
            {if condition="config('morelang')"}
            <li {if condition="$act EQ 'lang'"}class="active"{/if}>
            <a href="{:url('lang/index')}"><i class="menu-icon fa fa-caret-right"></i>语言管理</a>
            <b class="arrow"></b></li>{/if}
           
            <li {if condition="in_array($act,['admin','authgroup','rule'])"}class="active"{/if}>
            <a href="{:url('admin/index')}"><i class="menu-icon fa fa-caret-right"></i>{if condition="$admin['auth_group_id'] EQ 1"}管理员&权限{else}我的账户{/if}</a>
            <b class="arrow"></b></li>
        </ul>
	</li>
	
    <li {if condition="$left EQ 'company'"}class="open"{/if}>
        <a href="{:url('nav/index')}" class="dropdown-toggle h42">
            <i class="menu-icon fa fa-shopping-cart"></i>
            <span class="menu-text">内容管理</span>
            <b class="arrow fa fa-angle-down"></b>
        </a><b class="arrow"></b>
        <ul class="submenu">
            <li {if condition="$act EQ 1"}class="active"{/if}>
            <a href="{:url('nav/index')}"><i class="menu-icon fa fa-caret-right"></i>栏目管理</a>
            <b class="arrow"></b></li>
            {foreach name="cals" item="oc"}
            {if condition="($oc['status'] == 1) AND ($oc['id'] > 1)"}
            <li {if condition="$cid EQ $oc['id']"}class="active"{/if}>
            <a href="{:url('arc/lists',['cid'=>$oc['id']])}"><i class="menu-icon fa fa-caret-right"></i>{$oc.name}</a>
            <b class="arrow"></b></li>
            {/if}
            {/foreach}
        </ul>
    </li>

    {if condition="config('open_member') EQ '1'"}
    <li {if condition="$left EQ 'member'"}class="open"{/if}>
        <a href="#" class="dropdown-toggle h42">
            <i class="menu-icon fa fa-user"></i>
            <span class="menu-text">会员管理</span>
            <b class="arrow fa fa-angle-down"></b>
        </a><b class="arrow"></b>
        <ul class="submenu">
            <li {if condition="$act EQ 'member'"}class="active"{/if}>
            <a href="{:url('member/index')}"><i class="menu-icon fa fa-caret-right"></i>会员列表</a>
            <b class="arrow"></b></li>
            <li {if condition="$act EQ 'mgroup'"}class="active"{/if}>
            <a href="{:url('mgroup/index')}"><i class="menu-icon fa fa-caret-right"></i>会员组</a>
            <b class="arrow"></b></li>
        </ul>
    </li>{/if}
	
	
	{if condition="config('shoping')"}
	<li {if condition="$left EQ 'shop'"}class="open"{/if}>
		<a href="#" class="dropdown-toggle h42">
			<i class="menu-icon fa fa-shopping-cart"></i>
			<span class="menu-text">商城管理</span>
			<b class="arrow fa fa-angle-down"></b>
		</a><b class="arrow"></b>
        <ul class="submenu">
            <li {if condition="$act EQ 'shop'"}class="active"{/if}>
            <a href="{:url('goods/index')}"><i class="menu-icon fa fa-caret-right"></i>商品列表</a>
            <b class="arrow"></b></li>
            <li {if condition="$act EQ 'goodsnav'"}class="active"{/if}>
            <a href="{:url('shop/goodsnav')}"><i class="menu-icon fa fa-caret-right"></i>商品分类</a>
            <b class="arrow"></b></li>
            <li {if condition="$act EQ 'goodstype'"}class="active"{/if}>
            <a href="{:url('goodstype/index')}"><i class="menu-icon fa fa-caret-right"></i>商品类型</a>
            <b class="arrow"></b></li>
            <li {if condition="$act EQ 'goodsspec'"}class="active"{/if}>
            <a href="{:url('goodsspec/index')}"><i class="menu-icon fa fa-caret-right"></i>规格属性</a>
            <b class="arrow"></b></li>
           
            <li {if condition="$act EQ 'setshop'"}class="active"{/if}>
            <a href="{:url('shop/setshop')}"><i class="menu-icon fa fa-caret-right"></i>商城配置</a>
            <b class="arrow"></b></li>
            {if condition="$delgoodsnum NEQ 0"}
            <li {if condition="$act EQ 'setshop'"}class="active"{/if}>
            <a href="{:url('goods/index',['status'=>0])}"><i class="menu-icon fa fa-caret-right"></i>回收站</a>
            <b class="arrow"></b></li>
            {/if}
            
        </ul>
	</li>
	<li {if condition="$left EQ 'order'"}class="open"{/if}>
		<a href="#" class="dropdown-toggle h42">
			<i class="menu-icon fa fa-first-order"></i>
			<span class="menu-text">订单管理</span>
			<b class="arrow fa fa-angle-down"></b>
		</a><b class="arrow"></b>
        <ul class="submenu">
            <li {if condition="$act EQ 'nopay'"}class="active"{/if}>
            <a href="{:url('order/index',['type'=>'nopay'])}"><i class="menu-icon fa fa-caret-right"></i>待付款订单</a>
            <b class="arrow"></b></li>
            <li {if condition="$act EQ 'pay'"}class="active"{/if}>
            <a href="{:url('order/index',['type'=>'pay'])}"><i class="menu-icon fa fa-caret-right"></i>已付款订单</a>
            <b class="arrow"></b></li>
            <li {if condition="$act EQ 'send'"}class="active"{/if}>
            <a href="{:url('order/index',['type'=>'send'])}"><i class="menu-icon fa fa-caret-right"></i>送货中订单</a>
            <b class="arrow"></b></li>
            <li {if condition="$act EQ 'over'"}class="active"{/if}>
            <a href="{:url('order/index',['type'=>'over'])}"><i class="menu-icon fa fa-caret-right"></i>已完成订单</a>
            <b class="arrow"></b></li>
            <li {if condition="$act EQ 'goodstype'"}class="active"{/if}>
            <a href="{:url('goodstype/index')}"><i class="menu-icon fa fa-caret-right"></i>订单查询</a>
            <b class="arrow"></b></li>
        </ul>
	</li>
    {/if}
	
    <li {if condition="$left EQ 'plug'"}class="open"{/if}>
        <a href="{:url('plug/index',['type'=>'plugad'])}">
            <i class="menu-icon fa fa-plug"></i>
            <span class="menu-text">辅助应用</span>
           
        </a><b class="arrow"></b>
    </li>
</ul>
</div>