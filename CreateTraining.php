<?php
	
	include 'dbconnection.php';
	$headers = apache_request_headers();
	$bearer=$headers['bearer'];
//$bearer="ti6e6itizk7gckrcdxfawfckj8b8tqb";
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

if(strpos($_GET['fileName'],".") && $_GET['fileName']!="" ){
$photo="profile/".$_GET['fileName'];
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
		$q_in="INSERT INTO `trainings` (`id`, `title`, `key_learning1`, `key_learning2`, `key_learning3`, `created_at`, `updated_at`, `location_id`, `price`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`, `user_id`, `category_id`, `availability`, `from_timing`, `to_timing`, `date`, `duration`, `description`, `venue`, `venue_latitude`, `venue_longitude`, `prerequisite`) VALUES (NULL, '$title', '$kl1', '$kl2', '$kl2', '$curr_date', '$curr_date', NULL, '$price', '$photo', '$type', NULL, '$curr_date', '$user_id', '$cat_id', '$avail', '$fTime', '$tTime', '$date', '$duration', '$desc', '$venue', '$latitude', '$longitude', NULL)";
		mysqli_query($mainConnect,$q_in) or die($mainConnect);
	}
	else{
		$error=true;
		$message="failed";
	}
	echo json_encode(array('error'=>$error,'message'=>$message));
?>