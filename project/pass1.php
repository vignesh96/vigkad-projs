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
	$n=$_POST['new'];
	$p=$_POST['pass'];
	$u=$_POST['user'];
$con=mysqli_connect("127.0.0.1","peter","","test");

if (mysqli_connect_errno())
  {
 	 echo "Failed to connect to MySQL:". mysqli_connect_error();
  }

mysqli_query($con,"UPDATE mytab SET Password='$n' WHERE UserName='$u' AND Password='$p'");
echo "<h2>"."Updated Successfully"."</h2>";
mysqli_close($con);
?>
</div>
</body>
</html>