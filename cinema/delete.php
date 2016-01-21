<html>
<body bgcolor="gold">
<?php
$x=$_POST['lname'];
$con=mysqli_connect("localhost","root","","my_db");
if(mysqli_connect_errno())
{
	echo "failed to connect to mysql:".mysqli_connect_error();
}
mysqli_query($con,"DELETE FROM Bodybuilding WHERE Lastname='$x'");
echo "DELETED SUCCESSFULLY";
mysqli_close($con);
?>
</html>
</body>