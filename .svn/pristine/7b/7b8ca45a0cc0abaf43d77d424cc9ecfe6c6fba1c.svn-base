<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class System extends Basic{
    public function _initialize(){
        parent::_initialize();
        $this->assign('left','system');
        $this->assign('act','system');
        $tplpath = ROOT_PATH.'/run_theme/'.get_langpath('admin',$this->lid);
        $this->assign('domain',request()->domain());
        $this->assign('theme_path',get_tpl($tplpath));
    }
    public function index(){ 
    	if(isajax()){
    		checktoken();
    		$fields = ['webname','weburl','keywords','description','beian','power','logo','theme_p','indexname','tela','telb','faxa','faxb',
    					'emaila','emailb','lxra','lxrb','phonea','phoneb','addressa','addressb','sendtype','morelang','mobile','theme_m'];
    		$un = ['open_reg','sendtype','open_member','loginpath','loginsuffix','safecode','morelang','mail_host','mail_from','mail_pass',
    				'mail_to','mail_port','app_debug','app_trace','shoping','notallow_nickname'];
	        foreach($_POST as $k=>$v){
	        	if(in_array($k,$un)){
	        		$ky_cfg[$k] = $v;
	        		unset($_POST[$k]);
	        	}
	        	if(in_array($k, $fields)){
	            	$cfg[$k] = htmlspecialchars($v);
	        	}
	        }
	        $this->setconf($ky_cfg);
	        Db::name('config')->where('id',$this->lid)->update(['content'=>json_encode($cfg)]);
	        exit(json_encode(['status'=>1,'msg'=>'更新成功']));
    	}
        return $this->fetch();
    }

    private function setconf($ky_cfg){
    	$str=file_get_contents(CONFIG_PATH);
	    $pattern=$rep=array();
	    foreach($ky_cfg as $k=>$v){
	        $pattern[]="/\'$k\'(\s+)=>(\s?)(.*)\',/i";
	        $rep[]="'$k'\$1=>\$2'$v',";
	    }
	    $str = preg_replace($pattern,$rep,$str);
	    file_put_contents(CONFIG_PATH,$str);
    }
}