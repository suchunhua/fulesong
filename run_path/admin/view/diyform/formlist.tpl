{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
{include file="public/plug_head"/}
<form action="{:url('formctrl')}" method="post" id="formlist">
	<div class="page-content">
		<div class="row maintop">
			<div class="col-xs-3 pd0005">
            	<button class="btn btn-xs btn-danger mt10" id="setdel"><i class="fa fa-close"></i> 删除</button>
            </div>
            <div class="col-xs-9"><div class="pull-right">{$pagelist}</div></div>
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
							{foreach name="field" id="f"}
							<th class="center">{$f.0}</th>
							{/foreach}
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
							{foreach name="field" id="f"}
							<td class="center" style="padding: 12px 0 0 0px;">{:desafe($d[$f[1]])}</td>
							{/foreach}
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
	$('.viewdetail').click(function(){
		var id = $(this).attr('id');
		var url = "{$modulename}_diyform_viewdetail_id_" + id;
		layerframe(url,'留言详情','80%','90%');
	});
	$('#setdel').click(function(){
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
</script>

