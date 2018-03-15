<?php
function get_sql($arr){
	$comment = $arr['comment'];
	$type 	 = $arr['type'];
	$len  	 = $arr['length'];
	$name 	 = $arr['name'];
	$def 	 = $arr['def'];
	$ret 	 = [];
	if($type == 'varchar'){
		$ret['sql'] = "`{$name}` VARCHAR( $len ) NULL DEFAULT  NULL COMMENT  '{$comment}'";
	}elseif($type == 'bjq'){
		$ret['sql'] = "`{$name}` TEXT NULL DEFAULT NULL COMMENT '{$comment}'";
	}elseif($type == 'tinyint'){
		$ret['sql'] = "`{$name}` TINYINT( $len ) UNSIGNED NULL DEFAULT NULL COMMENT '{$comment}'";
	}elseif($type == 'img'){
		$ret['sql'] = "`{$name}` VARCHAR( $len ) NULL DEFAULT NULL COMMENT '{$comment}'";
	}elseif($type == 'imgs'){
		$ret['sql'] = "`{$name}` TEXT NULL DEFAULT NULL COMMENT '{$comment}'";
	}elseif($type == 'file'){
		$ret['sql'] = "`{$name}` VARCHAR( $len ) NULL DEFAULT NULL COMMENT '{$comment}'";
	}elseif($type == 'radio'){
		$ret['sql'] = "`{$name}` VARCHAR( $len ) NULL DEFAULT NULL COMMENT '{$comment}'";
	}elseif($type == 'checkbox'){
		$ret['sql'] = "`{$name}` VARCHAR( $len ) NULL DEFAULT NULL COMMENT '{$comment}'";
	}elseif($type == 'select'){
		$ret['sql'] = "`{$name}` VARCHAR( $len ) NULL DEFAULT NULL COMMENT '{$comment}'";
	}
	$ret['info'] = "<field:{$name} type='{$type}' comment='{$comment}' def='{$def}'></field:{$name}>";
	return $ret;
}


function desafe($str){
$safe = new \kykkk\Safe(config('safekey'));
return $safe->decode($str);
}

function get_addHandle($arr){
	$str = '';
	switch ($arr['type']) {
		case 'varchar':
			$str.= '<input type="text" name="'.$arr['field'].'" class="col-xs-12 col-sm-12" value="" />'."\r\n";
			break;
		case 'radio': 
			$tmp = explode(',',$arr['def']);
			$str.= '<div class="checkbox">'."\r\n";
              	foreach($tmp as $k=>$v){
              		$str.='<label style="padding:0 10px">'."\r\n";
              		$str.='<input name="'.$arr['field'].'" type="radio" class="ace" value="'.$v.'">'."\r\n";
              		$str.='<span class="lbl"> '.$v.' </span>'."\r\n";
              		$str.='</label>'."\r\n";
              	}
            $str.='</div>'."\r\n";
			break;
		case 'checkbox': 
			$tmp = explode(',',$arr['def']);
			$str.= '<div class="checkbox">'."\r\n";
              	foreach($tmp as $k=>$v){
              		$str.='<label style="padding:0 10px">'."\r\n";
              		$str.='<input name="'.$arr['field'].'[]" type="checkbox" class="ace" value="'.$v.'">'."\r\n";
              		$str.='<span class="lbl"> '.$v.' </span>'."\r\n";
              		$str.='</label>'."\r\n";
              	}
            $str.='</div>'."\r\n";
			break;
		case 'select': 
			$tmp = explode(',',$arr['def']);
			$str.= '<select class="form-control" id="'.$arr['field'].'" name="'.$arr['field'].'">'."\r\n";
              	foreach($tmp as $k=>$v){
              		$str.='<option value="'.$v.'">'.$v.'</option>'."\r\n";
              	}
            $str.='</select>'."\r\n";
			break;
		case 'img': 
			$str.='<input type="text" name="'.$arr['field'].'" class="col-xs-11 col-sm-11">'."\r\n";
			$str.='<a class="upbutton btn btn-primary" id="'.$arr['field'].'_btn">选择</a>'."\r\n";
			$str.='<div class="hidden"><script id="'.$arr['field'].'_ueditor"></script></div>';
			$str.='<script>var '.$arr['field'].' = UE.getEditor("'.$arr['field'].'_ueditor"); $("#'.$arr['field'].'_btn").click(function(){ ueimg($(this),'.$arr['field'].');});</script>';
			break;
		case 'imgs': 
			$str.='<textarea name="'.$arr['field'].'" class=" hidden"></textarea>'."\r\n";
			$str.='<div class="row"></div>'."\r\n";
			$str.='<a class="upbutton btn btn-primary" id="'.$arr['field'].'_btn">选择</a>'."\r\n";
			$str.='<div class="hidden"><script id="'.$arr['field'].'_ueditor"></script></div>';
			$str.='<script>var '.$arr['field'].' = UE.getEditor("'.$arr['field'].'_ueditor"); $("#'.$arr['field'].'_btn").click(function(){ ueimgs($(this),'.$arr['field'].');});</script>';
			break;
		case 'file': 
			$str.='<input type="text" name="'.$arr['field'].'" class="col-xs-11 col-sm-11">'."\r\n";
			$str.='<a class="upbutton btn btn-primary" id="'.$arr['field'].'_btn">选择</a>'."\r\n";
			$str.='<div class="hidden"><script id="'.$arr['field'].'_ueditor"></script></div>';
			$str.='<script>var '.$arr['field'].' = UE.getEditor("'.$arr['field'].'_ueditor"); $("#'.$arr['field'].'_btn").click(function(){ uefile($(this),'.$arr['field'].');});</script>';
			break;
		case 'bjq': 
			$str.='<textarea name="'.$arr['field'].'" id="'.$arr['field'].'" class="col-xs-12 col-sm-12" style="margin-left:-12px"></textarea>'."\r\n";
            $str.='<script type="text/javascript">var ue = UE.getEditor("'.$arr['field'].'");</script>'."\r\n";
			break;
	}
	return $str;
}


function get_asfield($str_field,$arc){
	$pattern = "/<field:([a-z0-9_]+)\stype='([a-z]+)'\scomment='(.*)' def='(.*)'><\/field:\\1>/";
    preg_match_all($pattern, $str_field, $match);
    if($match){
    	$add_num = count($match[1]);
    	for ($i=0;$i<$add_num;$i++) {
    		$add[$i]['field'] = $match[1][$i];
    		$add[$i]['type']  = $match[2][$i];
    		$add[$i]['comment'] = $match[3][$i];
    		$add[$i]['def'] = $match[4][$i];
    	}
    }
    if($add){
	    foreach($add as $v){
		  	$str.='<div class="form-group">'."\r\n";
		    $str.='<label class="col-sm-1 control-label no-padding-right">'.$v['comment'].'</label>'."\r\n";
		    $str.='<div class="col-sm-9">'."\r\n";
		    $str.=get_asHandle($v,$arc);
		    $str.='</div>'."\r\n";
		    $str.='</div>'."\r\n";
	    }
	}
    return $str;
}

function get_asHandle($arr,$arc){
	$str = '';
	switch ($arr['type']) {
		case 'varchar':
			$str.= '<input type="text" name="'.$arr['field'].'" class="col-xs-12 col-sm-12" value="'.$arc[$arr['field']].'" />'."\r\n";

			break;
		case 'bjq':
			$str.='<textarea name="'.$arr['field'].'" id="'.$arr['field'].'" class="col-xs-12 col-sm-12" style="margin-left:-12px">'.$arc[$arr['field']].'</textarea>'."\r\n";
            $str.='<script type="text/javascript">var ue = UE.getEditor("'.$arr['field'].'");</script>'."\r\n";
			break;
		case 'img': 
			$str.='<input type="text" name="'.$arr['field'].'" class="col-xs-11 col-sm-11" value="'.$arc[$arr['field']].'">'."\r\n";
			$str.='<a class="upbutton btn btn-primary" id="'.$arr['field'].'_btn">选择</a>'."\r\n";
			$str.='<div class="hidden"><script id="'.$arr['field'].'_ueditor"></script></div>';
			$str.='<script>var '.$arr['field'].' = UE.getEditor("'.$arr['field'].'_ueditor"); $("#'.$arr['field'].'_btn").click(function(){ ueimg($(this),'.$arr['field'].');});</script>';
			break;
		case 'imgs': 
			$str.='<textarea name="'.$arr['field'].'" class="hidden">'.$arc[$arr['field']].'</textarea>'."\r\n";
			$str.='<div class="row" id="'.$arr['field'].'">'."\r\n";
			if(preg_match('/#/',$arc[$arr['field']])){
	        	$pics = explode('#', $arc[$arr['field']]);
	        	array_pop($pics);
	        	foreach($pics as $v){
		        	$str.='<div class="col-xs-6 col-md-3 h130">'."\r\n";
		        	$str.='<div class="thumbnail h110"><img src="'.$v.'" class="wh100"><span class="delpic"></span></div>'."\r\n";
		        	$str.='</div>'."\r\n";
		        }
	        }
	        
			$str.='</div>'."\r\n";
			$str.='<a class="upmore btn btn-primary" id="'.$arr['field'].'_btn">选择</a>'."\r\n";
			$str.='<div class="hidden"><script id="'.$arr['field'].'_ueditor"></script></div>';
			$str.='<script>var '.$arr['field'].' = UE.getEditor("'.$arr['field'].'_ueditor"); $("#'.$arr['field'].'_btn").click(function(){ ueimgs($(this),'.$arr['field'].');});</script>'."\r\n";
			$str.='<script>setPicRank("'.$arr['field'].'")</script>'."\r\n";
			break;
		case 'radio': 
			$tmp = explode(',',$arr['def']);
			$str.= '<div class="checkbox">'."\r\n";
              	foreach($tmp as $k=>$v){
              		$str.='<label style="padding:0 10px">'."\r\n";
              		if($v == $arc[$arr['field']]){
              			$str.='<input checked name="'.$arr['field'].'" type="radio" class="ace" value="'.$v.'">'."\r\n";
					}else{
						$str.='<input name="'.$arr['field'].'" type="radio" class="ace" value="'.$v.'">'."\r\n";
					}
              		$str.='<span class="lbl">'.$v.'</span>'."\r\n";
              		$str.='</label>'."\r\n";
              	}
            $str.='</div>'."\r\n";
			break;
		case 'checkbox': 
			$tmp = explode(',',$arr['def']);
			$str.= '<div class="checkbox">'."\r\n";
              	foreach($tmp as $k=>$v){
              		$str.='<label style="padding:0 10px">'."\r\n";
              		if(strstr($arc[$arr['field']],$v)){
              			$str.='<input checked name="'.$arr['field'].'[]" type="checkbox" class="ace" value="'.$v.'">'."\r\n";
					}else{
						$str.='<input name="'.$arr['field'].'[]" type="checkbox" class="ace" value="'.$v.'">'."\r\n";
					}
              		$str.='<span class="lbl">'.$v.'</span>'."\r\n";
              		$str.='</label>'."\r\n";
              	}
            $str.='</div>'."\r\n";
			break;
		case 'select': 
			$tmp = explode(',',$arr['def']);
			$str.= '<select class="form-control" id="'.$arr['field'].'" name="'.$arr['field'].'">'."\r\n";
              	foreach($tmp as $k=>$v){
              		if($v == $arc[$arr['field']]){
              			$str.='<option value="'.$v.'" selected>'.$v.'</option>'."\r\n";
					}else{
						$str.='<option value="'.$v.'">'.$v.'</option>'."\r\n";
					}
              	}
            $str.='</select>'."\r\n";
			break;
		case 'file': 
			$str.='<input type="text" name="'.$arr['field'].'" class="col-xs-11 col-sm-11" value="'.$arc[$arr['field']].'">'."\r\n";
			$str.='<a class="upbutton btn btn-primary" id="'.$arr['field'].'_btn">选择</a>'."\r\n";
			$str.='<div class="hidden"><script id="'.$arr['field'].'_ueditor"></script></div>';
			$str.='<script>var '.$arr['field'].' = UE.getEditor("'.$arr['field'].'_ueditor"); $("#'.$arr['field'].'_btn").click(function(){ uefile($(this),'.$arr['field'].');});</script>';
			break;
	}

	return $str;
}


function count_spec($id){
	$arr = think\Db::name('goodsspec')->where('typeid',$id)->select();
	foreach($arr as $v){
		$str.="<span style='padding:3px 5px;border:1px solid #ddd; margin-right:10px;'>".$v['formname'].'</span>';
	}
	return $str;
}


//退出登录
function loginout($url){
    \think\session::clear();
    header("Location: $url");
    exit();
}

function tored($str,$key=''){ return is_numeric($key) ? $str : str_ireplace($key,"<b class='red'>".$key."</b>",$str);}

function goodspics($pics){
	$arr = explode('#',$pics);
	array_pop($arr);
	$str = '';
	foreach($arr as $v){
		$str.='<div class="col-xs-6 col-md-3 h130">'."\r\n";
		$str.='<div class="thumbnail h110"><img src="'.$v.'" class="wh100"><span class="delpic"></span></div>'."\r\n";
		$str.='</div>'."\r\n";
	}
	return $str;                     
}


clear(ROOT_PATH."/run_temp");