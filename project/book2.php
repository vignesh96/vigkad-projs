<html>
<head>
<center><img src="logo.png" width="700px" height="100px"></center>
</head>
<body bgcolor="papayawhip">
<h2 style="color: red;font-family: Chiller;font-size: 40px"><center> Ticket Booking Made Easy
Inassociation with VSV Cinemas</center></h2>
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
<?php
	
	$u=$_POST['user'];
	$d=$_POST['date'];
	$con=mysqli_connect("127.0.0.1","peter","","test");
	if(mysqli_errno($con))
	{
		echo "Error creating connection".mysqli_error();
	}
	$sql=mysqli_query($con,"SELECT*FROM myshow2 WHERE UserName='$u' AND Date='$d' ");
	while($row=mysqli_fetch_array($sql))
	{
		echo "<center>"."<h2>"."UserName:".$row['UserName']."</h2>";
		echo "<h2>"."Timings:".$row['Timings']."</h2>";
		echo "<h2>"."Date:".$row['Date']."</h2>";
		echo "<h2>"."Movie:".$row['Movie']."</h2>";		
		echo "<h2>"."Multi:".$row['Multi']."</h2>";
		echo "<h2>"."Multi1:".$row['Multi1']."</h2>";
		echo "<h2>"."Multi2:".$row['Multi2']."</h2>"."</center>"."<br>"."<br>";	
	}
?>
<form>
<center><input type="submit" value="Print"></center>
<center><input type="submit" value="Convert to PDF Format"></center>
</form>
</div>
</body>
</html>