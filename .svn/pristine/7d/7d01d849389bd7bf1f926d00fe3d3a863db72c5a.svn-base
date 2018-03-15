function layerframe(url,title,width,height){
    layer.open({
        type: 2,
        title: title,
        shadeClose: false,
        shade: 0.8,
        area: [width, height],
        content: url //iframe的url
    }); 
}

function isclose(val){
    if(val == 1){
        layer.closeAll();
        window.location.reload();
    }
}
//添加收货地址
$('#createaddress').click(function(){
        url = "/createaddress";
    layerframe(url,'添加收货地址','80%','90%');
});
//添加收货地址
$('.editaddress').click(function(){
    var id = $(this).attr('dataval');
    url = "/member_address_edit_id_"+id;
    layerframe(url,'修改收货信息','80%','90%');
});

$('.deladdress').click(function(){
	var id = $(this).attr('dataval');
	url = "/member_address_del";
    delone(url,id);
});
function delone(uri,val){
    layer.confirm('确定删除吗？', {icon: 3,'title':'友情提示'}, function(index){
        layer.close(index);
        $.ajax({
               url:uri,
               data:{'delid':val},
               type:'POST',
               dataType:'json',
               success:function(data){
                  if(data.status == 1){
                     layer.msg(data.msg,{icon:6},function(){
                        window.location.reload();
                     });
                  }else{
                    layer.msg(data.msg,{icon:5});
                  }
               }
        });
    });
}

$('.setinc').click(function(){
    var _this = $(this);
    var previnput = _this.prev('input');
    var sprice = _this.parents('td').prev('td').html();
    if(previnput.val()>19){
        layer.tips('最多添加20个',_this);
        return;
    }
    previnput.val(parseFloat(previnput.val())+1);
    $.ajax({
           url:'/member_incdesc_index_a_'+sprice+'_b_'+previnput.val(),
           type:'GET',
           dataType:'json',
           success:function(data){
                _this.parents('td').next('td').html(data.val);
           }
    });
});

//会员中心购物车数量加减
$('.setdec').click(function(){
    var _this = $(this);
    var previnput = _this.next('input');
    var sprice = _this.parents('td').prev('td').html();
    if(previnput.val()<2){
        layer.tips('最少添加一个',_this);
        return;
    }
    previnput.val(parseFloat(previnput.val())-1);
    $.ajax({
           url:'/member_incdesc_index_a_'+sprice+'_b_'+previnput.val(),
           type:'GET',
           dataType:'json',
           success:function(data){
                _this.parents('td').next('td').html(data.val);
           }
    });
});

$('.removecart').click(function(){
    var sid = $(this).attr('sid');
    var gid = $(this).attr('gid');
    $.ajax({
       url:'/member_shopcart_removecart_sid_'+sid+'_gid_'+gid,
       type:'GET',
       dataType:'json',
       success:function(data){
            if(data.status==1) window.location.reload();
       }
    });
});