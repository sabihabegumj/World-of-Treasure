<?php
session_start();
$question_id2=$_SESSION['question_id2'];
$serial_no2=$_SESSION['serial_no2'];
$user_id2=$_SESSION['user_id2'];
$answer2=$_SESSION['answer2'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>TEST</title>
<meta charset="utf-8">
</head>
<body background="img\yl.jpg">
<?php include'header2.php';?> 
<left><p><b>7.The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees<br/> is Rs.40,000, what is the average salary of the 4 remaining employees?</p>        
Ans:Rs.25,000<br/></left> 
<left><p><b>8.Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails <br/>on the last 2 throws?</p>        
Ans:1/6<br/></left> 
<left><p><b>9.A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,<br/>it would amount to how much?</p>        
Ans:Rs.992<br/></left> 
<left><p><b>10.Find the odd man out:10,14,16,18,21,24,26</p>
Ans:21<br/></left>
<p>
<a href="ans1.html">
<img src="img\prev.png" height="100"  style="position:fixed;bottom:75px;left:75px;z-index:999"/>  </a></p>
<p>
<a href="res.php?question_id=<?php echo $question_id2 ?>&serial_no=<?php echo $serial_no2 ?>&user_id=<?php  echo $user_id2 ?>&answer=<?php  echo $answer2 ?>">
<img src="img\sh.jpg" height="100"  style="position:fixed;bottom:75px;right:75px;z-index:999"/> </a></p> 
</body>
</html>
