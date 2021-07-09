<?php
/*
	Clayton Bradford
	CBradfo8 - 85565
	CS380 - Spring 2021
	Final Project
	highScore.php
*/
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
session_start();
require('database.php');

//holds the name of the person
$name = "";
//total points accumulated during the game
$total_points = 0;
$total_points = $_SESSION['$total_points'] ?? "";
//selects all the scores and orders them descendingly
$query = "SELECT * from scores ORDER BY score DESC";
$score = mysqli_query($link, $query);
$error = "";
?>

<!DOCTYPE html>
<html lang = "en">
<head>
	<title>Smarter than a Child Game</title>
	<link rel = "stylesheet" type = "text/css" href = "highScore.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Reggae+One&display=swap" rel="stylesheet"> 
</head>

<body>
	<div class = "body">
	<header>Can you Prove to be Smarter than A Child?</header>
	
	<h1>High Scores</h1>
	
	<table>
		<tr>
			<th>Name</th>
			<th>Score</th>
		</tr>
	
	<?php
	while($row = $score->fetch_assoc())
		echo "<tr><td>" . $row['Name'] . "</td><td>" . $row['Score'] . "</td></tr>";
	echo $error;
	?>
	</table><br>
	
	<form action = "CheckScore.php" method = "post">
		<p>Input your name for High Score</p><br>
		<input type = "text" placeholder = "Name" name = "name">
		<input type = "submit" value = "Enter" id = "enter"><br>
		<a href = "index.php" class = "button">Play Again?</a>
	</form>
</body>
</html>