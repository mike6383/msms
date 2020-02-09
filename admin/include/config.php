<?php
define('DB_SERVER','localhost');
define('DB_USER','root1');
define('DB_PASS' ,'2018');
define('DB_NAME', 'cms');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>