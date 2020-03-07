<?php
// session_start();
// include('include/config.php');



$sql="SELECT count(*) as complaints,category FROM `tblcomplaints` join complaintremark on complaintremark.complaintNumber=tblcomplaints.complaintNumber where complaintremark.status='closed' GROUP BY category";

$total_query="Select count(*) as total FROM tblcomplaints";
$total=mysqli_fetch_assoc(mysqli_query($con,$total_query))['total'];

$result=mysqli_query($con,$sql);

$results=[];
while($row=mysqli_fetch_assoc($result)) {
 $id=$row['category'];
 $sql="Select departmentName  from department WHERE id='$id'";
 $result1=mysqli_fetch_assoc(mysqli_query($con,$sql))['departmentName'];
 //print_r($result);
$row['category']=$result1;
$row['percent']=round(($row['complaints']/$total)*100,2);

$results[]=$row;
}

?>
