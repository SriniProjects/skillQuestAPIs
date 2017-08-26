<?php

			require 'dbconnection.php';

			$ids2=array();

					//array_push($ids2, $res['fcm_id']);
array_push($ids2,"emlHxxZ0Ghg:APA91bHaZLJ-IMiWh1G8VVXRTyzFXt7tEXpespf9gZAxytkJ8XhQUCsHl-UUVD8YQgnDhjmBeaKFcLLrZyu46rLIjFBdzgfECfLIJmeSqa35KvORqpwPDnpU7lmhODAGX2Hw430gB06M");
			define( 'API_ACCESS_KEY', 'AIzaSyCH5ekZEPAxTP8rwspIowgSfe-CixC_7Pc' );

			$headers = array
			(
				'Authorization: key=' . API_ACCESS_KEY,	
				'Content-Type: application/json'
			);
			$data=array('data'=>array('title'=>"Enquiry",'message'=>" just enquired for training.",'is_background'=>false,'payload'=>array('dd'=>'dd'),'image'=>""));

			$body=array('registration_ids' => $ids2, 'data' => $data);

				$ch = curl_init();
				curl_setopt( $ch,CURLOPT_URL, 'https://android.googleapis.com/gcm/send' );
				curl_setopt( $ch,CURLOPT_POST, true );
				curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
				curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
				curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
				curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode($body) );
				$result = curl_exec($ch );

				curl_close( $ch );
				echo $result;
	 		 	

?>