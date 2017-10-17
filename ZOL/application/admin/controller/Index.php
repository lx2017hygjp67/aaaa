<?php
namespace app\admin\controller;
use app\admin\controller\View;
use think\Db;
use think\Session;
header('content-type:text/html;charset=utf-8');
class Index extends View
{	

    // ++++++++++++++++后台操作开始+++++++++++++++

    // 共调用文件

    public function __construct(){
        session_start();
       
    }


    //登录验证
    public function execute()
    {
        $a = input('post.','','','htmlspecialchars');
        $user=$a['name'];
        $pwd=md5($a['password']);
        $yzm=$a['verify'];
        // session_start();
        $verify=strcasecmp($_SESSION['verify'],$yzm);
        $test1=trim($user);
        $test2=trim($a['password']);
        $res=db('admin')->where('username',$user)->where('password',$pwd)->find();
        
        if ($test1==""||$test2=="") {

            $this->error('用户名或密码不能为空！');

        }elseif( $res==null ){

            $this->error('用户名或密码错误');

        }elseif($verify==0){

            $_SESSION['user'] = $res['username'];
            $uid=$res['uid'];
            if( $a['online'] == 'on' ){

                setcookie('user', $user ,time() + ( 60*60*24* $a['retime'] ) );
                setcookie('uid', $uid,time() + ( 60*60*24* $a['retime'] ) );
                setcookie('pwd', $pwd ,time() + ( 60*60*24* $a['retime'] ) );
                                        
            }

            $this->success('登录成功','index');
        }else{
            $this->error('验证码错误');
        }

    }

    

    //后台首页  
	public function index()
    {
       if (!isset($_SESSION['user'])) {
            return view('login');
        }else{
        return view();
       }
    }


    //注销登录
     public function unlogin()
    {
        if (isset($_GET['type'])) {
            return view();
        }else{
            session_destroy();
            if( isset($_COOKIE['user'])&&isset($_COOKIE['pwd'])){

                $user = $_COOKIE['user'];
                $pwd = $_COOKIE['pwd'];
                $uid = $_COOKIE['uid'];
                setcookie('user', $user ,time()-1 );
                setcookie('uid', $uid,time() -1 );
                setcookie('pwd', $pwd ,time()-1 );         
            }
            return view('login');
        }
    }

    

    //登录
     public function login()
    {
        if (isset($_COOKIE['user'])) {
            $_SESSION['user']=$_COOKIE['user'];

            $this->success('您已登录','index'); 
        }else{

            return view(); 
        }
    }



    //+++++++++++++页面输出开始+++++++++++++
    // -》最好还是再创建一个view.php的控制器  来作为左侧页面输出  方便后面修改
    //->修改之后可能需要再次修改一下meta.html 根据情况进行讨论
   
}
