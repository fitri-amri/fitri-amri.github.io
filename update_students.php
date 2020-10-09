<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$id=$_POST['id'];
$student_id=$_POST['id'];
$student_no=$_POST['student_no'];
$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$course=$_POST['course'];
$term=$_POST['term'];
$address=$_POST['address'];
$fees=$_POST['fees'];
$muet=$_POST['muet'];
$gender=$_POST['gender'];
$contact=$_POST['contact'];
$password=$_POST['password'];
$year_level = $_POST['year_level'];
$status = $_POST['status'];
$icnumber = $_POST['icnumber'];

mysql_query("update students set student_no='$student_no',firstname='$firstname',lastname='$lastname',icnumber='$icnumber', password='$password',muet = '$muet', contact = '$contact', gender = '$gender',address = '$address', fees = '$fees', year_level = '$year_level',course = '$course' , term = '$term' , student_status = '$status' where student_id='$id'")or die(mysql_error());
								
								
header('location:dasboard.php');
}
?>	