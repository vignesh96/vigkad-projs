<html>
<?php
$con=mysqli_connect("127.0.0.1","peter","","test");

if (mysqli_connect_errno($con))
  {
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

$sql="CREATE TABLE blogf1(FromWhom CHAR(30),Message CHAR(30))";
if (mysqli_query($con,$sql))
  {
	  echo "Database  created successfully";
  }
else
  {
  	echo "Error creating database: " . mysqli_error($con);
  }
?>
</html>