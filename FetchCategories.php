<?php
include 'dbconnection.php';
$q="select id,category_name from categories";
$r=mysqli_query($mainConnect,$q) or die($mainConnect);
$cat_details=array();
$i=0;
while($res=mysqli_fetch_array($r)){
$cat_details['id'][$i]=$res['id'];
$cat_details['cat_name'][$i]=$res['category_name'];
$i++;
}
echo json_encode($cat_details);
?>