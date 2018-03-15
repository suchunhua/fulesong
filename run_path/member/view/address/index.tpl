{include file="public/head"/}

        <div class="main-container ace-save-state" id="main-container">
            {include file="public/left"/}
            <div class="main-content">
                <div class="main-content-inner">
                    <div class="page-content" >
                        <div class="row" >
                        	<div class="col-sm-12" style="background: #fff;padding-top: 15px">
                            <div class="alert alert-block alert-success pdno">
								<div class="product-detail-desc mt-15">
									<div class="title mb-5"> <span>　　友情提示：</span> </div>
										<p class="pt-5">　 {$warning} </p>
								</div>
							</div>
							<table id="simple-table" class="table  table-bordered table-hover" style="background: #fff">
								<thead>
									<tr>
										<th class="center">收货人</th>
										<th class="center">收货电话</th>
										<th class="center">收货地址</th>
										<th class="center">操作</th>
									</tr>
								</thead>
								<tbody>
								{volist name="datalist" id="arc"}
									<tr>
										<td class="center">{$arc.getname}</td>
										<td class="center">{$arc|retlxfs}</td>
										<td class="center">{$arc.getaddress}</td>
										<td class="center">
											<a  class="btn btn-xs btn-info editaddress" title="编辑" dataval="{$arc.id}">
												<i class="ace-icon fa fa-pencil"></i></a>
											<a  class="btn btn-xs btn-danger deladdress" title="删除" dataval="{$arc.id}">
												<i class="ace-icon fa fa-trash-o"></i></a>
										</td>
									</tr>
								{/volist}	
								</tbody>
							</table>
								
							</div>
                            
                        </div>
                    </div>
                </div>
            </div>
{include file="public/foot"/}
<script src="{$member_style}/js/kykkk.js"></script>

<script>
	$('#form').ajaxForm({
		beforeSubmit : checkform,
		success : complete,
		dataType : 'json'
	});

	function checkform(){

	}

	function complete(data){
		if(data.status==0){

		}
		if(data.status==1){
			layer.msg(data.msg,{icon:6,time:1500},function(){
				window.location.reload();
			});
		}
	}


</script>