<?php
	
	include 'dbconnection.php';
	$headers = apache_request_headers();
	$bearer=$headers['bearer'];
//$bearer="tufszt37pb5m7twezvdtje5hz62jyhw";
	$q="select Uniq_Id from api_auth where key_final='$bearer'";
	$r=mysqli_query($mainConnect,$q) or die(mysqli_error($mainConnect));
	if(mysqli_num_rows($r)>0){
		$error=false;
		$message="success";

		$res=mysqli_fetch_assoc($r);
		$user_id=$res['Uniq_Id'];

		$title=$_GET['name'];
		$latitude=$_GET['latitude'];
		$longitude=$_GET['longitude'];
		$venue=$_GET['venue'];
		$date=$_GET['date'];
		$kl1=$_GET['kl1'];
		$kl2=$_GET['kl2'];
		$kl3=$_GET['kl3'];

$tr_id=$_GET['training_id'];
//$tr_id="96";

if(strpos($_GET['fileName'],".") && $_GET['fileName']!="" ){
$photo="trainingImages/".$_GET['fileName'];
$arr=explode('.',$_GET['fileName']);
$type="image/".$arr[1];
}
else{
$photo='';
$type='';
}

$fTime=$_GET['fTime'];
$tTime=$_GET['tTime'];

$curr_date=date('Y-m-d');
		$price=$_GET['price'];

		$cat_id=$_GET['cat_id'];
		$avail=$_GET['avail'];
		$duration=$_GET['duration'];
		$desc=$_GET['desc'];
/*$title='name';
		$latitude='23.3';
		$longitude='25.2';
		$venue='venue';
		$date='2017-05-09';
		$kl1='kl1';
		$kl2='kl2';
		$kl3='kl3';

		$price='23';

		$cat_id='2';
		$avail='avail';
		$duration='2';
		$desc='desc';*/
		

		$curr_date=date('Y-m-d HH:mm:ss');
		$q_in="update `trainings` set `title`='$title', `key_learning1`='$kl1', `key_learning2`='$kl2', `key_learning3`='$kl3', `updated_at`='$curr_date', `price`='$price', `photo_file_name`='$photo', `photo_content_type`='$type', `photo_updated_at`='$curr_date', `category_id`='$cat_id', `availability`='$avail', `from_timing`='$fTime', `to_timing`='$tTime', `date`='$date', `duration`='$duration', `description`='$desc', `venue`='$venue', `venue_latitude`='$latitude', `venue_longitude`='$longitude' where `id`='$tr_id'";
		mysqli_query($mainConnect,$q_in) or die($mainConnect);
	}
	else{
		$error=true;
		$message="failed";
	}
	echo json_encode(array('error'=>$error,'message'=>$message));
?>