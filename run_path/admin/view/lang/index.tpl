{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
{include file="public/nav_head"/}
                
<form action="{:url('arc/formctrl')}" method="post" id="formlist">
	<input type="hidden" name="table" value="{$navself['table']}">
	<input type="hidden" name="settype" id="settype">
	<div class="page-content">
		<div class="row">
			<div class="col-xs-12">
				<table id="simple-table" class="table  table-bordered table-hover">
					<thead>
						<tr>
							<th class="detail-col">ID</th>
							<th class="center">名称</th>
							<th class="center">访问路径</th>
							<th class="center">状态</th>
							<th  class="w100 center">操作</th>
						</tr>
					</thead>
					<tbody>
					{volist name="datalist" id="arc"}
						<tr>
							<td class="center">{$arc.id}</td>
							<td class="center"><b class="blue">{$arc.name}</b></td>
							<td class="center">{$cfg.weburl}?lang_<b class="red">{$arc.url}</b></td>
							<td class="center">
								{if condition="$arc['status'] EQ 1"}<b class="green">使用中</b>{else/}<b class="red">已禁用</b>{/if}
							</td>
							<td class="center">
                                <a  href="{:url('edit',['id'=>$arc['id']])}">[ 编辑 ]</a>
							</td>
						</tr>
					{/volist}	
					</tbody>
				</table>
			</div>
		</div>
	</div>
</form>
	</div>
</div>
{include file="public/foot"/}
<script src="_JS_/jquery.form.js"></script>
<script src="_JS_/layer.js"></script>
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
</script>

<script type="text/javascript">
            jQuery(function($) {
               $('#sidebar2').insertBefore('.page-content');
               
               $('.navbar-toggle[data-target="#sidebar2"]').insertAfter('#menu-toggler');
               
               
               $(document).on('settings.ace.two_menu', function(e, event_name, event_val) {
                 if(event_name == 'sidebar_fixed') {
                     if( $('#sidebar').hasClass('sidebar-fixed') ) {
                        $('#sidebar2').addClass('sidebar-fixed');
                        $('#navbar').addClass('h-navbar');
                     }
                     else {
                        $('#sidebar2').removeClass('sidebar-fixed')
                        $('#navbar').removeClass('h-navbar');
                     }
                 }
               }).triggerHandler('settings.ace.two_menu', ['sidebar_fixed' ,$('#sidebar').hasClass('sidebar-fixed')]);
            })
        </script>