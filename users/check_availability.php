<?php
require_once("includes/config.php");
if(!empty($_POST["regno"])) {
	$regno= $_POST["regno"];

		$result =mysqli_query($con,"SELECT userRegNo FROM users WHERE userRegNo='$regno'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Regno already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{


 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}
//validate phone
if(!empty($_POST["phone"])) {
	$phone= $_POST["phone"];

		$result =mysqli_query($con,"SELECT contactNo FROM users WHERE contactNo='$phone'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Phone already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{


 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
