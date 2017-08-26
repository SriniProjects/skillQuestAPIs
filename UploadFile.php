<?php
include 'dbconnection.php';
		//$mobile=$_POST['mobile'];
		$target_path='trainingImages/';
 		$response = array(array());
 		$server_ip = gethostbyname(gethostname());
 		$file_upload_url = 'http://' . $server_ip . '/' . 'AndroidFileUpload' . '/' . $target_path;

		if (isset($_FILES['file']['name'])) {
    		$target_path = $target_path . basename($_FILES['file']['name']);
 			$response[0]['file_name'] = basename($_FILES['file']['name']);
    		//$target_path = $target_path .$mobile;
 			//$response[0]['file_name'] = $mobile;
    
    		try {
      			if (!move_uploaded_file($_FILES['file']['tmp_name'], $target_path)) {
           		$response[0]['error'] = true;
            	$response[0]['message'] = 'Could not move the file!';
        	}
	        $response[0]['message'] = 'File uploaded successfully!';
    	    $response[0]['error'] = false;
		
    	    $response[0]['file_path'] = $file_upload_url . basename($_FILES['file']['name']);
    		} 
			catch (Exception $e) {
    		    $response[0]['error'] = true;
        		$response[0]['message'] = $e->getMessage();
    		}
		}
		else {
    		$response[0]['error'] = true;
    		$response[0]['message'] = 'Not received any file!F';
		}
		echo json_encode($response);
	
?>