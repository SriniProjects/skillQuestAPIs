<?php

	include 'dbconnection.php';
	$headers = apache_request_headers();
	$bearer=$headers['bearer'];
//$bearer="tpeutga9d387sfi3vv6pvu5zkym7byb";
	$q="select Uniq_Id from api_auth where key_final='$bearer'";
	$r=mysqli_query($mainConnect,$q) or die(mysqli_error($mainConnect));
	if(mysqli_num_rows($r)>0){
		$error=false;
		$message="success";

		$res=mysqli_fetch_assoc($r);
		$Uniq_Id=$res['Uniq_Id'];

		$training_id=$_GET['training_id'];
		$msg=$_GET['message'];
//$training_id="7";
//$msg="";
		$q_in="INSERT INTO `enquiries` (`id`, `user_id`, `training_id`, `message`, `send_date_time`, `response_status`) VALUES (NULL, '$Uniq_Id', '$training_id', '$msg', CURRENT_TIMESTAMP, '0')";
		mysqli_query($mainConnect,$q_in) or die(mysqli_error($mainConnect));

$q_d="select name from userdetails where user_id='$Uniq_Id'";
$rd=mysqli_query($mainConnect,$q_d) or die($mainConnect);
$resd=mysqli_fetch_assoc($rd);
$name=$resd['name'];

$q_d="select title from trainings where id='$training_id'";
$rd=mysqli_query($mainConnect,$q_d) or die($mainConnect);
$resd=mysqli_fetch_assoc($rd);
$title=$resd['title'];


$q_tr="select t.user_id,u.fcm_id from trainings t,api_auth u where t.id='$training_id' and t.user_id=u.Uniq_Id";
$r_tr=mysqli_query($mainConnect,$q_tr) or die($mainConnect);
$res_tr=mysqli_fetch_assoc($r_tr);
$tr_fcm=$res_tr['fcm_id'];


	$ids2=array();
	$q="select fcm_id from api_auth where Uniq_Id='$Uniq_Id'";
$r=mysqli_query($mainConnect,$q) or die($mainConnect);
$res=mysqli_fetch_assoc($r);
//echo $res['fcm_id'];	
				array_push($ids2, $res['fcm_id']);
			define( 'API_ACCESS_KEY2', 'AIzaSyAxvFhkcs9YWqvTXCtrEU-aIKcpENtfJ1M' );

			$headers = array
			(
				'Authorization: key=' . API_ACCESS_KEY2,	
				'Content-Type: application/json'
			);
			$data=array('data'=>array('title'=>"Welcome",'message'=>"Welcome to skillRequest",'is_background'=>false,'payload'=>array('dd'=>'dd'),'image'=>""));

			$body=array('registration_ids' => $ids2, 'data' => $data);

				$ch = curl_init();
				curl_setopt( $ch,CURLOPT_URL, 'https://android.googleapis.com/gcm/send' );
				curl_setopt( $ch,CURLOPT_POST, true );
				curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
				curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
				curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
				curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode($body) );
				$result = curl_exec($ch );

				curl_close( $ch);
				//echo $result;





	$ids2=array();
	
				array_push($ids2, $tr_fcm);
		
			$data=array('data'=>array('title'=>"Enquiry",'message'=>$name." just enquired for ".$title." training.",'is_background'=>false,'payload'=>array('dd'=>'dd'),'image'=>""));

			$body=array('registration_ids' => $ids2, 'data' => $data);

				$ch = curl_init();
				curl_setopt( $ch,CURLOPT_URL, 'https://android.googleapis.com/gcm/send' );
				curl_setopt( $ch,CURLOPT_POST, true );
				curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
				curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
				curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
				curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode($body) );
				$result = curl_exec($ch );

				curl_close( $ch);
				//echo $result;





	$ids22=array();
	$q2="select fcm_id from admin_login where Username='00007'";
$r2=mysqli_query($mainConnect,$q2) or die($mainConnect);
$res2=mysqli_fetch_assoc($r2);
//echo $res2['fcm_id'];

					array_push($ids22, $res2['fcm_id']);
			define( 'API_ACCESS_KEY', 'AIzaSyCH5ekZEPAxTP8rwspIowgSfe-CixC_7Pc' );

			$headers = array
			(
				'Authorization: key=' . API_ACCESS_KEY,	
				'Content-Type: application/json'
			);
			$data2=array('data'=>array('title'=>"Enquiry",'message'=>$name." just enquired for ".$title." training.",'is_background'=>false,'payload'=>array('dd'=>'dd'),'image'=>""));

			$body=array('registration_ids' => $ids22, 'data' => $data2);

				$ch = curl_init();
				curl_setopt( $ch,CURLOPT_URL, 'https://android.googleapis.com/gcm/send' );
				curl_setopt( $ch,CURLOPT_POST, true );
				curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
				curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
				curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
				curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode($body) );
				$result = curl_exec($ch );

				curl_close( $ch );
				//echo $result;
	 	


	}
	else{
		$error=true;
		$message="failed";
}


	echo json_encode(array('error'=>$error,'message'=>$message));
?>