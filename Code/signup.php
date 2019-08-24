<!DOCTYPE html>
<html lang="en">
<head>
  <title>TEST</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href=" css/style.css" rel="stylesheet" type="text/css" />
</head>
<style type="text/css">
  .jumbotron{
    margin-bottom: 0px;
    background-color: #0FBBF3;
    background-position: 0% 25%;
    background-size: cover;
    background-repeat: no-repeat;
    text-color:dark pink;
    text-shadow: black 0.3em 0.3em 0.3em;
}
</style>
<body background="img\bb.jpg">
<div class="container">
<div class="jumbotron">
<p><h1><marquee direction="down" scrollamount="2"><center>THE WORLD OF TREASURE </center></marquee></h1>
<i><b><h2><marquee behavior="scroll" direction="alternate" scrollamount="4">     Answer the questions and win the treasure!</marquee></h2></b></i></p> 
 </div>
<div class="col-sm-4">
<!--<marquee behavior="scroll" direction="up" scrollamount="5"> 
<p> <img src="img\tr.jpg" height="250" width="300"></p>
</marquee> --></div>
<div class="col-sm-4">
<form  method="post" action="ins_reg.php"onsubmit="myFunction();">
<h4>Register Here</h4>
<div class="form_control">
<label>NAME</label> <input type="text" size="20" required value=""name="name">   
</div>
<div class="form_control"> <label>SEX</label> 
<p style="float:right;"><input type="radio"required  value="Male"name="sex">Male
<input type="radio"  value="Female"name="sex">Female</p>
</div> 
<div class="form_control">
<label>YEAR</label><select  name="year" required style="float:right;">
<option value="1st YEAR">FIRST</option>
<option value="2nd YEAR">SECOND</option>
<option value="3rd YEAR">THIRD</option>
<option value="4th YEAR">FOURTH</option></select> 
</div>
<div class="form_control">
<label> DEPARTMENT</label> 
<input type="text" size="20"  required value=""name="dept"> 
</div>
<div class="form_control">
<label>ROLL NO</label>  
<input type="text" required size="20" value=""name="rollno">
</div>
<div class="form_control"> 
<label>MAIL ID </label>
<input type="email" required size="20" value=""name="email"> 
</div>
<div class="form_control">
<label>PASSWORD</label> 
<input type="password" size="20"  id="pass1"required value="" >
</div>
<div class="form_control">
<label>CONFORM PASSWORD</label> 
<input type="password" id="pass2"size="20"  required value=""name="pass">
</div>
<div class="form_control">
<input type="submit"   value="Submit"  > 
<input type="reset"  style="" value="Reset"> 
</div>
</form>
</div>
<div class="col-sm-4">
<!--<marquee behavior="scroll" direction="up" scrollamount="5">
<p><img src="img\tff.jpg"height="250" width="300"></p>
</marquee> --></div>  
</div>
</div>
<script>
function myFunction() {
var pass1 = document.getElementById("pass1").value;
var pass2 = document.getElementById("pass2").value;
if (pass1 != pass2) {
alert("Passwords Do not match");
document.getElementById("pass1").style.borderColor = "#E34234";
document.getElementById("pass2").style.borderColor = "#E34234";
}
else {
alert("Passwords Match!!!");
}
}
</script>
</body>
</html>
