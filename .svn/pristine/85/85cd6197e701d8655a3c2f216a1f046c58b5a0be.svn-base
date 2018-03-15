{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
    <div class="main-content-inner" style="overflow-x: hidden">
    {include file="public/plug_head"/}
        <div class="page-content" style="padding:0 0 0 0">
			<form method="post" action="{:url('addform')}" id="addform">
				<table class="table table-bordered table-hover bdlno"  id="jbsz">
				    <tbody>
				    	<tr style="background: #edf4f9"><td colspan="3" class="bdlno"><b>新增表单</b></td></tr>
				        <tr>
					        <td class="cfgtable w100 bdlno">表单名称:　</td>
					        <td >
					        	<input type="text" name="name" id="name" class="col-md-3">
					        	<button type="submit" class="btn btn-primary" style="padding:2px 10px 1px 10px">确定</button>
					        </td>
				        </tr>
				    </tbody>
				</table>
			</form>
			<div class="row">
				{volist name="datalist" id="f"}
					<div class="col-xs-4 text-center formdata">
						<h2>{$f.name}</h2>
						<div class="hidden hiddenid">{$f.id}</div>
						<a href="{:url('formlist',['formid'=>$f['id']])}" class="btn btn-primary">浏览数据</a>
						<a href="{:url('fieldindex',['formid'=>$f['id']])}" class="btn btn-primary">字段管理</a>
						<button class="btn btn-primary editform">修改名称</button>
						<button class="btn btn-primary delform">删除表单</button>
					</div>
				{/volist}
			</div>
			<form method="post" action="{:url('editform')}" id="editform" style="display:none">
				<input type="hidden" name="formid" id="formid" value="">
				<table class="table table-bordered table-hover bdlno"  id="jbsz">
				    <tbody>
				    	<tr style="background: #edf4f9"><td colspan="3" class="bdlno"><b>修改表单</b></td></tr>
				        <tr>
					        <td class="cfgtable w100 bdlno">表单名称:　</td>
					        <td >
					        	<input type="text" name="newname" id="newname" class="col-md-3">
					        	<button type="submit" class="btn btn-primary" style="padding:2px 10px 1px 10px">确定</button>
					        </td>
				        </tr>
				    </tbody>
				</table>
			</form>

			<form method="post" action="{:url('delform')}" id="delform" style="display:none">
				<input type="hidden" name="formid" id="delformid" value="">
			</form>

		</div>
	</div>
</div>
{include file="public/foot"/}
<script type="text/javascript">
	$('.editform').click(function(){
		var formid = $(this).parents('div').find('.hiddenid').html();
		var newname = $(this).parents('div').find('h2').html();
		$('#editform').show();
		$('#formid').val(formid);
		$('#newname').val(newname);
	});
    	
   
    $('#addform').ajaxForm({
        success : complete,
        dataType : 'json'
    });


    $('.delform').click(function(){
    	var delformid = $(this).parents('div').find('.hiddenid').html();
		$('#delformid').val(delformid);
	 	layer.confirm('将连同本表单的所有留言数据一同删除？', {icon: 3,'title':'风险提醒'}, function(index){
			layer.close(index);
		
			$('#delform').ajaxSubmit({
		        success : complete,
		        dataType : 'json'
		    });
		});
    });

    $('#editform').ajaxForm({
        success : complete,
        dataType : 'json'
    });
    function complete(data){
        if(data.status==0){
            layer.msg(data.msg,{icon:5});
        }
        if(data.status==1){
            layer.msg(data.msg,{icon:6},function(){
                window.location.reload();
            });
        }
    }
  



</script>