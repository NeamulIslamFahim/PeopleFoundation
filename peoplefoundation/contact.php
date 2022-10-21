<?php
	$name = $_POST['name'];
	$visitor_email = $_POST['email'];
	$message = $_POST['message'];
	
	$from = 'neamulislamfahim@gmail.com';
	$subject = "New Form Submission";
	$body = "User Name: $name.\n".
		"User Email: $visitor_email.\n".
		"User message: $message.\n";
	
	
	$to = "niamul.fahim@gmail.com';
	$headers = "From: $from\r\n";
	$headers .= "Reply-To: $visitor_email\r\n";
	mail($to, $subject,$body,$headers);
	header("Location: Login.html");
?>