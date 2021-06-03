
<?php
require('vendor/autoload.php');
$con=mysqli_connect('localhost','root','','sample');
$res=mysqli_query($con,"select * from tbl_users");


if(mysqli_num_rows($res)>0){
	$html='<table>';
	$html.='<tr><th>   Seller Details   </th></tr>';
	
	$html.='<tr><td>Username</td>  <td>E-mail</td>  <td>Registered Date / Time</td>';
		while($row=mysqli_fetch_assoc($res)){
			$html.='<tr><td>'.$row['username'].'</td><td>'.$row['email'].'</td><td>'.$row['reg_date'].'</td></tr>';
		}
	$html.='</table>';
}else{
	$html="Data not found";
}
$mpdf=new \Mpdf\Mpdf();
$mpdf->WriteHTML($html);
$file='media/'.time().'.pdf';
$mpdf->output($file,'I');
//D
//I
//F
//S
?>