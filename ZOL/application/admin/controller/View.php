<?php
namespace app\admin\controller;
use think\Controller;
use think\Request;
use think\Db;
class View extends Controller
{
	 //轮播图管理
    public function picture_list()
    {
        
        return view();
      
    }

    //轮播图管理--》增加图片
       public function picture_add()
    {

        return view();
    }

     //产品管理--》分类
    public function product_category()
    {

        $res=Db::table('class')->select();
        for ($i=1; $i <= count($res); $i++) { 
            $data = Db::table('product')->where('cid',$i)->sum('num');
            $arr['data']=$data;
        }
        $arr['res']=$res;
       return view('product_category',$arr);
    }

     //产品管理-》增加产品分类
    public function product_category_add()
    {
        $type=isset($_GET['type'])?$_GET['type']:1;
        $arr['type']=$type;
        if ($type=='edit') {
            $cid=$_GET['cid'];
            $res=Db::table('class')->where('cid',$cid)->find(); 
            $arr['res'] =$res;
        }

        return view('product_category_add',$arr);
    }

    //产品管理-》产品列表
     public function product_list()
    {
        $res=Db::view('product', '*')
            ->view('class', '*', 'product.cid=class.cid')
            ->view('brand', '*', 'product.bid=brand.bid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->where(['product.p_show' => 1])
            ->order('pid','pid DESC')
            ->select();
        $arr['res']=$res;
       return view('product_list',$arr);
    }

   
    //商品管理--》商品增加 (试试能不能讲增加的页面进行合并)
    public function product_edit()
    {
        $type=isset($_GET['type'])?$_GET['type']:1;
        $pid=isset($_GET['pid'])?$_GET['pid']:1;
        $px=isset($_GET['px'])?$_GET['px']:1;
        $res=Db::view('product', '*')
            ->view('class', '*', 'product.cid=class.cid')
            ->view('brand', '*', 'product.bid=brand.bid')
            ->view('size', '*', 'product.sid=size.sid')
            ->view('ram', '*', 'product.ram_id=ram.ram_id')
            ->view('wap_type', '*', 'product.wid=wap_type.wid')
            ->view('color', '*', 'product.co_id=color.co_id')
            ->where('pid',$pid)->find();
        $res1=Db::table('class')->select();
        $res2=Db::table('brand')->select();
        $arr['type']=$type;
        $arr['px']=$px;
        $arr['res']=$res;
        $arr['res1']=$res1;
        $arr['res2']=$res2;
        return view('product_edit',$arr);
    }


//  添加、修改逻辑处理
    public function add_edit()
    {   
        
        $a = input('post.','','htmlspecialchars','');
        $p_name=$a['p_name'];
        $one=$a['one'];
        $two=$a['two'];
        $px=$a['px'];
        $pay=$a['pay'];
        $sale=$a['sale'];
        $content=$a['content'];
        $arr=explode('，', $content);
        $size=$arr[0];
        $ram=$arr[1];
        $type=$arr[2];
        $color=$arr[3];
        $sid=Db::view('size','sid')->where('size',$size)->find();
        $ram_id=Db::view('ram','ram_id')->where('ram',$ram)->find();
        $wid=Db::view('wap_type','wid')->where('type',$type)->find();
        $co_id=Db::view('color','co_id')->where('color',$color)->find();
        if ($a['img']!="") {
            $img=$a['img'];
        }else{
            $img=$a['img1'];
        }
        
        if (isset($a['add'])) {
            $arr2 = [
                'img'=>$img,
                'p_name'=>$p_name,
                'cid'=>$one,
                'bid'=>$two,
                'pay'=>$pay,
                'sale'=>$sale,
                'sid'=>$sid,
                'ram_id'=>$ram_id,
                'wid'=>$wid,
                'co_id'=>$co_id
            ];
            $res=Db::table('product')->insert($arr2);
        }else{
            $arr2 = [
                'img'=>$img,
                'p_name'=>$p_name,
                'cid'=>$one,
                'bid'=>$two,
                'pay'=>$pay,
                'sale'=>$sale,
                'sid'=>$sid,
                'ram_id'=>$ram_id,
                'wid'=>$wid,
                'co_id'=>$co_id
            ];
            $res=Db::table('product')->update($arr2);
        }    
       
    }

    public function edit_add()
    {   
        
        $a = input('post.','','htmlspecialchars','');
        $c_name=$a['c_name'];
        $cid=$a['add'];
        if ($cid=="") {
            $arr = [
                'c_name'=>$c_name,
            ];
            $res=Db::table('class')->insert($arr);
            if ($res) {

                $data = [

                 'code' => 200,

                  ];

                echo json_encode($data);
            }
        }else{
            $arr2 = [
                'c_name'=>$c_name,
            ];
            $res=Db::table('class')->where('cid',$cid)->update($arr2);
            if ($res) {

                $data = [

                 'code' => 300,

                  ];

                echo json_encode($data);
            }
        }    
       
    }
    //评论-》反馈
    public function feedback_list()
    {

        return view();
    }


    //评论-》商家回复
     public function review()
    {
        
       return view();
    }

    // 商户管理--》商户列表

    public function member_list()
    {

        return view();
    }

    // 商户管理--》删除的商户
    public function member_del()
    {

        return view();
    }

    // 商户管理--》增加商户
    public function member_add()
    {

        return view();
    }

    // 商户管理--》商户浏览记录
    public function member_record_browse()
    {

        return view();
    }

    // 商户管理--》商户个人中心
    public function member_show()
    {

        return view();
    }

    // 商户管理--》销售详情  (未创建  需要创建)
     public function member_sale_record()
    {

        return view();
    }

    //管理员管理--》角色管理（根据情况 选择删除）
    public function admin_role()
    {

        return view();
    }

    //管理员管理--》增加角色（根据情况 选择删除）
    public function admin_role_add()
    {

        return view();
    }

    //管理员管理--》权限（根据情况 对页面进行优化 参照上一个项目）
    public function admin_permission()
    {

        return view();
    }

    //管理员管理--》增加权限（根据情况 优化）
    public function admin_permission_add()
    {

        return view();
    }
    //管理员管理--》管理员列表（可以选择与前面两个合并）
    public function admin_list()
    {

        return view();
    }
    //管理员管理--》增加管理员
    public function admin_add()
    {

        return view();
    }

    //系统管理-->(根据情况选择删除)
    public function system_base()
    {

        return view();
    }

     public function system_category()
    {

        return view();
    }

     public function system_category_add()
    {

        return view();
    }
  
}