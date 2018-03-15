{include file="public/head"/}
	<link rel="stylesheet" href="{$member_style}/css/upphoto.css" type="text/css" />
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
										上传200*200等比列尺寸的图片,大小不能超2MB
									</div>
								</div>
								<div class="upwrap">
									  <div class="imageBox">
									    <div class="thumbBox"></div>
									    <div class="spinner" style="display: none">Loading...</div>

									  </div>
									  <div class="action"> 
									    <!-- <input type="file" id="file" style=" width: 200px">-->
									    <div class="new-contentarea tc"> <a href="javascript:void(0)" class="upload-img">
									      <label for="upload-file">选择图片</label>
									      </a>
									      <input type="file" class="" name="upload-file" id="upload-file" />
									    </div>

									    <input type="button" id="btnCrop"  class="Btnsty_peyton" value="裁切">
									    <input type="button" id="btnZoomIn" class="Btnsty_peyton" value="+"  >
									    <input type="button" id="btnZoomOut" class="Btnsty_peyton" value="-" >

									    <input type="button" id="upsave"  class="Btnsty_peyton" value="保存">
									  </div>
									  <div class="cropped"><img src="{$user.photo}" align="absmiddle" style="width:180px;margin-top:4px;border-radius:180px;box-shadow:0px 0px 12px #7E7E7E;"></div>
								</div>
							</div>
                            
                        </div>
                    </div>
                </div>
            </div>
{include file="public/foot"/}
<script type="text/javascript" src="{$member_style}/js/cropbox.js"></script>
<script type="text/javascript">
$(function(){
	var options = {
		thumbBox: '.thumbBox',
		spinner: '.spinner',
		imgSrc: '{$user.photo}'
	}
	var cropper = $('.imageBox').cropbox(options);
	$('#upload-file').on('change', function(){
		var reader = new FileReader();
		reader.onload = function(e) {
			options.imgSrc = e.target.result;
			cropper = $('.imageBox').cropbox(options);
		}
		reader.readAsDataURL(this.files[0]);
		this.files = [];
	})

	function baseview(){
		var img = cropper.getDataURL();
		$('.cropped').html('');
		$('.cropped').append('<img src="'+img+'" align="absmiddle" style="width:180px;margin-top:4px;border-radius:180px;box-shadow:0px 0px 12px #7E7E7E;">');
	}

	$('#btnCrop').click(function(){
		baseview();
	});
	$('#btnZoomIn').on('click', function(){
		cropper.zoomIn();
		baseview();
	})
	$('#btnZoomOut').on('click', function(){
		cropper.zoomOut();
		baseview();
	});
function base64_uploading(){
	var data = $('.cropped').find('img').attr('src');
	$.ajax({
		type: 'POST',
		url: "{:url('upphoto')}",
		data: {'userphoto': data},
		dataType: 'json',
		timeout: 50000,
		success: function(data){
			if(data.status==1) {
				layer.msg(data.msg,{icon:6,time:1500},function(){
					window.location.href="/member";
				});
			}
			if(data.status==0) layer.msg(dats.msg);
		}
	});
}
$('#upsave').click(function(){
	base64_uploading();
});
});



</script>