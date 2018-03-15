$(function(){
    //移除图片
    $('.delpic').click(function(){
        var imgsrc = $(this).parents('.thumbnail').find('img').attr('src')+'#';
        
        var strs = $(this).parents('div').prev('textarea').html();
        $(this).parents('div').prev('textarea').html(strs.replace(imgsrc,""));
        $(this).parents('.col-xs-6').remove();
    });
    //全选与反选
    $('#checkall').click(function(){
        $(this).is(":checked") ? $('.checksingle').prop('checked',true) : $('.checksingle').prop('checked',false);
    });
    //栏目管理自动选择模板
    $('#cid').change(function(){
        $('#cid option').each(function(){
            if($(this).prop("selected")){
                $('#tpl').val('list_' + $(this).attr('tpl') + '.tpl');
            }
        });
    });
});



function isclose(val){
    if(val == 1){
        layer.closeAll();
        window.location.reload();
    }
}

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
                     layer.alert(data.msg,{icon:6},function(){
                        window.location.reload();
                     });
                  }else{
                    layer.alert(data.msg,{icon:5});
                  }
               }
        });
    });
   
}

function setstatus(uri,_this,type){
    var goodsid = _this.parents('tr').attr('id');
    var dataval = _this.attr('dataval');
    $.ajax({
        type: "POST",
        url: uri,
        data: {id:goodsid, setval:dataval,settype:type},
        dataType: "json",
        success: function(data){
            if(data.status==0){
                layer.msg(data.msg,{icon:5,time:2000});
            }
            if(data.status==1){
                if(dataval==1){
                    _this.attr('src',"/run_style/admin//images/yes.gif");
                    _this.attr('dataval',"0");
                }else{
                    _this.attr('src',"/run_style/admin//images/no.gif");
                    _this.attr('dataval',"1");
                }
            }
        }
    });
}


//图片上传模块
function ueimg(_this,_ue) {
    _ue.ready(function () {
        _ue.addListener('beforeinsertimage', function (t, arg) {
            _this.prev('input').val(arg[0].src);
            $("#preview").attr("src", arg[0].src);
        });
    });
    _ue.getDialog("insertimage").open();
}
//图片组上传模块
function ueimgs(_this,_ue) {
    _ue.ready(function () {
        _ue.addListener('beforeinsertimage', function (t, arg) {
           var arglen = arg.length;
           var imgstr = _this.prev().prev('textarea').html();
           var imgview = '';
           for(var i=0;i<arglen;i++){
                imgstr+=arg[i].src+'#';
                imgview+='<div class="col-xs-6 col-md-3 "><div class="thumbnail"><img src="'+arg[i].src+'"></div></div>';
           }
          
            _this.prev().prev('textarea').html(imgstr);
            _this.prev('div.row').append(imgview);
        });
    });
    _ue.getDialog("insertimage").open();
}
//附件上传模块
function uefile(_this,_ue) {
    _ue.ready(function () {
         _ue.addListener('afterUpfile', function (t, arg) {
             _this.prev('input').val(arg[0].url);
        });
    });
    _ue.getDialog("attachment").open();
}
$(function(){
/*----------------------------频道模型版块开始------------------------------------*/
    //删除频道字段
    $('.delfield').click(function(){
        var modelid   = $(this).attr('modelid'),
            fieldname = $(this).attr('field'),
            sendurl   = '/admin_model_delfield',
            senddata  = {'modelid':modelid,'field':fieldname};
        kykkkAjax('确保前台已删除本字段调用?',sendurl,senddata);
    });
    //新增频道字段
    $('#addfield').click(function(){
        var modelid   = $(this).attr('modelid'),
            url = "/admin_model_addfield_id_" + modelid;
        layerframe(url,'新增字段','80%','90%');
    });
    //修改频道名称
    $('#upModelName').ajaxForm({
        success : complete,
        dataType : 'json'
    });
/*--------------频道模型版块结束-----------会员版块开始-------------------------*/
    //新增会员
    $('#addmember').click(function(){
        layerframe("/admin_member_add",'添加会员','80%','90%');
    });
    //编辑会员资料
    $('.editmember').click(function(){
      var memberid = $(this).attr('memberid');
      var url = "/admin_member_edit_id_" + memberid;
      layerframe(url,'编辑会员','80%','90%');
    });
    //删除指定会员
    $('.delmember').click(function(){
        var memberid   = $(this).attr('memberid'),
            sendurl   = '/admin_member_delmember',
            senddata  = {'id':memberid};
        kykkkAjax('将连同本会员的一切信息删除?',sendurl,senddata);
    });
    //按类型检索会员
    $('.smember').change(function(){
        var type = $(this).val();
        if(type == 'e'){
            $('.jsinput').attr('placeholder',"输入会员邮箱");
        }
        if(type == 'p'){
            $('.jsinput').attr('placeholder',"输入会员手机号");
        }
        if(type == 'n'){
            $('.jsinput').attr('placeholder',"输入关键字");
        }
    });
    $('.jsmember').click(function(){
        var url = '/admin_member_index_type_' + $('.smember').val()+'_val_'+$('.jsinput').val();
        window.location.href = url;
    });



//删除会员组
    $('.delmgroup').click(function(){
        var mgroupid   = $(this).attr('mgroupid'),
            sendurl   = '/admin_mgroup_delmgroup',
            senddata  = {'id':mgroupid};
        kykkkAjax('确定删除吗?',sendurl,senddata);
    });

    $('#addmgroup').click(function(){
      layerframe("/admin_mgroup_add",'添加会员组','30%','20%');
    });
    $('.editmgroup').click(function(){
      var memberid = $(this).parents('tr').find('.groupid').html();
      var url = "/admin_mgroup_edit_id_" + memberid;
      layerframe(url,'编辑会员组','30%','20%');
    });
    //分类导航展开关闭
	$('.zkgb').bind('click',function(){
	    $('.zkgb').attr('src',"/run_style/admin/images/plus.gif");
	    var _this    = $(this);
	    var _tr      = _this.parents('tr');
	    var _trclass = _tr.attr('class');
	    switch(_trclass){
	        case 'one':
	            _this.attr('src',"/run_style/admin/images/minus.gif");
	            _tr.addClass('navcur').siblings('tr.one').removeClass('navcur');
	            _tr.siblings('tr.two').hide().siblings('tr.three').hide().siblings('tr.four').hide();
	            _tr.nextUntil('.one','.two').show();
	            break;
	        case 'one navcur':
	            _tr.removeClass('navcur').siblings('tr:not(.one)').hide();
	            break;
	        case 'two':
	            _this.attr('src',"/run_style/admin/images/minus.gif");
	            _tr.addClass('navcur').siblings('tr.two').removeClass('navcur');
	            _tr.siblings('tr.three').hide().siblings('tr.four').hide();
	            _tr.nextUntil('.two','.three').show();
	            break;
	        case 'two navcur':
	            _tr.removeClass('navcur').nextUntil('.two').hide();
	            break;
	        case 'three':
	            _this.attr('src',"/run_style/admin/images/minus.gif");
	            _tr.prevUntil('.two').attr('src',"/run_style/admin/images/minus.gif");
	            _tr.addClass('navcur').siblings('tr.three').removeClass('navcur');
	            _tr.siblings('tr.four').hide();
	            _tr.nextUntil('.two','.fou').show();
	            break;
	    }
	  
	});
});
/*--------------会员版块结束-----------会员模型开始-------------------------*/

function kykkkAjax(prompt,sendurl,senddata){
    layer.confirm(prompt, {icon: 3,'title':'友情提示'}, function(index){
        layer.close(index);
        $.ajax({
           url:sendurl,
           data:senddata,
           type:'POST',
           dataType:'json',
           success:function(data){
              if(data.status == 1){
                 layer.msg(data.msg,{icon:6,time:1500},function(){
                    window.location.reload();
                 });
              }else{
                layer.alert(data.msg,{icon:5});
              }
           }
        });
    }); 
}
function complete(data){
    if(data.status==0) layer.msg(data.msg,{icon:5});
    if(data.status==1){
        layer.msg(data.msg,{icon:6,time:1500},function(){
            window.location.reload();
        });
    }
}









function setPicRank(_this){
	$('#'+_this).dragsort({ dragSelector: "img", dragBetween: true, dragEnd: saveOrder, placeHolderTemplate: "" });
}
function saveOrder() {
	var thispar = $(this).parents('div').attr('id');
	var data = $("#"+thispar+"  img").map(function() { return $(this).attr('src'); }).get();
	var datas = data.join("#")+'#';
	$("textarea[name="+thispar).val(datas);
};
//设置检索类型


    function companySearch(cid){//企业站内容检索
        $('.jsbtn').click(function(){
            var url = '/admin_arc_lists_cid_'+cid+'_key_'+$('.jsinput').val();
            window.location.href = url;
        }); 
    }
$(function(){
    //添加管理员组
    $('#addadmingroup').click(function(){
        layerframe("/admin_admin_addgroup",'添加管理组','30%','20%');
    });
    //编辑管理员组
    $('.editadmingroup').click(function(){
        var gid = $(this).attr('dataid');
        layerframe("/admin_admin_editgroup_id_"+gid,'编辑管理组','30%','20%');
    });
    //删除一件商品
    $('.delgoods').click(function(){
        delone("/admin_goods_delone",$(this).attr('dataid'));
    });
    
    $('.searchgoods').click(function(){//商城内容检索
        var url = '/admin_goods_search_key_'+$('.jsinput').val();
        window.location.href = url;
    });
    $('.jiansuo').change(function(){//设置检索类型
        if($(this).val() == 1) $('.jsinput').attr('placeholder','请输入内容ID');
        if($(this).val() == 2) $('.jsinput').attr('placeholder','请输入关键字');
    });
});
