<?php
/**
 *
 * 版权所有：恰维网络<qwadmin.qiawei.com>
 * 作    者：寒川<hanchuan@qiawei.com>
 * 日    期：2016-01-21
 * 版    本：1.0.0
 * 功能说明：前台控制器演示。
 *
 **/
namespace Home\Controller;

use Vendor\Page;

class IndexController extends ComController
{
    public function index()
    {

        $this->display();
    }
    
    public function show()
    {
       $User = M('article');
// 执行其他的数据操作
		// $map['aid']  = array('in','1,9,18,24,32,41');
		// $map['aid']  = array('in','1,9,18,24,32,41');
         $res =   $User->select();
         $arr = [];
         foreach ($res  as $key=>$value){
             
             $arr[] = $value['title'];

         }
        //  return $res ;
                //  var_dump($arr);
    //   return "222";
         $this->ajaxReturn($arr);
    
    }

    public function show_result()
    {
	
		$data = $_POST['survey'];
		$data1 = substr($data,0,strlen($data)-1);
		$data1 = substr($data1,1);
		
		$post_data = explode(',',$data1);
		// $data1 = I('post.');
		
	 
		 
        $play = M('play')->order('id')->select();  
        $character = M('character')->select();
        $personality = M('personality')->order('id')->select();

        $play_arr= array('binding','ddlg','fetish','lovePain','manyPeoplePlay','pet','reveal','shame','slave','twentyFourSeven');
        
        $character_arr  = array('beast','bold','brat','crossAge','expose','eyes','nonspecific','possessive','strong','weak')   ;
        $personality_arr = array('dom','m','s','sub','switch');

        $new_play_arr =[];    
        foreach($play_arr as $k=>$v ){
         
            $new_play_arr[$v] = $play[$k];

        }
 
		
		// 4 11 12 15 34      ddlg
		// 3 10 11 14 33 
		$ddlg_num = 100/5/4;
		$new_play_arr['ddlg']['value'] = $post_data[3]*$ddlg_num+$post_data[9]*$ddlg_num+$post_data[11]*$ddlg_num+$post_data[14]*$ddlg_num+$post_data[33]*$ddlg_num;
		
		// 5 		恋物
		// 4
		$fetish_num = 100/4;
		$new_play_arr['fetish']['value'] = (4-$post_data[4])*$fetish_num;
		
		// 3 4 恋痛
		// 2 3
		$lovePain_num = 100/2/4;
		$new_play_arr['lovePain']['value'] = $post_data[2]*$lovePain_num+$post_data[3]*$lovePain_num;
		
		// 43 44 40  slave
		// 42 43 39
		$slave_num=100/3/4;	
		$new_play_arr['slave']['value'] = $post_data[42]*$slave_num+$post_data[43]*$slave_num+$post_data[39]*$slave_num;
		
		 // 5  24/7 
		 // 4 
		$twentyFourSeven_num = 100/4;  
		$new_play_arr['twentyFourSeven']['value'] = $post_data[7]*$twentyFourSeven_num;
		
		// 19 26 27 28 32 宠物扮演
		// 18 25 26 27 31
		$pet_num = 100/5/4;
		$new_play_arr['pet']['value'] = $post_data[18]*$pet_num+$post_data[25]*$pet_num+$post_data[26]*$pet_num+$post_data[27]*$pet_num+$post_data[31]*$pet_num;
		
		 
		// 35 36 22 23  捆绑束缚
		// 34 35 21 22
		$binding_num = 100/4/4;
		$new_play_arr['binding']['value'] = $post_data[34]*$binding_num+$post_data[35]*$binding_num+$post_data[21]*$binding_num+$post_data[22]*$binding_num;
		
		// 38 39 多人play
		// 37 38
 
		$manyPeoplePlay_num = 100/2/4;
		$new_play_arr['manyPeoplePlay']['value'] = $post_data[37]*$manyPeoplePlay_num+$post_data[38]*$manyPeoplePlay_num;
		
		// 13 14 24 25 羞耻
		// 12 13 23 24

		$shame_num = 100/4/4;
		$new_play_arr['shame']['value'] = $post_data[12]*$shame_num+$post_data[13]*$shame_num+$post_data[23]*$shame_num+$post_data[24]*$shame_num;
				
				
			 
		// 29 30  露出游戏
		// 28 29
		$reveal_num = 100/2/4;
		$new_play_arr['reveal']['value'] = $post_data[28]*$manyPeoplePlay_num+$post_data[29]*$manyPeoplePlay_num;
		
				
				
				
				
				
				
        $new_character_arr = [];
        foreach($character_arr as $k=>$v ){
 
            $new_character_arr[$v] = $character[$k];

        }
		// 1 9 18 24 32 41    弱势  4 弱势 ddlg
		// 0 8 17 23 31 40   
		
		$weak_num = 100/6/4;
		// var_dump($post_data[0]*$num+$post_data[1]*$num+$post_data[2]*$num+$post_data[3]*$num+$post_data[4]*$num);
		$new_character_arr['weak']['value'] = $post_data[0]*$weak_num+$post_data[8]*$weak_num+$post_data[17]*$weak_num+$post_data[23]*$weak_num+$post_data[31]*$weak_num+$post_data[40]*$weak_num;
	
				
		// 2 10 17 25 33 42   强势  17 25 强势 羞辱游戏
		// 1 9 16  24 32 41
		$strong_num = 100/6/4;
		$new_character_arr['strong']['value'] = $post_data[1]*$strong_num+$post_data[9]*$strong_num+$post_data[16]*$strong_num+$post_data[24]*$strong_num+$post_data[32]*$strong_num+$post_data[41]*$strong_num;
		
		
		
		// 6 38 39 			  非专一性 
		// 5 37 38 ;
		$nonspecific_num = 100/3/4;
		$new_character_arr['nonspecific']['value'] = $post_data[5]*$nonspecific_num+$post_data[37]*$nonspecific_num+$post_data[38]*$nonspecific_num;
		
		

		
		// 30			窥探欲
		// 29
		
		$eyes_num = 100/4;
		$new_character_arr['eyes']['value'] = $post_data[29]*$eyes_num;
				
		// 29 				暴露倾向
		// 28
		$expose_num = 100/4;
		$new_character_arr['expose']['value'] = $post_data[28]*$expose_num;
		
		// 16 跨龄恋
		// 15
		$crossAge_num = 100/4;
		$new_character_arr['crossAge']['value'] = $post_data[15]*$crossAge_num;

		// 31		brat
		// 30 
		$Brat_num = 100/4;
		$new_character_arr['brat']['value'] = $post_data[30]*$Brat_num;
		
		
		// 8 37  			前卫大胆
		// 7 36 
		$bold_num = 100/2/4;
		$new_character_arr['bold']['value'] = $post_data[7]*$bold_num+$post_data[36]*$bold_num;
		
		// 28				兽性  4
		// 27	
		$beast_num = 100/4;
		$new_character_arr['beast']['value'] = $post_data[27]*$beast_num;
		
		// 27		   占有欲   3
		// 26
		$possessive_num = 100/4;
		$new_character_arr['possessive']['value'] =(4-$post_data[26])*$possessive_num;

	




        $new_personality_arr = [];
        foreach ($personality_arr as $k=>$v){
            // $per_vlaue = rand(0,100);
            // $personality[$k]['value'] = $per_vlaue;
            $new_personality_arr[$v] = $personality[$k];

        }
		
		// 2 12 17 27 42 
		// 1 11 16 26 41
		$dom_num = 100/5/4;  
		$new_personality_arr['dom']['value'] =round($post_data[1]*$dom_num+$post_data[11]*$dom_num+$post_data[16]*$dom_num+$post_data[26]*$dom_num+$post_data[41]*$dom_num);
			
		// 4 10 14 21 22 27 35
		// 3 9 13 20 21 26 34
		$s_num = 100/7/4;
		$new_personality_arr['s']['value'] =round($post_data[3]*$s_num+$post_data[9]*$s_num+$post_data[13]*$s_num+$post_data[20]*$s_num+$post_data[21]*$s_num+$post_data[26]*$s_num+$post_data[34]*$s_num);
		
		// 1 3 9 13 20 23 24 25 26 32 36 43 44
		// 0 2 8 12 19 22 23 24 25 31 35 42 43
		
		$m_num = 100/13/4;
		$new_personality_arr['m']['value'] =round(($post_data[0] +$post_data[2] +$post_data[8] +$post_data[12] +$post_data[19] +$post_data[22] +$post_data[23] +$post_data[24] +$post_data[25] +$post_data[31] +$post_data[35] +$post_data[42] +$post_data[43])*$m_num );
		
		// 1 11 18 26 32 40 41
		// 0 10 17 25 31 39 40
		$sub_num = 100/7/4;
		$new_personality_arr['sub']['value'] =round(($post_data[0]+$post_data[10]+$post_data[17]+$post_data[25]+$post_data[31+$post_data[39]+$post_data[40]])*$sub_num);

			// 7 
			// 6
		$switch = 100/4;
		$new_personality_arr['switch']['value'] =round($post_data[6]*$dom_num);
	
		
		$arr1 = array_column($new_personality_arr, 'value');
		 array_multisort($arr1, SORT_DESC ,SORT_NUMERIC  , $new_personality_arr);	
		
		$arr2 = array_column($new_play_arr, 'value');
		array_multisort($arr2, SORT_DESC ,SORT_NUMERIC  , $new_play_arr);	
		
		
		$arr3 = array_column($new_character_arr, 'value');
		 array_multisort($arr3, SORT_DESC ,SORT_NUMERIC  , $new_character_arr);
	 
	 
        $data = array(
            'play' =>$new_play_arr,
            'character'=>$new_character_arr,
            'personality'=>$new_personality_arr,
        );

		
		
        // dump($data);
       $this->ajaxReturn($data);
  
    }
	
	function show_test(){
	   $personality = M('personality')->order('id')->select();
	        $personality_arr = array('dom','m','s','sub','switch');
	        foreach ($personality_arr as $k=>$v){
            $per_vlaue = rand(0,100);
            $personality[$k]['value'] = $per_vlaue;
            $new_personality_arr[$v] = $personality[$k];

        }
 	// dump($new_personality_arr);
			// $new_personality_arr = array_multisort(array_column($new_personality_arr,'value'),SORT_DESC,$new_personality_arr);
		
		// dump($b);
		
		$arr1 = array_column($new_personality_arr, 'value');
		$news = array_multisort($arr1, SORT_DESC ,SORT_NUMERIC  , $new_personality_arr);
		dump($new_personality_arr);
		dump($news);
		
		// $data[] = array('volume' => 67, 'edition' => 2);
// $data[] = array('volume' => 86, 'edition' => 1);
// $data[] = array('volume' => 85, 'edition' => 6);
// $data[] = array('volume' => 98, 'edition' => 2);
// $data[] = array('volume' => 86, 'edition' => 6);
// $data[] = array('volume' => 67, 'edition' => 7);
// $new_personality_arr = array_multisort(array_column($data),SORT_DESC,$data);
// dump($data);
	}
    /*
    //一些前台DEMO
    //单页
    public function single($aid){

        $aid = intval($aid);
        $article = M('article')->where('aid='.$aid)->find();
        $this->assign('article',$article);
        $this->assign('nav',$aid);
        $this -> display();
    }
    //文章
    public function article($aid){

        $aid = intval($aid);
        $article = M('article')->where('aid='.$aid)->find();
        $sort = M('asort')->field('name,id')->where("id='{$article['sid']}'")->find();
        $this->assign('article',$article);
        $this->assign('sort',$sort);
        $this -> display();
    }

    //列表
    public function articlelist($sid='',$p=1){
        $sid = intval($sid);
        $p = intval($p)>=1?$p:1;
        $sort = M('asort')->field('name,id')->where("id='$sid'")->find();
        if(!$sort) {
            $this -> error('参数错误！');
        }
        $sorts = M('asort')->field('id')->where("id='$sid' or pid='$sid'")->select();
        $sids = array();
        foreach($sorts as $k=>$v){
            $sids[] = $v['id'];
        }
        $sids = implode(',',$sids);

        $m = M('article');
        $pagesize = 2;#每页数量
        $offset = $pagesize*($p-1);//计算记录偏移量
        $count = $m->where("sid in($sids)")->count();
        $list  = $m->field('aid,title,description,thumbnail,t')->where("sid in($sids)")->order("aid desc")->limit($offset.','.$pagesize)->select();
        //echo $m->getlastsql();
        $params = array(
            'total_rows'=>$count, #(必须)
            'method'    =>'html', #(必须)
            'parameter' =>"/list-{$sid}-?.html",  #(必须)
            'now_page'  =>$p,  #(必须)
            'list_rows' =>$pagesize, #(可选) 默认为15
        );
        $page = new Page($params);
        $this->assign('list',$list);
        $this->assign('page',$page->show(1));
        $this->assign('sort',$sort);
        $this->assign('p',$p);
        $this->assign('n',$count);

        $this -> display();
    }
    */
}