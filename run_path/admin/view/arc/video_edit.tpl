{include file="public/head"/}
{include file="public/left"/}
	<div class="main-content">
		<div class="main-content-inner">
			{include file="public/nav_head"/}
			<div class="page-content">
				<div class="row">
					<div class="col-sm-12">
						<div class="tabbable">
							<ul class="nav nav-tabs" id="myTab">
								<li class="active"><a data-toggle="tab" href="#basic">基本信息</a></li>
                                <li><a data-toggle="tab" href="#additional">其他属性</a></li>
                                
							</ul>
<form class="form-horizontal" role="form" method="post" id="editform" action="{:url('arc/editHandle')}">
    <input type="hidden" name="id" value="{$arc.id}">
	<input type="hidden" name="cid" value="{$cid}">
	<div class="tab-content">
		<div id="basic" class="tab-pane fade in active">
			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right"> 所属栏目 </label>
				<div class="col-sm-5">
					<select class="form-control" id="navid" name="navid">
                        {foreach name="navlevel" item="nav"}
                        <option value="{$nav.id}" {if condition="$nav['cid'] NEQ $navself['cid']"}disabled{/if} class="bgccc" {if condition="$nav['id'] EQ $navself['id']"}selected{/if}>
                        {if condition="$nav['level'] EQ 0"}{$nav.navname}{/if}
                        {if condition="$nav['level'] EQ 1"}　 {$nav.navname}{/if}
                        {if condition="$nav['level'] EQ 2"}　　 {$nav.navname}{/if}
                        {if condition="$nav['level'] EQ 3"}　　　 {$nav.navname}{/if}
                        </option>
                        {/foreach}
					</select>
				</div>
                
				
			</div>
			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right"> 视频标题 </label>
				<div class="col-sm-5">
					<input type="text" name="title" id="title" value="{$arc.title}" class="col-xs-12 col-sm-12" />
				</div>
			</div>
            
			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right"> 关 &nbsp;键 &nbsp;字 </label>
				<div class="col-sm-5">
					<input type="text" name="keywords" class="col-xs-12 col-sm-12" value="{$arc.keywords}" />
				</div>

			</div>
			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right"> 视频简介 </label>
				<div class="col-sm-5">
					<textarea name="description" rows="3" class="col-xs-12 col-sm-12">{$arc.description}</textarea>
				</div>
			</div>

            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right lh100"> 列 &nbsp;表 &nbsp;图 </label>
                <div class="col-sm-5">
                    <input type="text" name="litpic" class="col-xs-10 col-sm-10" value="{$arc.litpic}" />
                    <a class="upbutton btn btn-primary" id="litpic_btn">选择</a>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right lh100"> 预 &nbsp;览 &nbsp;图 </label>
                <div class="col-sm-5">
                    <input type="text" name="litpic" class="col-xs-10 col-sm-10" value="{$arc.img}" />
                    <a class="upbutton btn btn-primary" id="litpic_btn">选择</a>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right">视频地址</label>
                <div class="col-sm-5">
                    <input type="text" name="src" class="col-xs-10 col-sm-10" value="{$arc.src}">
                    <a class="upbutton btn btn-primary" id="src_btn">选择</a>
                    <div class="hidden"><script id="src_ueditor"></script></div>
                    <script>var src = UE.getEditor("src_ueditor"); $("#src_btn").click(function(){ uefile($(this),src);});</script>
                </div>
            </div>
            {$addfields}
			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right"> 视频文案 </label>
				<div class="col-sm-11">
					<textarea name="body" id="body" class="col-xs-12 col-sm-12" style="margin-left:-12px">{$arc.body}</textarea>
                    <script type="text/javascript">var ue = UE.getEditor('body');</script>
				</div>
			</div>
            
		</div>
        <div id="additional" class="tab-pane in">
        	<div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 内容来源 </label>
                <div class="col-sm-4">
                    <input type="text" name="source" value="{$arc.source}" class="col-xs-12 col-sm-12" />
                </div>
                <label class="col-sm-1 control-label no-padding-right"> 内容作者 </label>
                <div class="col-sm-4">
                    <input type="text" name="writer" value="{$arc.writer}" class="col-xs-12 col-sm-12" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 浏览权限 </label>
                <div class="col-sm-4">
                    <select class="form-control" id="mgroupid" name="mgroupid">
                        {foreach name="authlist" item="a"}
                        <option value="{$a.gid}" {if condition="$arc['mgroupid'] EQ $a['gid']"}selected{/if}>{$a.gname}</option>
                        {/foreach}
                    </select>
                </div>
                <label class="col-sm-1 control-label no-padding-right"> 模版样式 </label>
                <div class="col-sm-4">
                    <select class="form-control" id="tpl" name="tpl">
                        <option value="0">系统自动选择,特殊样式手动选择</option>
                        {foreach name="showtpl" item="t"}
                        <option value="{$t}" {if condition="$arc['tpl'] EQ $t"}selected{/if}>{$t}</option>
                        {/foreach}
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 跳转地址 </label>
                <div class="col-sm-4">
                    <input type="text" name="jump" class="col-xs-12 col-sm-12" value="{$arc.jump}" />
                </div>
                <label class="col-sm-1 control-label no-padding-right"> 发布时间 </label>
                <div class="col-sm-4">
                    <input type="text" name="savedate" class="col-xs-12 col-sm-12" value="{$arc.savedate|date='Y-m-d H:i',###}" id="savedate" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 内容属性 </label>
                <div class="col-sm-11">
                    <div class="checkbox">
                        {foreach name="attrlist" item="attr"}
                        <label style="padding:0 10px">
                            <input name="attr[]" type="checkbox" class="ace" value="{$attr.value}" {if condition="in_array($attr['value'],$attrs)"}checked{/if}>
                            <span class="lbl"> {$attr.name}[{$attr.value}]</span>
                        </label>
                        {/foreach}
                    </div>
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
				
					
			</div>
		</div>
	</div>
{include file="public/foot"/}
<script type="text/javascript">
     $('#editform').ajaxForm({
        beforeSubmit : editcheck,
        success : complete,
        dataType : 'json'
    });
    function editcheck(){
        if($('#navid').val()==0){
            layer.tips('栏目必选','#navid');
            $('#navid').focus();
            return false;
        }
        if($('#title').val()==''){
            layer.tips('标题必填','#title');
            $('#title').focus();
            return false;
        }
    }
    function complete(data){
        if(data.status==0){
            layer.msg(data.msg,{icon:5});
        }
        if(data.status==1){
            layer.msg(data.msg,{icon:6,time:1500},function(){
                window.location.href=data.url;
            });
        }
    }
</script>

<script src="_PLUG_/datetimepicker/jquery.datetimepicker.js"></script>
<link rel="stylesheet" href="_PLUG_/datetimepicker/jquery.datetimepicker.css">
<script>
    $('#savedate').datetimepicker({
       
        format:"Y-m-d H:i",      //格式化日期
        lang:"ch",           //语言选择中文
        timepicker:false
    });
</script>
