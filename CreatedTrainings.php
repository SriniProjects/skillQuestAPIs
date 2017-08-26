<?php
include 'dbconnection.php';
	$headers = apache_request_headers();
	$bearer=$headers['bearer'];
//$bearer="4pmy9e6hifd3jbmkd74z3gsqmyh7p2";
	$q="select Uniq_Id from api_auth where key_final='$bearer'";
	$r=mysqli_query($mainConnect,$q) or die(mysqli_error($mainConnect));
	if(mysqli_num_rows($r)>0){
		$error=false;
		$message="success";

		$res=mysqli_fetch_assoc($r);
		$Uniq_Id=$res['Uniq_Id'];

		$q_train_det="SELECT t.title,t.key_learning1,t.key_learning2,t.key_learning3,t.photo_file_name,t.duration,t.price,t.availability,t.id,t.date,t.description,t.from_timing,t.to_timing,t.venue,t.venue_latitude,t.venue_longitude,c.category_name FROM trainings t,categories c where t.category_id=c.id and t.user_id='$Uniq_Id'";
		$r_train_det=mysqli_query($mainConnect,$q_train_det) or die(mysqli_error($mainConnect));

		$i=0;
		$trainings=array();
		while($row=mysqli_fetch_assoc($r_train_det)){
			$trainings['id'][$i]=$row['id'];
			$tr_id=$row['id'];
			$trainings['title'][$i]=$row['title'];
$trainings['photo'][$i]="http://optimustechproject2017002.000webhostapp.com/skills_req/".$row['photo_file_name'];
			$trainings['category'][$i]=$row['category_name'];
			$trainings['key_learning1'][$i]=$row['key_learning1'];
			$trainings['key_learning2'][$i]=$row['key_learning2'];
			$trainings['key_learning3'][$i]=$row['key_learning3'];
			$trainings['price'][$i]=$row['price'];
			$trainings['duration'][$i]=$row['duration'];
			$trainings['availability'][$i]=$row['availability'];
			$trainings['date'][$i]=$row['date'];
			$trainings['description'][$i]=$row['description'];
			$trainings['timings'][$i]=$row['from_timing']." to ".$row['to_timing']; 
			$trainings['venue'][$i]=$row['venue'];
			$trainings['venue_latitude'][$i]=$row['venue_latitude'];
			$trainings['venue_longitude'][$i]=$row['venue_longitude'];
			$q_tr_st="select id from enquiries where user_id='$Uniq_Id' and training_id='$tr_id'";
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
	else{
		$error=true;
		$message="failed";
		$data=null;		
	}

	echo json_encode(array('error'=>$error,'message'=>$message,'trainings'=>$data['trainings']));

?>