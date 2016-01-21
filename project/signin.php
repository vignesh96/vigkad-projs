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
<div id="menu" style="float:left">

</div> 
<div id="content" style="background-color: palegreen;width: 1300px;float:right">
<p align="right"><a href="home.php"> Logout </a>
<?php
	
	$u=$_POST['uname'];
	$p=$_POST['pass'];
	$i=0;
	$con=mysqli_connect("127.0.0.1","peter","","test");
	if(mysqli_errno($con))
	{
		echo "Error creating connection".mysqli_error();
	}
	$sql=mysqli_query($con,"SELECT*FROM mytab WHERE UserName='$u' AND Password='$p'");
	while($row=mysqli_fetch_array($sql))
	{
		echo "<h2>"."FirstName:"."</h2>".$row['FirstName'];
		echo "<h2>"."LastName:"."</h2>".$row['LastName'];
		echo "<h2>"."UserName:"."</h2>".$row['UserName'];
		echo "<h2>"."Email-ID:"."</h2>".$row['EmailID'];
		echo "<h2>"."ContactNumber:"."</h2>".$row['ContactNumber'];
		$i=1;
	}
	if($i==0)
	{
		echo "<center>"."<h2>"."Access Denied!!"."</h2>"."</center>";
	}
	
?>

</div>
</body>
</html>