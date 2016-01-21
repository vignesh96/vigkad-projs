<html>
<body>
<?php
$con=mysqli_connect("localhost","root","");
if(mysqli_connect_errno())
{
echo "FAILED TO CONNECT:".mysqli_connect_error();
}
$sql="CREATE DATABASE my_db";
if(mysqli_query($con,$sql))
{
echo "DATABASE my_db created successfully";
}
else
{
echo "ERROR CREATING DATABASE:".mysqli_error($con);
}
?>