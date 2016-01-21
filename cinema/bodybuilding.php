<html>
<body>
<?php
$con=mysqli_connect("localhost","root","","my_db");
if(mysqli_connect_errno())
{
echo "FAILED TO CONNECT:".mysqli_connect_error();
}
$sql="CREATE TABLE Bodybuilding(Firstname CHAR(30),Lastname CHAR(30),Username CHAR(30),Password CHAR(30),Age INT,Sex CHAR(30),Weight INT,Bmi INT,Phonenumber INT,Emailid CHAR(30))";
if(mysqli_query($con,$sql))
{
echo "TABLE Bodybuilding created successfully";
}
else
{
echo "ERROR CREATING TABLE:".mysqli_error($con);
}
?>