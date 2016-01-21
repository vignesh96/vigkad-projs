
<html>
<?php
	$from=$_POST['from'];
	$msg=$_POST['msg'];
	$i=1;
	if($from=="")
	{
		echo "From to be filled";
		$i=0;
	}
	if($msg=="")
	{
		echo "Message to be filled";
		$i=0;
	}
	if($i==1)
	{
	$con=mysqli_connect("127.0.0.1","peter","","test");

	if (mysqli_connect_errno($con))
	  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  	  }

	mysqli_query($con,"INSERT INTO blogf1 (FromWhom,Message)".
	"VALUES ('$from','$msg')");
	}
?>
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
<a href="blog.php" style="hover: yellow;visited: lightblue"> Blogs </a>&nbsp&nbsp&nbsp
<a href="show1.php" style="hover: yellow;visited: lightblue"> Show Timings </a>&nbsp&nbsp&nbsp
</p>
</font>
</div>
<div id="menu" style="float:left">

</div> 
<div id="content" style="background-color: palegreen;width: 1300px;float:right">
<?php
	
	$con = mysqli_connect("127.0.0.1","root","","test");
	if (mysqli_connect_errno($con))
  	{
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  	}
	
	$result1 = mysqli_query($con,"SELECT * FROM blogf1");

while($row = mysqli_fetch_array($result1))
{
 	echo "<p>"."<h2>"."User Name:". $row['FromWhom'];  
 	echo "<h2>"."Message:". $row['Message']; 
	echo "<br>"."<br>"."<br>"."<br>"; 
	echo "</h2>";
}
?>
</div>
</body>
</html>
