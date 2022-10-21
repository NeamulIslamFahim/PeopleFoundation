<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "foundationdb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$service_name = $_POST['service'];
$username = $_POST['username'];
$contact = $_POST['contact'];
$amount = $_POST['amount'];

$sql = "INSERT INTO services (service_name, s_username, contact,s_amount)
VALUES ('$service_name', '$username', '$contact','$amount')";
$result = $conn->query($sql);

if((empty($_POST['service'])) || (empty($_POST['username'])) || (empty($_POST['contact'])) || (empty($_POST['amount']))) {
    echo '<script>alert("Required field empty") + windown.onload(Login.html)</script>';
}
else if ($result === TRUE) {
    echo '<script>alert("Payment done") + windows.onload("LoginHome.html")</script>';
}
else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>