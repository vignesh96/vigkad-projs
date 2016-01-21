
<?php

echo $stat= $_SESSION['busid'];
echo $bid= 1001;

$sqlres = mysql_query("SELECT * FROM  seat WHERE busid='$bid'  ");
$ss=0;
	while($row = mysql_fetch_array($sqlres))
  	{
  		$status = $row[status];
   		$seat   = $row[seatno];
   		if($status=="Reserved")
   		{
   		$status ="blue";
   		$set[$seat]= $status;
   		}
   		if($status=="Booked")
   		{
   		$status ="red";
   		$set[$seat]= $status;
   		}
  	}
?>

<table border="0" cellpadding="0" cellspacing="6" width="98%" style="height: 601px">
<tbody><tr>
                <td valign="top" width="50%" style="height: 170px"  >
<table border="0" cellpadding="0" cellspacing="0" width="100%" style="height: 618px">
                    <tbody>
                    <tr>
                      <td  style="height: 33px"   ><strong><u>2 + 1 
						Seater</u></strong></td>
                    </tr>
                    <tr>
                      <td >
						<div align="center">
						<table style="width: 95%; height: 481px" class="style20" bordercolor="#000000" cellspacing="1" border="2">
							<tbody>
							<tr>
								<td style="width: 150px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[1];?>">
								<strong>&nbsp;1&nbsp;<input type="checkbox" name="seat[]" value="1"><?php $status;?>
								</strong></td>
							<td rowspan="10" bordercolor="#000000" style="width: 137px" >
							&nbsp;</td>
							<td bordercolor="#000000" style="width: 128px" bgcolor="<?php echo $set[2];?>">
							<strong>&nbsp;2&nbsp;&nbsp; <input type="checkbox" name="seat[]" value="2"></strong></td>
							<td style="width: 130px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[3];?>" >
							<strong>&nbsp;3 <input type="checkbox" name="seat[]" value="3"></strong></td>
							</tr>
							<tr>
								<td style="width: 150px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[6];?>" >
								<strong>&nbsp;6<input type="checkbox" name="seat[]" value="6"></strong></td>
								<td bordercolor="#000000" style="width: 128px" bgcolor="<?php echo $set[5];?>" >
								<strong>&nbsp;5<input type="checkbox" name="seat[]" value="5"></strong></td>
								<td style="width: 130px; height: 40px" bordercolor="#000000"   bgcolor="<?php echo $set[4];?>"   >
								<strong>&nbsp;4<input type="checkbox" name="seat[]" value="4"></strong></td>
							</tr>
							<tr>
								<td style="width: 150px; height: 40px" bordercolor="#000000"  bgcolor="<?php echo $set[7];?>" >
								<strong>&nbsp;7 <input type="checkbox" name="seat[]" value="7"></strong></td>
								<td bordercolor="#000000" style="width: 128px"  bgcolor="<?php echo $set[8];?>"   >
								<strong>&nbsp;8 <input type="checkbox" name="seat[]" value="8"></strong></td>
								<td style="width: 130px; height: 40px" bordercolor="#000000"  bgcolor="<?php echo $set[9];?>"    >
								<strong>&nbsp;9 <input type="checkbox" name="seat[]" value="9"></strong></td>
							</tr>
							<tr>
								<td style="width: 150px; height: 40px" bordercolor="#000000"  bgcolor="<?php echo $set[12];?>"    >
								<strong>&nbsp;12 <input type="checkbox" name="seat[]" value="12"></strong></td>
								<td bordercolor="#000000" style="width: 128px"  bgcolor="<?php echo $set[11];?>" >
								<strong>&nbsp;11 <input type="checkbox" name="seat[]" value="11"></strong></td>
								<td style="width: 130px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[10];?>" >
								<strong>&nbsp;10 <input type="checkbox" name="seat[]" value="10"></strong></td>
							</tr>
							<tr>
								<td style="width: 150px; height: 40px" bordercolor="#000000"  bgcolor="<?php echo $set[13];?>" >
								<strong>&nbsp;13 <input type="checkbox" name="seat[]" value="13"></strong></td>
								<td bordercolor="#000000" style="width: 128px" bgcolor="<?php echo $set[14];?>" >
								<strong>&nbsp;14 <input type="checkbox" name="seat[]" value="14"></strong></td>
								<td style="width: 130px; height: 40px" bordercolor="#000000"   bgcolor="<?php echo $set[15];?>"   >
								<strong>&nbsp;15 <input type="checkbox" name="seat[]" value="15"></strong></td>
							</tr>
							<tr>
								<td style="width: 150px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[16];?>"  >
								<strong>&nbsp;16 <input type="checkbox" name="seat[]" value="16"></strong></td>
								<td bordercolor="#000000" style="width: 128px" bgcolor="<?php echo $set[17];?>" >
								<strong>&nbsp;17 <input type="checkbox"  name="seat[]" value="17"></strong></td>
								<td style="width: 130px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[18];?>" >
								<strong>&nbsp;18 <input type="checkbox"  name="seat[]" value="18"></strong></td>
							</tr>
							<tr>
								<td style="width: 150px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[19];?>" >
								<strong>&nbsp;19 <input type="checkbox" name="seat[]" value="19"></strong></td>
								<td bordercolor="#000000" style="width: 128px" bgcolor="<?php echo $set[20];?>" >
								<strong>&nbsp;20 <input type="checkbox" name="seat[]" value="20"></strong></td>
								<td style="width: 130px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[21];?>" >
								<strong>&nbsp;21 <input type="checkbox" name="seat[]" value="21"></strong></td>
							</tr>
							<tr>
								<td style="width: 150px; height: 40px" bordercolor="#000000"  bgcolor="<?php echo $set[24];?>" >
								<strong>&nbsp;24 <input type="checkbox" name="seat[]" value="24"></strong></td>
								<td bordercolor="#000000" style="width: 128px"  bgcolor="<?php echo $set[23];?>"   >
								<strong>&nbsp;23 <input type="checkbox" name="seat[]" value="23"></strong></td>
								<td style="width: 130px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[22];?>" >
								<strong>&nbsp;22 <input type="checkbox" name="seat[]" value="22"></strong></td>
							</tr>
							<tr>
								<td style="width: 150px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[25];?>"  >
								<strong>&nbsp;25 <input type="checkbox" name="seat[]" value="25"></strong></td>
								<td bordercolor="#000000" style="width: 128px" bgcolor="<?php echo $set[26];?>" >
								<strong>&nbsp;26 <input type="checkbox" name="seat[]" value="26"></strong></td>
								<td style="width: 130px; height: 40px" bordercolor="#000000" bgcolor="<?php echo $set[27];?>" >
								<strong>&nbsp;27 <input type="checkbox" name="seat[]" value="27"></strong></td>
							</tr>
							<tr>
								<td style="width: 150px; height: 42px" bordercolor="#000000" bgcolor="<?php echo $set[30];?>"  >
								<strong>&nbsp;30 <input type="checkbox" name="seat[]" value="30"></strong></td>
								<td bordercolor="#000000" style="width: 128px; height: 42px" bgcolor="<?php echo $set[29];?>" >
								<strong>&nbsp;29 <input type="checkbox" name="seat[]" value="29"></strong></td>
								<td style="width: 130px; height: 42px" bordercolor="#000000" bgcolor="<?php echo $set[28];?>">
								<strong>&nbsp;28 <input type="checkbox" name="seat[]" value="28"></strong></td>
							</tr>
							<tr>
								<td style="width: 150px; height: 43px" bordercolor="#000000" bgcolor="<?php echo $set[31];?>">
								<strong>&nbsp;31 <input type="checkbox" name="seat[]" value="31"></strong></td>
								<td style="width: 137px; height: 43px" bordercolor="#000000" bgcolor="<?php echo $set[32];?>" >
								&nbsp;
								<strong>32 <input type="checkbox" name="seat[]" value="32"></strong></td>
								<td bordercolor="#000000" style="width: 128px; height: 43px;" bgcolor="<?php echo $set[33];?>"  >
								<strong>&nbsp;33 <input type="checkbox" name="seat[]" value="33"></strong></td>
								<td style="width: 130px; height: 43px" bordercolor="#000000" bgcolor="<?php echo $set[34];?>"  >
								<strong>&nbsp;34 <input type="checkbox" name="seat[]" value="34"></strong></td>
							</tr>
						</table>
						
                        </div>
						
												</td>
                    </tr>
                    
                  </tbody></table></td>
              </tr>
            </tbody></table> 

			

</body></html>