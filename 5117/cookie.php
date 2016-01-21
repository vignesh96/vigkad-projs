<html>
<body>
<?php
session_start();
// store session data
$_SESSION['views']=1;
if(isset($_SESSION['views']))
$_SESSION['views']=$_SESSION['views']+1;
else
$_SESSION['views']=1;
echo "Views=". $_SESSION['views'];
?>

</body>
</html> 