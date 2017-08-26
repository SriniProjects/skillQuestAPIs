<?php

	include 'dbconnection.php';

	$email=$_GET['email'];
$fcm=$_GET['fcm'];
	//$email="srinivas.shikar@gmail.com";
	$q="SELECT * FROM users where email='$email'";
	$r=mysqli_query($mainConnect,$q) or die(mysqli_error($mainConnect));


	if(mysqli_num_rows($r)==0){
		$error=false;
		$data=null;
	}
	else{
		$error=true;
		$res=mysqli_fetch_assoc($r);

		$id=$res['id'];

		$q_det="SELECT * FROM `userdetails` WHERE `user_id` = '$id'";
		$r_det=mysqli_query($mainConnect,$q_det) or die(mysqli_error($mainConnect));
		$res_det=mysqli_fetch_assoc($r_det);

		$data['name']=$res_det['name'];
		$data['latitude']=$res_det['latitude'];
		$data['longitude']=$res_det['longitude'];
		$data['gender']=$res_det['gender'];
		$data['mobile']=$res_det['mobile_no'];
		$data['email']=$email;
$data['pwd']="";
$data['dob']=$res_det['DOB'];
$data['location']=$res_det['location'];
$data['photo']="http://optimustechproject2017002.000webhostapp.com/skills_req/".$res_det['picture_file_name'];

		$chars = "abcdefghijkmnpqrstuvwxyz23456789";
		srand((double)microtime()*1000000);
		$str = "";
		$i = 0;
		$length=30;
			
		while($i <= $length){
			$num = rand() % 33;
			$tmp = substr($chars, $num, 1);
			$str = $str . $tmp;
			$i++;
		}

		$q_ch="select * from api_auth where Uniq_Id='$id'";
		$r_ch=mysqli_query($mainConnect,$q_ch) or die(mysqli_error($mainConnect));

		if(mysqli_num_rows($r_ch)==0){
			$q_in_tok="INSERT INTO `api_auth` (`Uniq_Id`, `Key_Final`,fcm_id) VALUES ('$id', '$str','$fcm')";
			mysqli_query($mainConnect,$q_in_tok) or die(mysqli_error($mainConnect));
		}
		else{
			$q_in_tok="update `api_auth` set `Key_Final` = '$str',fcm_id='$fcm' where Uniq_Id='$id'";
			mysqli_query($mainConnect,$q_in_tok) or die(mysqli_error($mainConnect));	
		}
		$data['token']=$str;

		$q_train_det="SELECT t.title,t.key_learning1,t.key_learning2,t.photo_file_name,t.key_learning3,t.duration,t.price,t.availability,t.id,t.date,t.description,t.from_timing,t.to_timing,t.venue,t.venue_latitude,t.venue_longitude,c.category_name FROM trainings t,categories c where t.venue_latitude is not NULL and t.venue_longitude is not NULL and t.venue_latitude !='' and t.venue_longitude !='' and t.category_id=c.id";
		$r_train_det=mysqli_query($mainConnect,$q_train_det) or die(mysqli_error($mainConnect));

		$i=0;
		while($row=mysqli_fetch_assoc($r_train_det)){
			$trainings['id'][$i]=$row['id'];
$tr_id=$row['id'];
			$trainings['title'][$i]=$row['title'];
$trainings['category'][$i]=$row['category_name'];
			$trainings['key_learning1'][$i]=$row['key_learning1'];
			$trainings['key_learning2'][$i]=$row['key_learning2'];
			$trainings['key_learning3'][$i]=$row['key_learning3'];
			$trainings['price'][$i]=$row['price'];
			$trainings['duration'][$i]=$row['duration'];
$trainings['photo'][$i]="http://optimustechproject2017002.000webhostapp.com/skills_req/".$row['photo_file_name'];
			$trainings['availability'][$i]=$row['availability'];
			$trainings['date'][$i]=$row['date'];
			$trainings['description'][$i]=$row['description'];
			$trainings['timings'][$i]=$row['from_timing']." to ".$row['to_timing']; 
			$trainings['venue'][$i]=$row['venue'];
			$trainings['venue_latitude'][$i]=$row['venue_latitude'];
			$trainings['venue_longitude'][$i]=$row['venue_longitude'];
$q_tr_st="select id from enquiries where user_id='$id' and training_id='$tr_id'";
$r_tr_st=mysqli_query($mainConnect,$q_tr_st) or die(mysqli_error($mainConnect));
if(mysqli_num_rows($r_tr_st)==0){
$trainings['enquiry_status'][$i]='0';
}
else{
$trainings['enquiry_status'][$i]='1';
}

			$i++;
		}

		$data['trainings']=$trainings;
	}
	echo json_encode(array('error'=>$error,'data'=>$data));
?>