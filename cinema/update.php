<html>
<body bgcolor="papayawhip">
<?php
$p=$_POST['fname'];
$a=$_POST['nlname'];
$q=$_POST['lname'];
$r=$_POST['uname'];
$s=$_POST['pwd'];
$t=$_POST['age'];
$u=$_POST['phno'];
$v=$_POST['email'];
$con=mysqli_connect("localhost","root","","my_db");
if(mysqli_connect_errno())
{
echo "FAILED TO CONNECT:".mysqli_connect_error();
}
mysqli_query($con,"UPDATE Bodybuilding SET Firstname='$p',newLastname='$a',Username='$r',Password='$s',Age='$t',Phonenumber='$u',Emailid='$v' WHERE Lastname='$q'");
echo "UPDATED SUCCESSFULLY";
mysqli_close($con);
?>
</html>
</body>