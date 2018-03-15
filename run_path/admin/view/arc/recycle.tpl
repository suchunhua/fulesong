{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
    	{include file="public/nav_head"/}
<form action="{:url('arc/recyclectrl')}" method="post" id="formlist">
	<input type="hidden" name="cid" value="{$cid}">
	<input type="hidden" name="settype" id="settype">
	<div class="page-content">
		<div class="row maintop">
			<div class="col-xs-3 pd0005">
            	<a href="{:url('lists',['cid'=>$cid])}" class="btn btn-xs btn-info" ><i class="fa fa-mail-reply"></i> 返回</a>
            	<a class="btn btn-xs btn-success" id="setback"><i class="fa fa-plus"></i> 还原</a>
            	<a class="btn btn-xs btn-danger" id="setdel"><i class="fa fa-sort"></i> 彻底删除</a>
            </div>
            <div class="col-xs-3">
            	<div class="input-group mt7">
					<div class="input-group-addon pdno">
						<select class="jiansuo">
							<option value="1">按ID</option>
							<option value="2">按标题</option>
						</select>
					</div>
					<input type="text" class="form-control search-query jsinput" placeholder="请输入内容ID">
					<span class="input-group-btn">
						<button type="button" class="btn btn-purple btn-sm pd4550 jsbtn">
							<span class="ace-icon fa fa-search icon-on-right bigger-110"></span>
							检索
						</button>
					</span>
				</div>
            </div>
            <div class="col-xs-6"><div class="pull-right">{$pagelist}</div></div>
		</div>
		
		
		<div class="row">
			<div class="col-xs-12">
				<table id="simple-table" class="table  table-bordered table-hover">
					<thead>
						<tr>
							<th class="center detail-col">
								<label class="pos-rel">
									<input type="checkbox" class="ace" id="checkall"/><span class="lbl"></span>
								</label>
							</th>
							<th class="detail-col">ID</th>
							<th>标题</th>
							<th class="w100 text-center">栏目</th>
							<th class="w100 text-center">时间</th>
						</tr>
					</thead>

					<tbody>
					{foreach name="datalist" item="d"}
						<tr>
							<td class="center">
								<label class="pos-rel">
									<input type="checkbox" class="ace checksingle" name="del[{$d.id}]" value="{$d.id}" />
									<span class="lbl"></span>
								</label>
							</td>
							<td class="center">{$d.id}</td>
							<td><a href="#">{$d.title}</a></td>
							<td class="text-center">{$d.navname}</td>
							<td class="text-center">{$d.savedate|date="Y-m-d",###}</td>

							
						</tr>
					{/foreach}	
					</tbody>
				</table>
			</div>
		</div>
	</div>
</form>
	</div>
</div>
{include file="public/foot"/}
<script>
	$('#checkall').click(function(){
		$(this).is(":checked") ? $('.checksingle').prop('checked',true) : $('.checksingle').prop('checked',false);
	});
	function ajaxset(){
		$('#formlist').ajaxSubmit({
			success : complete,
			dataType : 'json'
		});
	}
	$('#setback').click(function(){
		$('#settype').val('setback');
		ajaxset();
	});
	$('#setdel').click(function(){
		$('#settype').val('setdel');
		ajaxset();
	});
	
	function complete(data){
		if(data.status == 1){
			layer.msg(data.msg,{icon:6},function(){
				window.location.reload();
			});
		}else{
			layer.msg(data.msg,{icon:5});
		}
	}
	$('#searchtype').change(function(){
		var searchtype = $(this).val();
		if(searchtype == 'id'){
			$('#searchkey').attr('placeholder','请输入要检索的内容ID编号');
		}
		if(searchtype == 'title'){
			$('#searchkey').attr('placeholder','请输入标题包含的关键字');
		}
	});
	companySearch({$cid});
</script>
