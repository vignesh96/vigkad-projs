<?php

?>

<html>
<head>
<title>Welcome to Ganesh Travels</title>



</head>
<body background="index.php_files/bb_bg.jpg">

<table align="center" width="778">
  <!-- head str -->
  <tbody>
  <tr>
	<td>
				
		<?php
	include("banner.php");
	?>	
	</td>
</tr>
<!-- head end -->

<!-- center str -->
<tr><td><table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr> 
          <!-- lhs str -->
          <!-- lhs end -->
          <!-- mid str -->
          <td align="center" height="" valign="top" width="580">

<table border="0" cellpadding="0" cellspacing="6" align="left" style="width: 769px" >
<tbody><tr>
                <td valign="top" style="width: 49%" >
				
<?php

if(isset($_SESSION['meuser']))
{
	echo "You have already logged in...  <a href='main.php'>Click here to Admin page</a> ";
}
else
{
?>


<table border="0" cellpadding="0" cellspacing="0" style="width: 165%" >
                    <tbody>
                    <tr>
                      <td bgcolor="white" >
						<div >
							<br>
						<span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login Page<br>
						<br>
						</div>
						<form method="post" action="main.php">
<div  >
&nbsp;UserName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="un" type="text" size="20"><br>
						<br>
&nbsp;PassWord&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="pass" type="password" size="20"><br>
						<br>
						
							
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input name="login" type="submit" value="Click here to Login">
						<br>
<br>
						</div>
						</form>
						</strong></span> </td>
                    </tr>
                  </tbody></table></td>
<?php
}
     ?>      
			 </tr>
            </tbody>
			

			</table> 

			</td>
          <!-- mid end -->
        </tr>
      </tbody></table></td></tr>
<!-- center end -->



<!-- footer str -->
<tr>
	<td background="index.php_files/foot_bg.jpg" height="47" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
			
          <td background="index.php_files/foot_bg.jpg" height="47">
			&nbsp;&nbsp;</td>
		

		  <td align="right" background="index.php_files/foot_bg.jpg" height="47">
            Copyrights Ganesh Travel, 2009&nbsp;&nbsp;</td>
		</tr>
	</tbody></table>
	</td>
</tr>
<!-- footer end -->


</tbody>
</table>


</h1>


</body>
</html>
<?php
mysql_close($con);
?>