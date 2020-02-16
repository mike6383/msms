<?php
require_once("includes/config.php");
<<<<<<< HEAD
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
=======
if(!empty($_POST["email"])) {
	$email= $_POST["email"];

		$result =mysqli_query($con,"SELECT userEmail FROM users WHERE userEmail='$email'");
>>>>>>> ed05862d30c964b823144eecac60dafebef044d0
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Phone already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{

<<<<<<< HEAD

=======
	echo "<span style='color:green'> Email available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}
if(!empty($_POST["contactNo"])) {
	$contactNo= $_POST["contactNo"];

		$result =mysqli_query($con,"SELECT usercontactNo FROM users WHERE usercontactNo='$contactNo'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Email already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{

	echo "<span style='color:green'> Email available for Registration .</span>";
>>>>>>> ed05862d30c964b823144eecac60dafebef044d0
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
