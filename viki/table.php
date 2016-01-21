<html>
<?php
$con=mysqli_connect("127.0.0.1","peter","","test");
if (mysqli_connect_errno($con))
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

$sql="CREATE TABLE myacc(FirstName CHAR(30), LastName CHAR(30),UserName CHAR(30),Gender CHAR(15),ContactNumber CHAR(15),Password CHAR(10),EmailID CHAR(30),Address CHAR(30))";
if (mysqli_query($con,$sql))
  {
  echo "TABLE mypro created successfully";
  }
else
  {
  echo "Error creating table: " . mysqli_error($con);
  }
?>
</html>