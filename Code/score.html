<?php
session_start();
error_reporting(1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>TEST</title>
  <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
  .jumbotron{
    margin-bottom: 0px;
    background-color:lightyellow ;
    background-position: 0% 25%;
    background-size: cover;
    background-repeat: no-repeat;
    text-color:dark pink;
    text-shadow: black 0.3em 0.3em 0.3em;
}
</style>
<body   >
 <?php include'header.php';?>      
 <?php include'score_cont.php';?>      
</body>
</html>
 <?php
session_start();
include("database.php");
date_default_timezone_set('Asia/Calcutta');
$test_date=date('Y-m-d');
$time_stamp= date('Y-m-d H:i:s');
$question_id= $_REQUEST['question_id'];
$serial_no= $_REQUEST['serial_no'];
$user_id= $_REQUEST['user_id'];
$answer= $_REQUEST['answer'];
echo $question_id;
echo $serial_no;
echo $user_id;
 // getting the answer from the user and storing it into the DB
$user_id= $_REQUEST['user_id'];
$sess_id= $_REQUEST['user_id'];
   //echo $answer;
  // fetching username based on user_id
    $fetch_user= mysql_query("select name from user where user_id='$user_id'")or die(mysql_error());
  $user_row= mysql_fetch_array($fetch_user);
  $username= $user_row['name'];
   $question= $_REQUEST['question_id'];
    // if the the question is new, add the answer ,or  else update the answer. 
    $get_ques= mysql_query("select  ques_id , test_date, user_id from useranswer where ques_id='$question'") or die(mysql_error());
  $ques_row= mysql_fetch_array($get_ques);
  $ques_row1= mysql_num_rows($get_ques);
   $q_user_id= $ques_row['user_id'];
   $q_testdate= $ques_row['test_date'];
   $q_ques_id= $ques_row['ques_id'];
  if($ques_row1>0)
  {   
  $ans= mysql_query("select * from question  where que_id='$question'") or die(mysql_error());
  $row_ans= mysql_fetch_array($ans);
  $db_ans= $row_ans['true_ans'];
  $db_ans1= $row_ans['ans1'];
  $db_ans2= $row_ans['ans2'];
  $db_ans3= $row_ans['ans3'];
  $db_ans4= $row_ans['ans4'];
  $que_desc= $row_ans['que_desc'];
  $true_answer= $row_ans['true_answer'];
    if($answer==$true_answer)
  {
$store_ans= mysql_query("insert into useranswer(sess_id,ques_id,que_des, ans1,ans2,ans3,ans4,true_ans, true_answer, your_ans,user_id, score,username,test_date,time_stamp)
values('$sess_id','$question_id','$que_desc','$db_ans1','$db_ans2','$db_ans3','$db_ans4','$db_ans', '$true_answer','$answer','$user_id',1,'$username','$test_date','$time_stamp')")or die(mysql_error());
echo $store_ans;*/
$update_ans= mysql_query("update useranswer set your_ans='$answer' ,score=1 where ques_id='$q_ques_id' and user_id='$q_user_id' and test_date='$q_testdate'")or die(mysql_error());
  }
else if($answer!=$db_ans)
{
$update_ans= mysql_query("update useranswer set your_ans='$answer' , score=0 where ques_id='$q_ques_id' and user_id='$q_user_id' and test_date='$q_testdate'")or die(mysql_error());
}
 } 
  else
  {
    // check the answer is correct or not
    $ans= mysql_query("select * from question  where que_id='$question'") or die(mysql_error());
  $row_ans= mysql_fetch_array($ans);
  $db_ans= $row_ans['true_ans'];
  $db_ans1= $row_ans['ans1'];
  $db_ans2= $row_ans['ans2'];
  $db_ans3= $row_ans['ans3'];
  $db_ans4= $row_ans['ans4'];
  $que_desc= $row_ans['que_desc'];
  $true_answer= $row_ans['true_answer'];
    if($answer==$true_answer)
  {
  $store_ans= mysql_query("insert into useranswer(sess_id,ques_id,que_des, ans1,ans2,ans3,ans4,true_ans, true_answer, your_ans,user_id, score,username,test_date,time_stamp)
values('$sess_id','$question','$que_desc','$db_ans1','$db_ans2','$db_ans3','$db_ans4','$db_ans', '$true_answer','$answer','$user_id',1,'$username','$test_date','$time_stamp')")or die(mysql_error());
echo $store_ans;
  }
 else if($answer!=$db_ans)
{
$store_ans= mysql_query("insert into useranswer(sess_id,ques_id,que_des, ans1,ans2,ans3,ans4,true_ans, true_answer, your_ans,user_id, score,username,test_date,time_stamp)
values('$sess_id','$question','$que_desc','$db_ans1','$db_ans2','$db_ans3','$db_ans4','$db_ans','$true_answer','$answer','$user_id',0,'$username','$test_date','$time_stamp')")or die(mysql_error());
echo $store_ans;
}
}
  // storing the result or score into the score board
  $fetch_score= mysql_query("select sum(score) from useranswer  where user_id='$q_user_id' and username='$username' and test_date='$q_testdate' ")or die(mysql_error());
  $row_score= mysql_fetch_array($fetch_score);
  $score= $row_score['sum(score)'];
    if($score==10)
  {
  $sql_result=mysql_query("insert into  result (user_id,user_name,test_date,score,result) values('$user_id','$username','$test_date','$score','Won')") or die(mysql_error());
  }
  else
  {
  $sql_result=mysql_query("insert into  result (user_id,user_name,test_date,score,result) values('$user_id','$username','$test_date','$score','Lost')") or die(mysql_error());
  }
?>
