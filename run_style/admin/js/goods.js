$('.setsale').click(function(){//设置上架下架
	setstatus("/admin/goods/setstatus",$(this),'sale');
});
$('.setbest').click(function(){//设置精品推荐
	setstatus("/admin/goods/setstatus",$(this),'best');
});
$('.setnew').click(function(){//设置新品推荐
	setstatus("/admin/goods/setstatus",$(this),'new');
});
$('.sethot').click(function(){//设置热销推荐
	setstatus("/admin/goods/setstatus",$(this),'hot');
});
$('.userstatus').click(function(){//设置会员状态
    setstatus("/admin/member/setstatus",$(this),'placeholder');
});
function setstatus(uri,_this,type){
	var goodsid = _this.parents('tr').attr('dataid');
	var dataval = _this.attr('dataval');
	$.ajax({
        type: "POST",
        url: uri,
        data: {id:goodsid, setval:dataval,settype:type},
        dataType: "json",
        success: function(data){
            if(data.status==0){
            	layer.msg('更新失败',{icon:5,time:1500});
            }
            if(data.status==1){
            	if(dataval==1){
            		_this.attr('src',"/run_style/admin//images/yes.gif");
            		_this.attr('dataval',"0");
            	}else{
            		_this.attr('src',"/run_style/admin//images/no.gif");
            		_this.attr('dataval',"1");
            	}
                window.location.reload();
            }
        }
    });
}
