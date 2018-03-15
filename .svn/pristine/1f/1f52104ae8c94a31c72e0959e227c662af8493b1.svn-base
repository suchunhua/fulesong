{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
        {include file="public/admin_rule"/}
	
	<div class="page-content">
		<div class="page-header">
			<div class="row">
			<div class="col-xs-12">
				<form class="form-horizontal ajaxForm2" name="admin_group_runaccess" method="post" action="{:url('assignHandle')}">
					<input name="id" id="id" type="hidden" value="{$id}">


					<table class="table  table-bordered table-hover">

						<thead>
						<tr>
							<td height="30" style="padding-left:10px;border-bottom:#CCCCCC solid 1px; line-height:25px; background-color:#F4F8FB">
								<label class="pos-rel">
									<input type="checkbox" class="ace ace-checkbox" id="chkAll" value="全选">
									<span class="lbl"> 权限全选</span>
								</label>
							</td>
						</tr>
						</thead>
						<tbody>
							{foreach name="datalist" item="arc"}
							<tr>
								<th>
									<label>
										<input name="rules[]" class="ace ace-checkbox top top{$arc.id}" id="{$arc.id}" type="checkbox" value="{$arc.id}" {if condition="in_array($arc['id'],$rulearr)"}checked{/if}>
										<span class="lbl"> <strong>{$arc.title}</strong></span>
									</label>
								</th>
							</tr>
							{if condition="$arc['son']"}
							<tr>
								<td style="padding-left: 30px">
									{foreach name="arc.son" item="son"}
									<label>
										<input name="rules[]" class="ace ace-checkbox son son{$arc.id}" data="top{$arc.id}" type="checkbox" value="{$son.id}" {if condition="in_array($son['id'],$rulearr)"}checked{/if}>
										<span class="lbl"> {$son.title}</span>
									</label>
									{/foreach}
								</td>
							</tr>
							{/if}
							{/foreach}
											
														</tbody></table>
							
					<div class="clearfix form-actions">
						<div class="col-md-offset-3 col-md-9">
							<button class="btn btn-info" type="submit">
								<i class="ace-icon fa fa-check bigger-110"></i>
								保存
							</button>

							&nbsp; &nbsp; &nbsp;
							<button class="btn" type="reset">
								<i class="ace-icon fa fa-undo bigger-110"></i>
								重置
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
			
	</div>
</form>

</div>
{include file="public/foot"/}

<script>
$(function(){
	$('#chkAll').click(function(){
		$(this).is(":checked") ? $("input[type='checkbox']").prop('checked',true) : $("input[type='checkbox']").prop('checked',false);
	});
	$('.top').click(function(){
		var topid = $(this).attr('id');
		$(this).is(":checked") ? $('.son'+topid).prop('checked',true) : $('.son'+topid).prop('checked',false);
	});
	$('.son').click(function(){
		var dataval = $(this).attr('data');
		$(this).is(":checked") ? $('.'+dataval).prop('checked',true) : $('.'+dataval).prop('checked',false);
		if(!($(this).is(":checked"))){
			$("input[data$='"+dataval+"']").each(function(o){
				if($("input[data$='"+dataval+"']").eq(o).is(":checked")){
					$('.'+dataval).prop('checked',true);
					return false;
				}
			});
		}
	});
});
</script>