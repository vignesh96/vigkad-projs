<?php
session_start();

$fp = fopen('users.txt', 'a+');
fwrite($fp, "\nname: " . $_GET["name"] . "\n");
fwrite($fp, "last name: " . $_GET["last_name"] . "\n");
fwrite($fp, "email: " . $_GET["email"] . "\n");

fclose($fp);
$_SESSION['registered']=1;
header( 'Location: http://myplace2272/save.php' ) ;
?>