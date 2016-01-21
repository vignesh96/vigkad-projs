<html>
<?php
$to=$_POST['to'];
$from=$_POST['from'];
$msg=$_POST['msg'];
$con=mysqli_connect("127.0.0.1","peter","","test");

if (mysqli_connect_errno($con))
  {
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
mysqli_query($con,"INSERT INTO forum (ToWhom,FromWhom,Message)
VALUES ('$to','$from','$msg')");

?>
</html>
