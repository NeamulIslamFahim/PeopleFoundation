<?php
session_start();

$con = mysqli_connect('localhost','root','');

mysqli_select_db($con,'foundationdb');

$name = $_POST['username'];
$pass = $_POST['password'];

$s = "select * from users where username = '$name' && password = '$pass'";

$result = mysqli_query($con,$s);
$num = mysqli_num_rows($result);

if((empty($_POST['username'])) || (empty($_POST['password']))) {
    echo '<script>alert("Required fields are empty")</script>';
}
else if($num==1) {
    $_SESSION['username'] = $name;
    header('location:LoginHome.php');
}else{
    header('location:loginpage.php');
}
?>