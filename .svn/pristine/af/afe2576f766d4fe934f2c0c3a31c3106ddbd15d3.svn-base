<?php
function ret_video($arr){
	$tmp = explode('.',$arr['src']);
	$sfx = $tmp[count($tmp)-1];
	$str = '';
	if(is_Mobile()){
		$str.='<div id="videoview"></div>'."\r\n";
		$str.='<script type="text/javascript" src="/run_plug/ckplayer/ckplayer.js" charset="utf-8"></script>'."\r\n";
		$str.='<script type="text/javascript">'."\r\n";
		$str.='var flashvars={'."\r\n";
		$str.='p:0,'."\r\n";
		$str.='e:1,'."\r\n";
		$str.='i:"'.$arr['img'].'"'."\r\n";
		$str.='};'."\r\n";
		$str.='var video=["'.$arr['src'].'->video/mp4"];'."\r\n";
		$str.='var support=["all"];'."\r\n";
		$str.='CKobject.embedHTML5("videoview","ckplayer_a1","100%","",video,flashvars,support);'."\r\n";
		$str.='</script>'."\r\n";
	}else{
		$str.='<div id="videoview"></div>'."\r\n";
		$str.='<script type="text/javascript" src="/run_plug/ckplayer/ckplayer.js" charset="utf-8"></script>'."\r\n";
		$str.='<script type="text/javascript">'."\r\n";
		$str.='var flashvars={'."\r\n";
		$str.='f:"'.$arr['src'].'",'."\r\n";
		$str.='c:0,'."\r\n";
		$str.='b:1,'."\r\n";
		$str.='i:"'.$arr['img'].'"'."\r\n";
		$str.='};'."\r\n";
		$str.='var params={bgcolor:"#FFF",allowFullScreen:true,allowScriptAccess:"always",wmode:"transparent"};'."\r\n";
		$str.='CKobject.embedSWF("/run_plug/ckplayer/ckplayer.swf","videoview","ckplayer_a1","600","400",flashvars,params);	'."\r\n";
		$str.='</script>'."\r\n";
	}
	return $str;
}


//内容详情视频替换
function replace_video($body){
$pattern = "/<p><iframe\ssrc=\"([a-z0-9:.\/]+)\"\s+width=\"(\d+)\"\s+height=\"(\d+)\" scrolling=\"yes\" frameborder=\"0\" align=\"\"><\/iframe><\/p>/";
	if(preg_match_all($pattern, $body,$match)){
		for($i=0;$i<count($match[0]);$i++){
			$tmp = "<style>#video{$i}{width:{$match[2][$i]}px;height:{$match[3][$i]}px;}</style>\r\n"; 
			$tmp.= "<div id='video{$i}'></div>\r\n";
			$video = explode('.',$match[1][$i]);
			if($video[count($video)-1]=='mp4'){
				$tmp.= "<script type='text/javascript'>\r\n";
				$tmp.= "var flashvars={\r\n";
				$tmp.= "	p:0,\r\n";
				$tmp.= "	e:1,\r\n";
				$tmp.= "	i:'http://www.ckplayer.com/static/images/cqdw.jpg'\r\n";
				$tmp.= "	};\r\n";
				$tmp.= "var video=['http://img.ksbbs.com/asset/Mon_1605/0ec8cc80112a2d6.mp4->video/mp4'];\r\n";
				$tmp.= "var support=['all'];\r\n";
				$tmp.= "CKobject.embedHTML5('video{$i}','ckplayer_video1','100%','100%',video,flashvars,support);\r\n";
				$tmp.= "</script>\r\n";
			}else{
				$tmp.= "<script type='text/javascript'>\r\n";
				$tmp.= "	var flashvars={\r\n";
				$tmp.= "		f:'{$match[1][$i]}',\r\n";
				$tmp.= "		c:0,\r\n";
				$tmp.= "		b:1,\r\n";
				$tmp.= "		};\r\n";
				$tmp.= "	var params={bgcolor:'#FFF',allowFullScreen:true,";
				$tmp.= "allowScriptAccess:'always',wmode:'transparent'};\r\n";
				$tmp.= "	CKobject.embedSWF('/run_plug/ckplayer/ckplayer.swf','video{$i}',";
				$tmp.= "'ckplayer_a1','100%','100%',flashvars,params);\r\n";
				$tmp.= "</script>\r\n";
			}
			$body= str_replace($match[0][$i],$tmp,$body);
		}
	}
	$return = "<script type='text/javascript' src='/run_plug/ckplayer/ckplayer.js' charset='utf-8'></script>\r\n".$body;
	return $return;
}

function checkauth($auth,$title,$desc,$sf){
	$str = <<<EOF
<table width="100%" border="1" cellpadding="3" cellspacing="1" bgcolor="#DDEAC8">
   <tbody>
   	<tr bgcolor="#EFF4EA">
     <td height="48" colspan="2" align="center"><b>提示信息</b></td>
   	</tr>
   	<tr bgcolor="#FFFFFF">
     <td height="60" colspan="2" align="center">
     	文档需要 <font color="red">{$auth}</font> 以上的权限才能访问，你目前身份是：<font color="red">{$sf}</font> ！     </td>
   	</tr>
   	<tr bgcolor="#EFF4EA">
      <th width="10%" height="35" align="center">标题</th>
      <td width="90%" height="35">{$title}</td>
   	</tr>
    <tr bgcolor="#FFFFFF">
       <th height="70" align="center">简介</th>
       <td>{$desc}</td>
    </tr>
  </tbody></table>
EOF;
return $str;
}

function recommednav($navt,$orgnav,$id){
	$arr = $navt::getRecommend($orgnav,$id);
	$str="";
	if($arr){
		foreach($arr as $v){
			$str.="<a href='/goods_{$v["id"]}.html'>{$v['navname']}</a>\r\n";
		}
	}
	return $str;
}

function hotnav($navt,$orgnav,$id){
	$arr = $navt::getHot($orgnav,$id);
	$str="";
	if($arr){
		foreach($arr as $v){
			$str.="<a href='/goods_{$v["id"]}.html' class='hotnav'>{$v['navname']}</a>\r\n";
		}
	}
	return $str;
}


function returl($id){
	return "/goods_".$id.".html";
}

//当前栏目所属类型下设置为检索的规格项
function searchspec($nav){
	$sfield = [];
	$where['typeid'] = $nav['typeid'];
	$where['issearch'] = 1;
	$sarr = think\Db::name('goodsspec')->field('id')->where($where)->select();
	foreach($sarr as $k=>$v){
		$sfield[$k] = $v['id'];
	}
	return $sfield;
}

function ret_shjy($body){
 $str = '';
 	$pattern ="/<td\s+(.*?)>(.*?)<\/td>/";
 	preg_match_all($pattern,$body,$match);
 	if($match[2]){
 		foreach($match[2] as $k=>$v){
 			if($k%2 == 0){
 				$title[] = $v;
 			}else{
 				$conts[] = $v;
 			}
 		}
 		for($i=0;$i<count($title);$i++){
$str.=<<<EOF
<div class="panel panel-default">
<div class="panel-heading panel-heading-tz" role="tab" id="heading0{$i}">
    <div class="panel-title panel-title-tz panel-title-tz02">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse0{$i}" aria-expanded="false" aria-controls="collapse0{$i}" class="collapsed">
            <div class="clearfix tizhi tizhi0{$i}">
                <div class="pull-left dagou">{$title[$i]}</div>
                <div class="pull-right"><i class="glyphicon glyphicon-chevron-up up"></i><i class="glyphicon glyphicon-chevron-down down"></i></div>
            </div>
        </a>
    </div>
</div>
<div id="collapse0{$i}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading0{$i}" aria-expanded="false" style="height: 0px;">
    <div class="panel-body panel-body02">
        <div>{$conts[$i]}</div>
    </div>
</div>
</div>
EOF;
 		}

 	}
 return $str;
}


function jbfl($body){
	$str = '';
	if(strstr($body,'常见性疾病')){
		$str.='<div class="color-one a"></div>';
	}
	if(strstr($body,'男性高发病')){
		$str.='<div class="color-tow a"></div>';
	}
	if(strstr($body,'女性高发病')){
		$str.='<div class="color-three a"></div>';
	}
	if(strstr($body,'老年高发病')){
		$str.='<div class="color-four a"></div>';
	}
	return $str;
}


function bft($body){
	$str = '';
	$pattern = "/<[img|IMG].*?src=[\'|\"](.*?(?:[\.gif|\.jpg|\.png]))[\'|\"].*?[\/]?>/";
	preg_match_all($pattern,$body,$match);
	if($match[1]){
		foreach($match[1] as $v){
			$str.='<div  class="col-md-3 col-xs-6"><img  src="'.$v.'" alt=""></div>'."\r\n";
		}
	}
	return $str;
}

function honor($body){
	$str = '';
	$pattern ="/<li><p>(.*?)<\/p><\/li>/";

	preg_match_all($pattern,$body,$match);
	if($match[1]){
		foreach($match[1] as $v){
			$str.='<div class="col-md-4 col-sm-6 col-xs-12">'.$v.'</div>'."\r\n";
		}
	}
	return $str;
}

function dsj($arr){
	$str = '';
	$pattern ="/<tr(.*?)>(.*?)<\/tr>/";
	preg_match_all($pattern,$arr['content'],$match);
	if($match[2]){
		foreach($match[2] as $k=>$v){
			$pa = "/<td(.*?)>(\d{2}月)<\/td>/";
			$tmp = "/<td(.*?)>(.*)<\/td>/";
			$pb = "/<td(.*?)>(.*)<\/p>/";
			preg_match($pa,$v,$paarr);
			preg_match($tmp,$v,$tmparr);
			preg_match($pb,$tmparr[2],$pbarr);
			$month[] = $paarr[2];
			$conts[] = $pbarr[2];
		}
	}
for($i=0;$i<count($month);$i++){
$str.=<<<EOF
<div class="year-c">
	<div class="year-txt">
    	{$conts[$i]}
        <div class="year-p">
        <div class="clearfix">
        	<div class="pull-right"><div class="yd"></div></div>
            <div class="pull-right">{$month[$i]}</div>
        </div>
        </div>
    </div>
</div>
EOF;
}
return $str;






}