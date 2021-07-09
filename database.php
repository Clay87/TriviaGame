<?php
/*
	Clayton Bradford
	CBradfo8 - 85565
	CS380 - Spring 2021
	Final Project
	database.php
*/
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

$server = "localhost";
$user = "root";
$password = "";
$db = "final";
$link = mysqli_connect($server, $user, $password, $db);
?>