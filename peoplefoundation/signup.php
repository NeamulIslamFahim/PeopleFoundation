<?php
session_start();

$con = mysqli_connect('localhost','root','');
mysqli_select_db($con,'foundationdb');

$firstname = $_POST['fname'];
$lastname = $_POST['lname'];
$name = $_POST['username'];
$pass = $_POST['password'];
$contact = $_POST['contact'];

$s = "select * from users where username = '$name'";

$result = mysqli_query($con,$s);
$num = mysqli_num_rows($result);

if((empty($_POST['fname'])) || (empty($_POST['lname'])) || (empty($_POST['username'])) || (empty($_POST['password'])) || 
(empty($_POST['contact']))) {
    echo '<script>alert("Required fields are empty")</script>';
}
else if($num ==1) {
    echo '<script>alert("Username already taken")</script>';
}
else{
    $reg = "insert into users(first_name,last_name,username,password,contact) values('$firstname','$lastname','$name','$pass','$contact')";
    mysqli_query($con,$reg);
    echo '<script>alert("You are signed in")</script>';
}
?>