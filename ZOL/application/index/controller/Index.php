<?php
namespace app\index\controller;

use think\Controller;
use think\Db;

class Index  extends Controller
{

  //++++++++++++++++++杨旭++++++++++++++++++++++

//------------------ index 首页------------------   
     public function index()
    {   
        $res = Db::table('class')->select();
         $res1 = Db::table('brand')->select();

         $ret = Db::table('lunbo')->where('l_tt','1')->select();
         $rty = Db::table('lunbo')->where('l_tt','2')->select();

         $arr['res']=$res;    
         $arr['res1']=$res1;

         $arr['rty']=$rty;
         $arr['ret']=$ret;
         
         return view('index',$arr); 
    }


    //------------------------- 用户登录 login--------------------


    public function login(){
        $a  = input('post.','','','htmlspecialchars');//HTML去除两边特殊符号
     if (empty($a)) {
     return view( 'login');
     }
        $user = $a['username'];
        $pwd = md5($a['mm']);

        session_start();
        $res = Db::table('user')->where('username',$user)->where('password',$pwd)->find();

        if($res){
          $_SESSION['user']= $res['username'];
          $uid = $res['uid'];
          $this->success('登录成功','index');

         }else{

          $this->error('用户名或密码错误');

        }

    	// return view( 'login');
    }



    // --------------以下是商家登录 sjlogin-------------
    public function sjlogin(){
        $a = input('post.','','','htmlspecialchars');
        if(empty($a)){
          return view('login');
        }
        $user = $a['sjh'];
        $pwd = md5($a['mm']);
        session_start();
        $res = Db::table('merchant')->where('username',$user)->where('password',$pwd)->find();

        if($res){
            $_SESSION['user'] = $res['username'];
            $sid = $res['sid'];
            $this->success('登录成功','index');
        }else{
            $this->error('用户名错误');
        }

    }
   

   


     // -----------------------注册 register------------------
     public function register(){
      
        $a = input('post.','','','htmlspecialchars');
      if( isset($a['submit']) ){

        $num = $a['number'];
   
        // var_dump($num);die;

        $yzm = $a['hmyzm']; 
        // ----短信验证码空出----
        $pwd = md5($a['mima']);
        $time = time(); 
        session_start();
        $ver = strcasecmp($_SESSION['verify'], $yzm);
        if( $ver==0 ){

  
        $arr1 = db('user')->where('username',$num)->find();
        $arr2 = ['username'=>$num,'password'=>$pwd,'u_time'=>$time];

        // var_dump($arr2);die;

        $res = db('user')->insert($arr2);

        if( $res ){
            if($arr1){
               $this->error('手机号已注册');
            }else{
                $this->success('注册成功','login');
            }

        }

       }else{

            $this->error('验证码错误');

       } 

     }else{

    	 return view('register');
   
     }
    

  }


//+++++++++++++++++++++罗鑫+++++++++++++++++++


//       分类页面
     public function type()
    {

        $res=Db::table('class')->select();
        $res1=Db::table('brand')->select();
        $cid=isset($_GET['cid'])?$_GET['cid']:1;
        $price=Db::table('pricerange')->select();
        $ram=Db::table('ram')->select();
        $wap=Db::table('wap_type')->select();
        $res2=Db::table('class')->where(['cid'=>$cid])->select();
        $res3=Db::view('brand','*')
            ->view('class', '*', 'brand.cid=class.cid')
            ->where(['brand.cid'=>$cid])->select();

        if (isset($_GET['rid'])) {
          $rid=$_GET['rid'];
        
          $data = Db::view('product', '*')
            ->view('class', '*', 'product.cid=class.cid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->order('pid','pid DESC')
            ->where(['product.cid' => $cid])
            ->where(['product.rid' => $rid])
            ->where(['product.p_show' => 1])
            ->order('pid','pid DESC')
            ->paginate(8);
          $page=$data->render();
         
        }elseif (isset($_GET['ram_id'])) {
          $ram_id=$_GET['ram_id'];
          
          $data = Db::view('product', '*')
            ->view('class', '*', 'product.cid=class.cid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->order('pid','pid DESC')
            ->where(['product.cid' => $cid])
            ->where(['product.ram_id' => $ram_id])
            ->where(['product.p_show' => 1])
            ->order('pid','pid DESC')
            ->paginate(8);
          $page=$data->render();
           
        }elseif (isset($_GET['wid'])) {
          $wid=$_GET['wid'];
          $data = Db::view('product', '*')
            ->view('class', '*', 'product.cid=class.cid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->order('pid','pid DESC')
            ->where(['product.cid' => $cid])
            ->where(['product.wid' => $wid])
            ->where(['product.p_show' => 1])
            ->order('pid','pid DESC')
            ->paginate(8);
          $page=$data->render();
         
        }else{
          $data = Db::view('product', '*')
            ->view('class', '*', 'product.cid=class.cid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->order('pid','pid DESC')
            ->where(['product.cid' => $cid])
            ->where(['product.p_show' => 1])
            ->paginate(16);
          $page=$data->render();
        }
        $arr['price']=$price;
        $arr['ram']=$ram;
        $arr['wap']=$wap;
        $arr['res']=$res;
        $arr['res1']=$res1;
        $arr['res2']=$res2;
        $arr['res3']=$res3;
        $arr['data']=$data;
        $arr['page']=$page;
       return view('class',$arr);
    }


//      品牌页面
     public function brand()
    {
        $cid=isset($_GET['cid'])?$_GET['cid']:1;
        $bid=isset($_GET['bid'])?$_GET['bid']:1;

        $price=Db::table('pricerange')->select();
        $ram=Db::table('ram')->select();
        $wap=Db::table('wap_type')->select();
        if (isset($_GET['rid'])) {
          $rid=$_GET['rid'];
        
          $data = Db::view('product', '*')
            ->view('brand', '*', 'product.bid=brand.bid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->where(['product.bid' => $bid])
            ->where(['product.rid' => $rid])
            ->where(['product.p_show' => 1])
            ->order('pid','pid DESC')
            ->paginate(8);
          $page=$data->render();
         
        }elseif (isset($_GET['ram_id'])) {
          $ram_id=$_GET['ram_id'];
          
          $data = Db::view('product', '*')
            ->view('brand', '*', 'product.bid=brand.bid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->where(['product.bid' => $bid])
            ->where(['product.ram_id' => $ram_id])
            ->where(['product.p_show' => 1])
            ->order('pid','pid DESC')
            ->paginate(8);
          $page=$data->render();
           
        }elseif (isset($_GET['wid'])) {
          $wid=$_GET['wid'];
          $data = Db::view('product', '*')
            ->view('brand', '*', 'product.bid=brand.bid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->where(['product.bid' => $bid])
            ->where(['product.wid' => $wid])
            ->where(['product.p_show' => 1])
            ->order('pid','pid DESC')
            ->paginate(8);
          $page=$data->render();
        }else{
          $data = Db::view('product', '*')
            ->view('brand', '*', 'product.bid=brand.bid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->where(['product.bid' => $bid])
            ->where(['product.p_show' => 1])
            ->order('pid','pid DESC')
            ->paginate(8);
          $page=$data->render();
        }
        $res=Db::table('class')->select();
        $res1=Db::table('brand')->select();
        $res2=Db::table('class')->where(['cid'=>$cid])->select();
        $res3=Db::view('brand','*')
            ->view('class', '*', 'brand.cid=class.cid')
            ->where(['brand.cid'=>$cid])->select();
        $res4=Db::view('product','*')
            ->view('brand', '*', 'product.bid=brand.bid')
            ->where(['product.p_show' => 1])
            ->where(['product.bid'=>$bid])->select();

        $arr['price']=$price;
        $arr['ram']=$ram;
        $arr['wap']=$wap;
        $arr['res']=$res;
        $arr['res1']=$res1;
        $arr['res2']=$res2;
        $arr['res3']=$res3;
        $arr['res4']=$res4;
        $arr['data']=$data;
        $arr['page']=$page;
       return view('brand',$arr);
    }



//      详情页面
     public function product()
    {
        $cid=isset($_GET['cid'])?$_GET['cid']:1;
        $bid=isset($_GET['bid'])?$_GET['bid']:1;
        $pid=isset($_GET['pid'])?$_GET['pid']:1;
        $res=Db::table('class')->select();
        $res1=Db::table('brand')->select();
        $res2=Db::view('product', '*')
            ->view('class', '*', 'product.cid=class.cid')
            ->view('brand', '*', 'product.bid=brand.bid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->where(['product.p_show' => 1])
            ->where(['pid'=>$pid])->find();
        $arr['res']=$res;
        $arr['res1']=$res1;
        $arr['res2']=$res2;
       return view('product',$arr);
    }


    // ------------------底部信息----------
    public function footer(){
        
        return View('footer');
    }
    

    // ------------------------公共头部--------------
    public function header(){
       
         $res = Db::table('class')->select();
         $res1 = Db::table('brand')->select();
         $arr['res']=$res;
         $arr['res1']=$res1;
         return view('index/header',$arr);
    }


//+++++++++++++++++鄢超+++++++++++++++++

          
    //传递个人中心视图 1
    public function personal()
    {
        $pd = isset($_GET['c'])?$_GET['c']:'OrderManage';
        // $url = Db::table('ul_tb')->field('comp')->select();
        // $this->assign('url',$url);
        $msg ='';  //传递订单信息
        $review ='';//传递评价信息
        $this->assign('pd',$pd);
        $this->assign('msg',$msg);
        $this->assign('review',$review);
        return $this->fetch();
    }
    //传递个人中心视图 2
    public function tuan()
    {
        $pd = isset($_GET['c'])?$_GET['c']:'default';
        $msg = ''; //传递订单信息、
        $person_info ='';//传递顾客信息(红包的和优惠券)
        $this->assign('pd',$pd);
        $this->assign('msg',$msg);
        $this->assign('info',$person_info);
        return $this->fetch();
    }
    //传递个人购物车
    public function cart()
    {
        $cartmsg = '';//传递购物信息
        $this->assign('msg',$cartmsg);
        return $this->fetch();
    }

//关于分页的
    public function fy()
    {
        $list = Db::table('h_tb')->paginate(5);
        $page = $list->render();
        $this->assign('list',$list);
        $this->assign('page',$page);
        return $this->fetch();
    }

//+++++++++++++++++++++曹刚+++++++++++++++++++++++

    public function group(){
    
        return view('group');   //调用团购首页

    }

    public function group_fu(){

        return view('group_fu');    //调用团购单品团

    }

    public function aa(){

        //$res = Db::table('product')->where('pid',11)->find();

        // $res = db('product')->where('pid',2)->find();

        // $res = Db::table('product')->column('pid,img');

        // $res = Db::table('product')
        //         ->where('pid','<=','5')
        //         ->column('pid,img');

        $res = Db::table('product')
                    ->field('pid,img')
                    ->where('pid','<',10)
                    ->where(['product.p_show' => 1])
                    ->select(true); 
                
        dump($res);die;
    }










   

}


