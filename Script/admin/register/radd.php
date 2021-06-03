
<?php
require('vendor/autoload.php');
$con=mysqli_connect('localhost','root','','sample');
$res=mysqli_query($con,"select * from tbl_ads");


if(mysqli_num_rows($res)>0){
	$html='<table>';
	$html.='<tr><th>   Registered Advertisement   </th></tr>';
	
	$html.='<tr><td>Title</td>  <td>Price</td>  <td>Date posted</td>';
		while($row=mysqli_fetch_assoc($res)){
			$html.='<tr><td>'.$row['title'].'</td><td>'.$row['price'].'</td><td>'.$row['date_posted'].'</td></tr>'.$row['price'].$row['date_posted'].'</td></tr>';
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