{include file="public/head"/}

        <div class="main-container ace-save-state" id="main-container">
            {include file="public/left"/}
            <div class="main-content">
                <div class="main-content-inner">
                    <div class="page-content" >
                        <div class="row" >
                        	<div class="col-sm-12" style="background: #fff;padding-top: 15px">
                            <div class="alert alert-block alert-success pdno">
								<button type="button" class="close" data-dismiss="alert">
									<i class="ace-icon fa fa-times"></i>
								</button>
								<div class="product-detail-desc mt-15">
									<div class="title mb-5"> <span>　　说明：</span> 请完善信息,以便我们为您提供全面的服务。</div>
										<p class="pt-5">　  邮箱账号和手机号码均可用于登录系统,不可更改</p>
								</div>
							</div>
							<form action="{:url('upinfo')}" method="post" id="form">
							<table class="table table-bordered table-hover bdlno"  id="jbsz" style="background: #fff">
							    <tbody>
							    	<tr>
								        <th class="cfgtable w100 bdlno bg_f4f8fd">邮箱账号:　</th>
								        <td >{$user.email}</td>
								        <th class="cfgtable bg_f4f8fd">手机号码</th>
								        <td >{$user.phone}</td>
							        </tr>
							        <tr>
								        <th class="cfgtable w100 bdlno bg_f4f8fd">我的昵称<b>*</b>:　</th>
								        <td ><input type="text" name="nickname" id="nickname" value="{$user.nickname}" class="col-md-12"></td>
								        <th class="cfgtable w100 bdlno bg_f4f8fd">我的性别:　</th>
								        <td >
								        	<div class="checkbox">
								                <label style="padding:0 10px">
								                    <input name="sex" type="radio" class="ace" value="保密" {if condition="$user['sex'] EQ '保密'"}checked{/if}>
								                    <span class="lbl"> 保密 </span>
								                </label>
								                <label style="padding:0 10px">
								                    <input name="sex" type="radio" class="ace" value="男" {if condition="$user['sex'] EQ '男'"}checked{/if}>
								                    <span class="lbl"> 男 </span>
								                </label>
								                <label style="padding:0 10px">
								                    <input name="sex" type="radio" class="ace" value="女" {if condition="$user['sex'] EQ '女'"}checked{/if}>
								                    <span class="lbl"> 女 </span>
								                </label>
								            </div>



								        </td>
							        </tr>
							        <tr>
								        <th class="cfgtable w100 bdlno bg_f4f8fd">我的地址:　</th>
								        <td colspan="3"><input type="text" name="address" value="{$user.address}" class="col-md-12" placeholder="地址最多填写45个汉字"></td>
							        </tr>
							        <tr>
								        <td colspan="4" class="text-center"><input type="submit" class="btn btn-info" value="更新"></td>
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