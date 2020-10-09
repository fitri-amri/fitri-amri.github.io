<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$student_no=$_POST['student_no'];
$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$term=$_POST['term'];
$address=$_POST['address'];
$gender=$_POST['gender'];
$course=$_POST['course'];
$muet=$_POST['muet'];
$fees=$_POST['fees'];
$contact=$_POST['contact'];
$icnumber=$_POST['icnumber'];


$year_level = $_POST['year_level'];
$status = $_POST['status'];


 /*        $image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
                                $image_name = addslashes($_FILES['image']['name']);
                                $image_size = getimagesize($_FILES['image']['tmp_name']);

                                move_uploaded_file($_FILES["image"]["tmp_name"], "upload/" . $_FILES["image"]["name"]);
                                $location = "upload/" . $_FILES["image"]["name"]; */


								
mysql_query("insert into students (firstname,lastname,icnumber,gender,course,address,contact,muet,fees,student_no,year_level,term,student_status)
 values('$firstname','$lastname','$icnumber','$gender','$course','$address','$contact','$muet','$fees','$student_no','$year_level','$term','$status')")or die(mysql_error());
header('location:students.php');
}
?>	