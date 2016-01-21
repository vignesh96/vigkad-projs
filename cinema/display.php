<html>
<body bgcolor="red"><marquee>
<h1 style="font-size:65px">DISPLAYING INFORMATION</h1></marquee>
<?php
$u=$_POST['uname'];
$p=$_POST['pwd'];
$con=mysqli_connect("localhost","root","","my_db");
if(mysqli_connect_errno())
{
	echo "Failed to connect to MySQL:".mysqli_connect_error();
}
$result=mysqli_query($con,"SELECT*FROM Bodybuilding WHERE Username='$u' AND Password='$p' ");
while($row=mysqli_fetch_array($result))
{
	echo "FIRST NAME:&nbsp;&nbsp;&nbsp;".$row['Firstname']."<br>";
	echo "LAST NAME:&nbsp;&nbsp;&nbsp;&nbsp;".$row['Lastname']."<br>";
	echo "USER NAME:&nbsp;&nbsp;&nbsp;&nbsp;".$row['Username']."<br>";
	echo "PASSWORD:&nbsp;&nbsp;&nbsp;&nbsp;".$row['Password']."<br>";
	echo "AGE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$row['Age']."<br>";
	
	echo "PHONE NO:&nbsp;&nbsp;&nbsp;".$row['Phonenumber']."<br>";
	echo "EMAIL ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$row['Emailid']."<br>";
}
mysqli_close($con);
?>
</body>
</html>