<html>
<body bgcolor="lightblue">
<?php
$x=$_POST['fname'];
$y=$_POST['lname'];
$z=$_POST['uname'];
$a=$_POST['pwd'];
$b=$_POST['age'];

$f=$_POST['phno'];
$g=$_POST['email'];
if($x==""&&$y==""&&$z==""&&$a==""&&$b==""&&$c==""&&$d==""&&$e==""&&$f==""&&$g=="")
{
	echo "ALL THE FIELDS MUST BE FILLED OUT<br>";
}
if($x=="")
{
	echo "FIRST NAME MUST BE FILLED OUT<br>";
}
if($y=="")
{
	echo "LAST NAME MUST BE FILLED OUT<br>";
}
if($z=="")
{
	echo "USERNAME MUST BE FILLED OUT<br>";
}
if($a=="")
{
	echo "PASSWORD MUST BE FILLED OUT<br>";
}
if($b=="")
{
	echo "AGE MUST BE FILLED OUT<br>";
}
else if($b<15)
{
	echo "YOU ARE TOO YOUNG<br>";
}

if($f=="")
{
	echo "PH NO MUST BE FILLED OUT<br>";
}
else if(!is_numeric($f)||strlen($f)!=10)
{
	echo "INVALID PH NO<br>";
}
if($g=="")
{
	echo "EMAIL ID MUST BE FILLED OUT";
}


$con=mysqli_connect("localhost","root","","my_db");
if(mysqli_connect_errno())
{
echo "FAILED TO CONNECT:".mysqli_connect_error();
}
mysqli_query($con,"INSERT INTO Bodybuilding(Firstname,Lastname,Username,Password,Age,Phonenumber,Emailid)"."VALUES('$x','$y','$z','$a','$b','$f','$g')");
echo "ADDED SUCCESSFULLY";
mysqli_close($con);
?>
</body>
</html>