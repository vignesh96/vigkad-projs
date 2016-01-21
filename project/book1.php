<html>
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
<a href="book.php" style="hover: yellow;visited: lightblue"> Book Shows </a>&nbsp&nbsp&nbsp
<a href="movies.php" style="hover: yellow;visited: lightblue"> Movies Running </a>&nbsp&nbsp&nbsp
<a href="pass.php" style="hover: yellow;visited: lightblue"> Password Changes </a>&nbsp&nbsp&nbsp
<a href="blog.html" style="hover: yellow;visited: lightblue"> Blogs </a>&nbsp&nbsp&nbsp
<a href="show1.php" style="hover: yellow;visited: lightblue"> Show Timings </a>&nbsp&nbsp&nbsp
</p>
</font>
</div>
<div id="content" style="background-color: palegreen;width: 1300px;float:right">
<?php
	$u=$_POST['user'];
	$m=$_POST['movie'];
	$multi=$_POST['multi'];
	$multi1=$_POST['multi1'];
	$multi2=$_POST['multi2'];
	$d=$_POST['date'];
	$t=$_POST['time'];
	$i=1;
	if($u=="")
	{
		echo "UserName to be filled";
		$i=0;
	}
	if($d=="")
	{
		echo "Date to be filled";
		$i=0;
	}
	if($t=="")
	{
		echo "Time to be filled";
		$i=0;
	}
	
	if($m=="")
	{
		echo "Movie to be booked";
		$i=0;
	}
	if($multi=="")
	{
		$multi=0;
	}
	if($multi1=="")
	{
		$multi1=0;
	}
	if($multi2=="")
	{
		$multi2=0;
	}	
	if($i==1)
	{
		echo "<h2>"."<p>"."You have successfully booked your seats"."</p>"."</h2>";
		$con=mysqli_connect("127.0.0.1","peter","","test");
		if (mysqli_connect_errno($con))
  		{
  			echo "Failed to connect to MySQL: " . mysqli_connect_error();
  		}	 	
		mysqli_query($con,"INSERT INTO myshow2(UserName,Timings,Date,Movie,Multi,Multi1,Multi2)"."VALUES ('$u','$t','$d','$m','$multi','$multi1','$multi2') ");
	}
?>
<form action="book2.php" method="post">
<center><font style="font-size:30px;font-family:Cooper;color:red">UserName:</font><input type="text" name="user"><br>
<font style="font-size:30px;font-family:Cooper;color:red">Date:</font><input type="text" name="date"><br>
<input type="submit" value="View"></center>
</div>
</body>
</html>