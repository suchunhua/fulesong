<?php
if(!file_exists(ROOT_PATH.'/uploads/install.lock')){
	header('location:/install');
	exit;
}
define('LID',get_lid());
$cfg = get_config('home',LID);
$langpath = get_langpath('home',LID);
if($cfg['mobile'] && is_Mobile()){
	$template = ROOT_PATH.'/run_theme/'.$langpath.'/'.$cfg['theme_m'].'/';
	$path = $cfg['theme_m'];
}else{
	$template=ROOT_PATH.'/run_theme/'.$langpath.'/'.$cfg['theme_p'].'/';
	$path = $cfg['theme_p'];
}

define('STYLE_PATH','/run_style/'.$langpath.'/'.$path);
return [
	'url_route_on'           => false,
	'url_route_must'         => false,
	'template'   		=> [
		'view_path'   	=> $template,
		'view_suffix'  => 'tpl',
		'taglib_pre_load' => 'kykkk\Ky',
        'taglib_build_in' => 'cx,kykkk\ky'
	],
];