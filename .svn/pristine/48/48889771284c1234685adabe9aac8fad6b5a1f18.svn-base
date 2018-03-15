{include file="public/head"/}
    {include file="public/left"/}
    <div class="main-content">
        <div class="main-content-inner">
            {include file="public/nav_head"/}
            <div class="tabbable">
<form class="form-horizontal" role="form" method="post" id="form" action="{:url('nav/editHandle')}">
    <input type="hidden" name="id" value="{$arc.id}">
    <div class="tab-content">
    <div class="form-group">
        <label class="col-sm-1 control-label no-padding-right"> 频道模型 </label>
        <div class="col-sm-4">
            <select class="form-control" id="cid" name="cid">
                <option value="0">请选择栏目模型</option>
                {foreach name="cals" item="oc"}
                {if condition="$oc['status'] EQ 1"}
                <option value="{$oc.id}" {if condition="$oc['id'] EQ $navself['cid']"}selected{/if} tpl="{$oc.table}">{$oc.name}
                </option>
                {/if}
                {/foreach}
            </select>
        </div>
        <label class="col-sm-1 control-label no-padding-right"> 所属栏目 </label>
        <div class="col-sm-4">
            <select class="form-control" id="pid" name="pid">
                <option value="0">顶级栏目</option>
                {volist name="navlevel" id="nav"}
                <option value="{$nav.id}" {if condition="$nav['id'] EQ $arc['pid']"}selected{/if}>
                    {if condition="$nav['level'] EQ 0"}{$nav.navname}{/if}
                    {if condition="$nav['level'] EQ 1"}　{$nav.navname}{/if}
                    {if condition="$nav['level'] EQ 2"}　　{$nav.navname}{/if}
                    {if condition="$nav['level'] EQ 3"}　　　{$nav.navname}{/if}
                </option>
                {/volist}
            </select>
        </div>
    </div>



    <div class="form-group">
        <label class="col-sm-1 control-label no-padding-right"> 栏目标题 </label>
        <div class="col-sm-4">
            <input type="text" name="navname" id="navname" value="{$arc.navname}" class="col-xs-12 col-sm-12"/>
        </div>
        <label class="col-sm-1 control-label no-padding-right"> 英文标题 </label>
        <div class="col-sm-4">
            <input type="text" name="ename" class="col-xs-12 col-sm-12" value="{$arc.ename}" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-1 control-label no-padding-right"> 栏目图标 </label>
        <div class="col-sm-4">
            <input type="text" name="litpic"  value="{$arc.litpic}" class="col-xs-10 col-sm-10"/>
            <a class="upbutton btn btn-primary" id="litpic_btn">选择</a>
        </div>
        <label class="col-sm-1 control-label no-padding-right"> 跳转地址 </label>
        <div class="col-sm-4">
            <input type="text" name="jump" class="col-xs-12 col-sm-12" value="{$arc.jump}" placeholder="" />
        </div>
    </div>



    <div class="form-group">
        <label class="col-sm-1 control-label no-padding-right"> SEO标题 </label>
        <div class="col-sm-9">
            <input type="text" name="seotitle" class="col-xs-12 col-sm-12" value="{$arc.seotitle}"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-1 control-label no-padding-right"> 关 &nbsp;键 &nbsp;字 </label>
        <div class="col-sm-9">
            <input type="text" name="keywords" class="col-xs-12 col-sm-12" value="{$arc.keywords}"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-1 control-label no-padding-right"> 内容摘要 </label>
        <div class="col-sm-9">
            <textarea name="description" rows="3" class="col-xs-12 col-sm-12">{$arc.description}</textarea>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-1 control-label no-padding-right"> 栏目内容 </label>
        <div class="col-sm-11">
        <textarea name="content" id="body" class="col-xs-12 col-sm-12" style="margin-left:-12px">{$arc.content}</textarea>
        <script>var ue = UE.getEditor('body');</script>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label no-padding-right"> 列表模板 </label>
        <div class="col-sm-4">
            <select class="form-control" id="tpl" name="tpl">
                <option value="0">系统自动选择,特殊样式手动选择</option>
                {foreach name="listtpl" item="t"}
                <option value="{$t}" {if condition="$t EQ $arc['tpl']"}selected{/if}>{$t}</option>
                {/foreach}
            </select>
        </div>
        <label class="col-sm-1 control-label no-padding-right"> 浏览权限 </label>
        <div class="col-sm-4">
            <select class="form-control" id="mgroupid" name="mgroupid">
                {foreach name="authlist" item="a"}
                <option value="{$a.gid}" {if condition="$arc['mgroupid'] EQ $a['gid']"}selected{/if}>{$a.gname}</option>
                {/foreach}
            </select>
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-sm-1 control-label no-padding-right"> 新窗口打开 </label>
        <div class="col-sm-4">
            <div class="checkbox">
                <label style="padding:0 10px">
                    <input name="target" type="radio" class="ace" value="1" {if condition="$arc['target'] EQ 1"}checked{/if}>
                    <span class="lbl"> 是 </span>
                </label>
                <label style="padding:0 10px">
                    <input name="target" type="radio" class="ace" value="0" {if condition="$arc['target'] EQ 0"}checked{/if}>
                    <span class="lbl"> 否 </span>
                </label>
            </div>
        </div>
        <label class="col-sm-1 control-label no-padding-right"> 栏目状态 </label>
        <div class="col-sm-4">
            <div class="checkbox">
                <label style="padding:0 10px">
                    <input name="status" type="radio" class="ace" value="1" {if condition="$arc['status'] EQ 1"}checked{/if}>
                    <span class="lbl"> 显示 </span>
                </label>
                <label style="padding:0 10px">
                    <input name="status" type="radio" class="ace" value="0" {if condition="$arc['status'] EQ 0"}checked{/if}>
                    <span class="lbl"> 隐藏 </span>
                </label>
            </div>
        </div>
    </div>
    </div>
    <button class="ky_btn btn_blue submitbtn" type="submit">
        <i class="ace-icon fa fa-check bigger-110"></i>保存
    </button>
    <div class="form-actions"></div>
</form>

            </div>
        </div>
    </div>
{include file="public/foot"/}
<script type="text/javascript">
     $('#form').ajaxForm({
        success : complete,
        dataType : 'json'
    });
  
    function complete(data){
        if(data.status==0){
            layer.msg(data.msg,{icon:5});
        }
        if(data.status==1){
            layer.msg(data.msg,{icon:6},function(){
                window.location.href=data.url;
            });
        }
    }
</script>