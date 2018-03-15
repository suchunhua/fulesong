<?php
namespace app\member\controller;
use app\member\controller\Basic;
class Upload extends Basic{
	public function upimg(){
		$file = request()->file('file');
		(empty($file)) ? $this->error('请选择上传文件') : '';
		$info = $file->move(ROOT_PATH . '/uploads/member');
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
}