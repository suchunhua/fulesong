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
							</ul>
	<style>
		.form-group label b{color:#f00;}
	</style>
<form class="form-horizontal" role="form" method="post" id="addform" action="{:url('arc/addHandle')}">
	<input type="hidden" name="navid" value="{$navself.id}">
	<input type="hidden" name="cid" value="{$cid}">
	<div class="tab-content">

		<div id="basic" class="tab-pane fade in active">
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> <b>* </b>所属栏目 </label>
                <div class="col-sm-5">
                    <select class="form-control" id="navid" name="navid">
                        <option value="0">请选择栏目</option>
                        {foreach name="navlevel" item="nav"}
                        <option value="{$nav.id}" {if condition="$nav['cid'] NEQ $cid"}disabled{/if} class="bgccc">
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
                <label class="col-sm-1 control-label no-padding-right"> <b>* </b>职位名称 </label>
                <div class="col-sm-2">
                    <input type="text" name="title" id="title" class="col-xs-12 col-sm-12" placeholder="填写招聘的职位名称" />
                </div>
                <label class="col-sm-1 control-label no-padding-right"> <b>* </b>就职部门 </label>
                <div class="col-sm-2">
                    <input type="text" name="department" id="department" class="col-xs-12 col-sm-12" placeholder="填写就职部门的名称" />
                </div>
                <label class="col-sm-1 control-label no-padding-right"> <b>* </b>就职地区 </label>
                <div class="col-sm-2">
                    <input type="text" name="address" id="address" class="col-xs-12 col-sm-12" placeholder="该职位就职地点" />
                </div>
                <label class="col-sm-1 control-label no-padding-right"> <b>* </b>年龄要求 </label>
                <div class="col-sm-2" style="position: relative;">
                    <input type="text" name="age" id="age" class="col-xs-12 col-sm-12 center" value="18-45" placeholder="年龄区间"/>
                    <span style="position: absolute; right:20px; top:8px">岁</span>
                </div>
            </div>
            
            
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 招聘人数 </label>
                <div class="col-sm-2" style="position: relative;">
                    <input type="text" name="zprs" class="col-xs-12 col-sm-12 center" value="1" />
                    <span style="position: absolute; right:20px; top:8px">人</span>
                </div>
                <label class="col-sm-1 control-label no-padding-right"> 学历要求 </label>
                <div class="col-sm-2">
                    <select class="form-control" id="xlyq" name="xlyq">
                        <option value="不限">不限</option>
                        <option value="高中">高中</option>
                        <option value="专科">专科</option>
                        <option value="本科">本科</option>
                        <option value="研究生">研究生</option>
                        <option value="硕士">硕士</option>
                        <option value="博士">博士</option>
                    </select>
                </div>
                <label class="col-sm-1 control-label no-padding-right"> 工作经验 </label>
                <div class="col-sm-2">
                    <select class="form-control" id="gzjy" name="gzjy">
                        <option value="无需经验" class="bgccc">无需经验</option>
                        <option value="应届毕业生" class="bgccc">应届毕业生</option>
                        <option value="相关工作1-3年" class="bgccc">相关工作1-3年</option>
                        <option value="相关工作3-5年" class="bgccc">相关工作3-5年</option>
                        <option value="相关工作5-10年" class="bgccc">相关工作5-10年</option>

                    </select>
                </div>
                <label class="col-sm-1 control-label no-padding-right"> 薪资待遇 </label>
                <div class="col-sm-2">
                    <select class="form-control" id="xzdy" name="xzdy">
                        <option value="1000~2000" class="bgccc">1000~2000</option>
                        <option value="2000~3500" class="bgccc">2000~3500</option>
                        <option value="3500~5000" class="bgccc">3500~5000</option>
                        <option value="5000~8000" class="bgccc">5000~8000</option>
                        <option value="8000~12000" class="bgccc">8000~12000</option>
                        <option value="面议" class="bgccc">面议</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 职位性质 </label>
                <div class="col-sm-2">
                    <select class="form-control" id="nature" name="nature">
                        <option value="全职" class="bgccc">全职</option>
                        <option value="兼职" class="bgccc">兼职</option>
                        <option value="实习" class="bgccc">实习</option>
                    </select>
                </div>
                <label class="col-sm-1 control-label no-padding-right"> 性别要求 </label>
                <div class="col-sm-2">
                    <select class="form-control" id="sex" name="sex">
                        <option value="男" class="bgccc">男</option>
                        <option value="女" class="bgccc">女</option>
                        <option value="不限" class="bgccc">不限</option>
                    </select>
                </div>
                <label class="col-sm-1 control-label no-padding-right"> 发布时间 </label>
                <div class="col-sm-2">
                    <input type="text" name="savedate" class="col-xs-12 col-sm-12" value="{:date('Y-m-d H:i',time())}" id="savedate" />
                </div>
                <label class="col-sm-1 control-label no-padding-right"> 截止时间 </label>
                <div class="col-sm-2">
                    <input type="text" name="overdue" class="col-xs-12 col-sm-12" value="{:date('Y-m-d H:i',time()+86400*30)}" id="overdue" />
                </div>
                
            </div>
            
           
            <div class="alert alert-block alert-success m0003">
				<i class="ace-icon fa fa-check green"></i>
				职位描述：尽可能的将职位要求、福利待遇等情况描述完整
			</div>
			<div class="form-group">
				<div class="col-sm-12">
					<textarea name="body" id="body" class="col-xs-12 col-sm-12" style="margin-left:-12px">{$arc.body}</textarea>
                    <script type="text/javascript">var ue = UE.getEditor('body');</script>
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
     $('#addform').ajaxForm({
        beforeSubmit : addcheck,
        success : complete,
        dataType : 'json'
    });
    function addcheck(){
        if($('#navid').val()==0){
            layer.tips('栏目必选','#navid',3);
            $('#navid').focus();
            return false;
        }
        if($('#title').val()==''){
            layer.tips('标题必填','#title',3);
            $('#title').focus();
            return false;
        }
        if($('#department').val()==''){
            layer.tips('部门必填','#department',3);
            $('#department').focus();
            return false;
        }
        if($('#address').val()==''){
            layer.tips('地点必填','#address',3);
            $('#address').focus();
            return false;
        }
    }
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

  <script src="_PLUG_/datetimepicker/jquery.datetimepicker.js"></script>
  <link rel="stylesheet" href="_PLUG_/datetimepicker/jquery.datetimepicker.css">
<script>
        $('#savedate').datetimepicker({
            format:"Y-m-d H:i",      //格式化日期
            lang:"ch",           //语言选择中文
            timepicker:false
        });
        $('#overdue').datetimepicker({
            format:"Y-m-d H:i",      //格式化日期
            lang:"ch",           //语言选择中文
            timepicker:false
        });
        var ageold = $('#age').val();
        $('#age').focus(function(){
        	$(this).val('');
        });
        $('#age').blur(function(){
        	if($(this).val()==''){
        		$(this).val(ageold);
        	}
        });
</script>
