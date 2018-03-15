{include file="public/head"/}

        <div class="main-container ace-save-state" id="main-container">
            {include file="public/left"/}
            <div class="main-content">
                <div class="main-content-inner">
                    <div class="page-content" >
                        <div class="row" >
                        	<div class="col-sm-12" style="background: #fff; padding-top: 15px">
                            <div class="alert alert-block alert-success pdno">
								<button type="button" class="close" data-dismiss="alert">
									<i class="ace-icon fa fa-times"></i>
								</button>
								<div class="product-detail-desc mt-15">
									<div class="title mb-5"> <span>　　说明：</span> </div>
										<p class="pt-5">　 请不定期修改您的密码。 </p>
								</div>
							</div>
							<form method="post" id="form">
							<input type="hidden" name="abc">
							<table class="table table-bordered table-hover bdlno"  id="jbsz" style="background: #fff">
							    <tbody>
							    	
							        <tr>
								        <th class="cfgtable w100 bdlno bg_f4f8fd">旧密码:　</th>
								        <td ><input type="password" name="oldpass" class="col-md-12"></td>
							        </tr>

							        <tr>
								        <th class="cfgtable w100 bdlno bg_f4f8fd">新密码:　</th>
								        <td ><input type="password" name="newpass" class="col-md-12"></td>
							        </tr>
							        
							        <tr>
								        <td colspan="2" class="text-center"><input type="submit" class="btn btn-info" value="更新"></td>
							        </tr>
							    </tbody>
							</table>
							</form>
							</div>
                            
                        </div>
                    </div>
                </div>
            </div>
{include file="public/foot"/}

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