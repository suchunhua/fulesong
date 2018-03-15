<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
class Upload extends Basic{
	public function upimg(){
		$file = request()->file('file');

		(empty($file)) ? $this->error('请选择上传文件') : '';
		$info = $file->move(ROOT_PATH . '/uploads/images');
		if ($info) {
			$path = str_replace(ROOT_PATH, '', $info->getPathname());
           	$path = str_replace('\\', '/', $path);
           	exit(json_encode(['imgurl'=>$path]));
        } else {
            $this->error($file->getError());
        }
	}
    public function single(){
        return $this->fetch();
    }

    public function multiple(){
        return $this->fetch();
    }
    
}