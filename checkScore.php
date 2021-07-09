<?php
/*
	Clayton Bradford
	CBradfo8 - 85565
	CS380 - Spring 2021
	Final Project
	checkScore.php
*/
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
session_start();
$name = filter_input(INPUT_POST, 'name');

if($name == NULL)
{
	$error = "Please Enter a Name!";
	include('highScore.php');
}

else
{
	require_once('database.php');
	
	$score = 0;
	
	if(mysqli_connect_errno())
		echo "Failure connecting with MySQL: " . mysqli_connect_error();
		
	$name = $_POST['name'];
	$score = $_SESSION['$total_points'] ?? "";
	
	mysqli_query($link, "INSERT INTO scores (ID, name, score)
		VALUES ('null', '$name', '$score')");
		
	mysqli_close($link);
	
	include('highScore.php');	
}
?>