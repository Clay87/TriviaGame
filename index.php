<?php
/*
	Clayton Bradford
	CBradfo8 - 85565
	CS380 - Spring 2021
	Final Project
	index.php
*/

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
session_start();
require_once('database.php');

$gradeName = "";
//place holder for grades 1-5
$grade = 0;
//Grade level - ie 1st Grade
$gradeLevel = '';
//place holder for categories 1-5
$category = 0;
//Type of category - Science, math, etc
$catType = '';
//user response
$input1 = $input2 = $input3 = $input4 = $input5 = "";
//accumulated points 
$points = 0;
?>

<!DOCTYPE html>
<html lang = "en">
<head>
	<title>Smarter Than Game</title>
	<link rel="stylesheet" type="text/css" href="index.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Reggae+One&display=swap" rel="stylesheet"> 
</head>

<body>
	<div class = "body">
	<form action = "#" method = "post">
	<h1>Are You Smarter Than a Child?</h1>
	<p id = "intro">Test your memory and let's see if you can out smart a grade schooler!<br>
	Select a Grade along with a Category from the dropdown and try to<br>answer 5 easy questions a 5th grader would know.</p>
	
	<div class = "dropdown">
	<label for = "grade">Grade Level:</label>
	<select name = "grade" id = "grade">
	<option disabled selected value>--- Select a Grade ---</option>
		<option value = "1">1st Grade</option>
		<option value = "2">2nd Grade</option>
		<option value = "3">3rd Grade</option>
		<option value = "4">4th Grade</option>
		<option value = "5">5th Grade</option>
	</select>
	
	<label for = "category">Subject:</label>
	<select name = "category" id = "category">
	<option disabled selected value>--- Select a Category ---</option>
		<option value = "1">English/Literature</option>
		<option value = "2">History</option>
		<option value = "3">Geography</option>
		<option value = "4">Science</option>
		<option value = "5">Maths</option>
	</select>
	
	<input type = "submit" value = "submit" id = "submit">
	</div>
<?php
	if(isset($_POST['grade']))
		$grade = $_POST['grade'];
	
	if(isset($_POST['category']))
		$category = $_POST['category'];
	
	$points = $grade;
	
	if($grade == 1)
		$gradeName = "1st Grade";

	if($grade == 2)
		$gradeName = "2nd Grade";

	if($grade == 3)
		$gradeName = "3rd Grade";

	if($grade == 4)
		$gradeName = "4th Grade";

	if($grade == 5)
		$gradeName = "5th Grade";

	if($category == 1)
		$catType = "English/Literature";

	if($category == 2)
		$catType = "History";

	if($category == 3)
		$catType = "Geography";

	if($category == 4)
		$catType = "Science";
	
	if($category == 5)
		$catType = "Maths";

	$_SESSION['$gradeLevel'] = $gradeLevel;
	$_SESSION['$catType'] = $catType;
?>
	
	<h2>You Chose: <?php echo $gradeName ?> - <?php echo $catType ?><br>
	These Questions are worth: <?php echo $points ?> points.</h2>
	
	<fieldset>
		<legend>Questions:</legend>
	<?php 
		$queryQues = "select * from questions where catID = '$category' AND gradeLevel = '$grade'";
		$question = mysqli_query($link, $queryQues);
		$i = 1;
		
		while($row = $question->fetch_assoc())
		{
			echo $i . "} " . $row['question']."<br>";
			$i++;
		}
		
		$_SESSION['grade'] = $grade;
		$_SESSION['category'] = $category;
	?>
	</fieldset>
	</form>
	<br>
	
	<div class = "answer">
	<form action = "results.php" method = "post">
	<h3>Your Response:</h3>
	
	<div class = "response1">
		<label for = "input1">1)</label>
		<input type = "text" name = "input1" id = "input1" placeholder = "Question 1">
		
		<label for = "input2">2)</label>
		<input type = "text" name = "input2" id = "input2" placeholder = "Question 2">
		
		<label for = "input3">3)</label> 
		<input type = "text" name = "input3" id = "input3" placeholder = "Question 3"><br>
	</div>
	
	<div class = "response2">
		<label for = "input4">4)</label>
		<input type = "text" name = "input4" id = "input4" placeholder = "Question 4">
		
		<label for = "input5">5)</label> 
		<input type = "text" name = "input5" id = "input5" placeholder = "Question 5"><br>
	</div>
	
	<input type = "submit" value = "Check" id = "checkResponse"><br>
	</form>
	</div>
	</div>
</body>
</html>