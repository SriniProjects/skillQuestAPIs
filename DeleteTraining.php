<?php
include 'dbconnection.php';
$id=$_GET['training_id'];
//$id='94';
$q="delete from trainings where id='$id'";
mysqli_query($mainConnect,$q);

echo json_encode(array('error'=>false,'message'=>'success'));

?>