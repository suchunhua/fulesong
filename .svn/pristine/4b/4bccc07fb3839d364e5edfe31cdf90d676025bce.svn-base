{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
    	{include file="public/nav_head"/}
<form action="{:url('arc/formctrl')}" method="post" id="formlist">
	<input type="hidden" name="cid" value="{$cid}">
	<input type="hidden" name="settype" id="settype">
	<div class="page-content">
		<div class="row maintop">
			<div class="col-xs-3 pd0005">
            	<a href="{$addurl}" class="btn btn-xs btn-success" ><i class="fa fa-plus"></i> 添加</a>
            	<button class="btn btn-xs btn-info mt10" id="setrank"><i class="fa fa-sort"></i> 排序</button>
            	<button class="btn btn-xs btn-danger mt10" id="setdel"><i class="fa fa-close"></i> 删除</button>
            	{if condition="in_array($displayrecycle,[0,2])"}
            	<a href="/admin_arc_lists_cid_{$cid}_status_0" class="btn btn-warning borderno"><i class="fa fa-trash-o"></i> 回收站</a>
            	{/if}
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
							<th class="w100 text-center">排序</th>
							<th class="w100 text-center">时间</th>
							<th class="w100 text-center">操作</th>
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
							<td class="center pt16">{$d.id}</td>
							<td class="pt16">　{:tored($d['title'],$repkey)}</td>
							<td class="text-center pt16">{$d.navname}</td>
							<td class="hidden-480" style="width:120px"><input type="text" name="rank[{$d.id}]" value="{$d.rank}" style="width:100px" class="text-center"></td>
							<td class="text-center pt16">{$d.savedate|date="Y-m-d",###}</td>

							<td class="text-center pt16">
								<div class="hidden-sm hidden-xs btn-group">
                <a  class="btn btn-xs btn-success" href="/content_{$d.navid}_{$d.id}.html" target="_blank" title="预览">
                 					<i class="ace-icon fa fa-eye bigger-120"></i></a>
				<a  class="btn btn-xs btn-info" href="{:url('arc/edit',['cid'=>$cid,'id'=>$d['id']])}" title="编辑">
									<i class="ace-icon fa fa-pencil bigger-120"></i></a>
								</div>
							</td>
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
	$('#setrank').click(function(){
		$('#settype').val('setrank');
		ajaxset();
	});
	$('#setdel').click(function(){
		$('#settype').val('setdel');
		ajaxset();
	});
	function ajaxset(){
		$('#formlist').ajaxForm({
			success : complete,
			dataType : 'json'
		});
	}
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
