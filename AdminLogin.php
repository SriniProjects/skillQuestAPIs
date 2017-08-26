<?php

	include 'dbconnection.php';

	$headers = apache_request_headers();
	$r=$headers['Authorization'];
	$arr=explode(':',$r);
	$user=$arr[0];
	$pwd=$arr[1];

$fcm=$_GET['fcm'];
//$user="00007";
//$pwd="hello123";



	 //$email="jkkkk";
	 //$pwd="j";

	$data=array();
	$trainings=array();

	$q_login="SELECT * FROM `admin_login` WHERE `Username` LIKE '$user' AND `Password` LIKE '$pwd'";
	$r_login=mysqli_query($mainConnect,$q_login) or die(mysqli_error($mainConnect));

	if(mysqli_num_rows($r_login)>0){

		$error=false;
		$message="success";

$q_in_tok="update `admin_login` set fcm_id='$fcm' where Username='$user'";
			mysqli_query($mainConnect,$q_in_tok) or die(mysqli_error($mainConnect));

		$q_sel="SELECT en.message,en.send_date_time,u.email,us.name,us.mobile_no,t.title,en.id,t.user_id FROM enquiries en,userdetails us,users u,trainings t where en.user_id=us.user_id and en.training_id=t.id  and en.user_id=u.id order by en.send_date_time desc";
		$r_sel=mysqli_query($mainConnect,$q_sel) or die(mysqli_error($mainConnect));

		$i=0;
		while($ro=mysqli_fetch_assoc($r_sel)){
			$data[$i]['enq_id']=$ro['id'];
			$data[$i]['message']=$ro['message'];
			$data[$i]['send_date_time']=$ro['send_date_time'];
			$data[$i]['user_name']=$ro['name'];
$data[$i]['user_email']=$ro['email'];
			$data[$i]['user_mobile']=$ro['mobile_no'];
			$data[$i]['training_title']=$ro['title'];
$data[$i]['trainer_id']=$ro['user_id'];
$us_id=$ro['user_id'];

$q_d="select email,mobile_no,name from userdetails us,users u where u.id='$us_id' and us.user_id='$us_id'";
$r_d=mysqli_query($mainConnect,$q_d) or die($mainConnect);
if(mysqli_num_rows($r_d)==0){
$data[$i]['trainer_name']="";
$data[$i]['trainer_email']="";
$data[$i]['trainer_mobile']="";
}
else{
$res_d=mysqli_fetch_assoc($r_d);

$data[$i]['trainer_name']=$res_d['name'];
$data[$i]['trainer_email']=$res_d['email'];
$data[$i]['trainer_mobile']=$res_d['mobile_no'];
}
			$i++;
		}
	}
	else{
		$error=true;
		$message="failed";
		$data=null;
	}

	echo json_encode(array('error'=>$error,'message'=>$message,'data'=>$data));
?>