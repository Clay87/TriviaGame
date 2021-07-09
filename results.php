<?php 
/* 
	Clayton Bradford
	CBradfo8 - 85565
	CS380 - Spring 2021
	Final Project
	results.php
*/

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
session_start();
require_once('database.php');

//error check
if(mysqli_connect_errno())
	echo "Unable to connect with MySQL: " . mysqli_connect_error();

//Questions correct
$total_correct = 0;
//Questions incorrect
$total_incorrect = 0;
//Points from correct responses
$points = 0;
//Questions 
$ques1 = $ques2 = $ques3 = $ques4 = $ques5 = "";

//links the data across the pages
$grade = $_SESSION['grade'];
$category = $_SESSION['category'];

//Checks answer
$input1 = filter_input(INPUT_POST, 'input1');
$input2 = filter_input(INPUT_POST, 'input2');
$input3 = filter_input(INPUT_POST, 'input3');
$input4 = filter_input(INPUT_POST, 'input4');
$input5 = filter_input(INPUT_POST, 'input5');

//IF the answer is left blank
if($input1 == NULL || $input2 == NULL || $input3 == NULL || $input4 == NULL || $input5 == NULL)
{
	$input1 = "Left Blank";
	$input2 = "Left Blank";
	$input3 = "Left Blank";
	$input4 = "Left Blank";
	$input5 = "Left Blank";
}

//Gets the question to store user's response
function retrieveQues($grade, $category, $start, &$ques1, &$ques2, &$ques3, &$ques4, &$ques5)
{
	$ques1 = $start;
	$ques2 = $start + 1;
	$ques3 = $start + 2;
	$ques4 = $start + 3;
	$ques5 = $start + 4;
}

//Pulls the questions from the DB
//First Category - ENGLISH/LITERATURE
//1st Grade English/Lit
if($grade == 1 && $category == 1)
	retrieveQues($grade, $category, 1, $ques1, $ques2, $ques3, $ques4, $ques5);

//2nd Grade English/Lit
if($grade == 2 && $category == 1)
	retrieveQues($grade, $category, 6, $ques1, $ques2, $ques3, $ques4, $ques5);

//3rd Grade English/Lit
if($grade == 3 && $category == 1)
	retrieveQues($grade, $category, 11, $ques1, $ques2, $ques3, $ques4, $ques5);

//4th Grade English/Lit
if($grade == 4 && $category == 1)
	retrieveQues($grade, $category, 16, $ques1, $ques2, $ques3, $ques4, $ques5);

//5th Grade English/Lit
if($grade == 5 && $category == 1)
	retrieveQues($grade, $category, 21, $ques1, $ques2, $ques3, $ques4, $ques5);

//Second Category - HISTORY
//1st Grade History
if($grade == 1 && $category == 2)
	retrieveQues($grade, $category, 26, $ques1, $ques2, $ques3, $ques4, $ques5);

//2nd Grade History
if($grade == 2 && $category == 2)
	retrieveQues($grade, $category, 31, $ques1, $ques2, $ques3, $ques4, $ques5);

//3rd Grade History
if($grade == 3 && $category == 2)
	retrieveQues($grade, $category, 36, $ques1, $ques2, $ques3, $ques4, $ques5);

//4th Grade History
if($grade == 4 && $category == 2)
	retrieveQues($grade, $category, 41, $ques1, $ques2, $ques3, $ques4, $ques5);

//5th Grade History
if($grade == 5 && $category == 2)
	retrieveQues($grade, $category, 46, $ques1, $ques2, $ques3, $ques4, $ques5);

//Third Category - SCIENCE
//1st Grade Science
if($grade == 1 && $category == 3)
	retrieveQues($grade, $category, 51, $ques1, $ques2, $ques3, $ques4, $ques5);

//2nd Grade Science
if($grade == 2 && $category == 3)
	retrieveQues($grade, $category, 56, $ques1, $ques2, $ques3, $ques4, $ques5);

//3rd Grade Science
if($grade == 3 && $category == 3)
	retrieveQues($grade, $category, 61, $ques1, $ques2, $ques3, $ques4, $ques5);

//4th Grade Science
if($grade == 4 && $category == 3)
	retrieveQues($grade, $category, 66, $ques1, $ques2, $ques3, $ques4, $ques5);

//5th Grade Science
if($grade == 5 && $category == 3)
	retrieveQues($grade, $category, 71, $ques1, $ques2, $ques3, $ques4, $ques5);

//Fourth Category - GEOGRAPHY
//1st Grade Geography
if($grade == 1 && $category == 4)
	retrieveQues($grade, $category, 76, $ques1, $ques2, $ques3, $ques4, $ques5);

//2nd Grade Geography
if($grade == 2 && $category == 4)
	retrieveQues($grade, $category, 81, $ques1, $ques2, $ques3, $ques4, $ques5);

//3rd Grade Geography
if($grade == 3 && $category == 4)
	retrieveQues($grade, $category, 86, $ques1, $ques2, $ques3, $ques4, $ques5);

//4th Grade Geography
if($grade == 4 && $category == 4)
	retrieveQues($grade, $category, 91, $ques1, $ques2, $ques3, $ques4, $ques5);

//5th Grade Geography
if($grade == 5 && $category == 4)
	retrieveQues($grade, $category, 96, $ques1, $ques2, $ques3, $ques4, $ques5);

//Fifth Category - Maths
//1st Grade Math
if($grade == 1 && $category == 5)
	retrieveQues($grade, $category, 101, $ques1, $ques2, $ques3, $ques4, $ques5);

//2nd Grade Math
if($grade == 2 && $category == 5)
	retrieveQues($grade, $category, 106, $ques1, $ques2, $ques3, $ques4, $ques5);

//3rd Grade Math
if($grade == 3 && $category == 5)
	retrieveQues($grade, $category, 112, $ques1, $ques2, $ques3, $ques4, $ques5);

//4th Grade Math
if($grade == 4 && $category == 5)
	retrieveQues($grade, $category, 116, $ques1, $ques2, $ques3, $ques4, $ques5);

//5th Grade Math
if($grade == 5 && $category == 5)
	retrieveQues($grade, $category, 121, $ques1, $ques2, $ques3, $ques4, $ques5);


//Point assign based on grade - 1st grade = 1pt
$points = $grade;

//Linking grade and category
$gradeLevel = $_SESSION['gradeLevel'] ?? "";
$catType = $_SESSION['catType'] ?? "";
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Smarter Than Game</title>
	<link rel="stylesheet" type="text/css" href="results.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Reggae+One&display=swap" rel="stylesheet"> 
</head>

<body>
	<div class="body">
	<form action="#" method="post">
	<h1>Are You Smarter Than A Child</h1>
	<p>You chose <?php echo $gradeLevel ?> and <?php echo $catType ?></p>
	
	<?php
	//Saves user input to be compared to the correct answer
	$query1 = "UPDATE questions SET userAnswer = '$input1' WHERE gradeLevel = '$grade' and catID = '$category' and quesID = '$ques1' ";
	mysqli_query($link, $query1);
	
	$query2 = "UPDATE questions SET userAnswer = '$input2' WHERE gradeLevel = '$grade' and catID = '$category' and quesID = '$ques2' ";
	mysqli_query($link, $query2);

	$query3 = "UPDATE questions SET userAnswer= '$input3' WHERE gradeLevel = '$grade' and catID = '$category' and quesID = '$ques3' ";
    mysqli_query($link, $query3);
	
	$query4 = "UPDATE questions SET userAnswer= '$input4' WHERE gradeLevel = '$grade' and catID = '$category' and quesID = '$ques4' ";
    mysqli_query($link, $query4);
	
	$query5 = "UPDATE questions SET userAnswer= '$input5' WHERE gradeLevel = '$grade' and catID = '$category' and quesID = '$ques5' ";
    mysqli_query($link, $query5);

	//Gets the correct answer to compare the user input with
	$qry = "SELECT `answer`, `userAnswer` FROM `questions` WHERE gradeLevel = '$grade' and catID = '$category'";
	$result = mysqli_query($link, $qry);
	$i = 1;
		
	while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
	{
		//converts user response to lowercase
		if(strtolower($row['answer']) == strtolower($row['userAnswer']))
		{
			echo nl2br($i . ") Correct!\n");
			echo nl2br("Your answer was: " . $row['userAnswer']. "\n");
			echo nl2br("Correct answer is: " . $row['answer']. "\n");
			$total_correct += $points;
		}
		else 
		{
			echo nl2br($i . ") Incorrect!\n");
			echo nl2br("Your answer was: " . $row['userAnswer']. "\n");
			echo nl2br("Correct answer is: " . $row['answer']. "\n");
			$total_incorrect += $points;
		}
		
		echo nl2br("\n");
		$i++;
	}
	?>
	
	<h2>Score</h2>
	<div class = "score">
	<label for = "win">Wins:</label>
	<input type="text" id="win" disabled value = "<?php echo $total_correct; ?> "> 
	
	<label for = "loss">Losses:</label>
	<input type="text" id="loss" disabled value = "<?php echo $total_incorrect; ?> ">
	</div>
	
	<?php
	//Brings the points to the next page
	$total_points = $total_correct;
	$_SESSION['$total_points'] = $total_points;
	?>
	
	<h3>Great Game! Lets add you to our High Scores List</h3>
	<div class="highscore">
	<a href = "highScore.php" class = "button">Yes!</a>
	<a href = "index.php" class = "button">Play Again?</a>
	</div>
	</form>
	</div>
</body>
</html>