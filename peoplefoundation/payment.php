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
$event_name = $_POST['Event'];
$username = $_POST['username'];
$contact = $_POST['contact'];
$amount = $_POST['amount'];

$sql = "INSERT INTO live_event (event_name, l_username, contact,l_amount)
VALUES ('$event_name', '$username', '$contact','$amount')";
$result = $conn->query($sql);

if((empty($_POST['Event'])) || (empty($_POST['username'])) || (empty($_POST['contact'])) || (empty($_POST['amount']))) {
    echo '<script>alert("Required field empty") + windown.onload(Login.html)</script>';
}
else if ($result === TRUE) {
    echo '<script>alert("Payment done") + windows.onload("LoginHome.php")</script>';
}
else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>