<center><b>Abstract</b><br><br>
<?php
session_start();
$target_dir="abstract/";
$target_file=$target_dir.basename($_FILES["fileToUpload"]["name"]);
if(move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],$target_file))
{	
	
}
else
{
	echo"Error";
}
$id=$_SESSION["gid"];
$file=$_FILES["fileToUpload"]["name"];
$con=mysqli_connect("localhost","root","","project");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$sql="INSERT INTO `abstract` VALUES ('$id','$file')";
if (!mysqli_query($con,$sql))
{
$sql1="UPDATE `abstract` set name='$file' where gid='$id' ";
if (!mysqli_query($con,$sql1))
{
die("Unable to upload abstract");
}

}
?><br>
<center>Uploaded Succesfully
<br><br><br><a href=ghome.php>Home</a>