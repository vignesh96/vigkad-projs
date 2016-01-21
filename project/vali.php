<html>
<center>
<head>
<center><img src="logo.png" width="700px" height="100px"></center>
</head>
<body bgcolor="papayawhip">
<h2 style="color: red;font-family: Chiller;font-size: 40px"><center> Ticket Booking Made Easy</center>
Inassociation with VSV Cinemas</h2>
<div id="header"  style="background-color: violet;font-size: 40px;color: yellow;width:1500px">
<p align="center">
<a href="home.html" style="hover: yellow;visited: lightblue"> Home </a>&nbsp&nbsp&nbsp
<a href="signup.html" style="hover: yellow;visited: lightblue"> Register </a>&nbsp&nbsp&nbsp
<a href="signin.html" style="hover: yellow;visited: lightblue"> Login </a>&nbsp&nbsp&nbsp
<a href="show.php" style="hover: yellow;visited: lightblue"> Show Timings </a>&nbsp&nbsp&nbsp
</p>
</font>
</div>
<div id="menu" style="float:left">
<img src="shirt.jpg">
</div> 
<div id="content" style="background-color: palegreen;width: 1300px;float:right">
<?php
	$f=$_POST['fname'];
	$l=$_POST['lname'];
	$u=$_POST['uname'];
	$p=$_POST['pass'];
	$no=$_POST['no'];
	$email=$_POST['email'];
	$g=$_POST['gender'];
	$i=1;
	if($f=="")
	{
		echo "First name to be filled";
		$i=0;
 	}
	if($l=="")
	{
		echo "Last name to be filled";
		$i=0;
	}	
	if($u=="")
	{
		echo "User name to be filled";
		$i=0;
	}
	if($no=="")
	{
		echo "Contact number to be filled";
		$i=0;
	}
	else if(!is_numeric($no))
	{
		echo "Contact number to be filled";
		$i=0;
	}
	else if(strlen($no)<10)
	{
		echo "Number should be of 10 digits";
		$i=0;
	}
	if($p=="")
	{
		echo "Password to be entered";
		$i=0;
	}
	else if(strlen($p)<8)
	{
		echo "Password should have maximum 8 characters";
		$i=0;
	}
	if($email=="")
	{
		echo "Email to be filled";
		$i=0;
	}
	else if(!preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/",$email))
	{
		echo "Invalid email format";
		$i=0;
	}
	if($g=="")
	{
		echo "Gender to be filled";
		$i=0;
	}
	if($i==1)
	{
		echo "<h2>"."You have successfully Created your account";
		$con=mysqli_connect("127.0.0.1","peter","","test");
		if(mysqli_errno($con))
		{
			echo "Error creating connection".mysqli_error();
		}
		$sql=mysqli_query($con,"INSERT INTO mytab(FirstName,LastName,UserName,Gender,Password,ContactNumber,EmailID,Seats)" . "VALUES('$f','$l','$u','$g','$p','$no','$email','')");
	}
?>
</div>
</body>
</html>