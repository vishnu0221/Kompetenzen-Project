<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>KOMPETENZEN</title>
  <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <link rel="stylesheet" href="CSS/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>

<script>
function myFunction() {
  document.getElementById("amoreF").style.display = "block";
  document.getElementById("subAmore").style.display = "none";
  
}
function myFunctionS() {
	document.getElementById("submitF").style.display = "block";
}
function myFunctionSs()
{
	document.getElementById("submitF").style.display = "none";
	document.getElementById("submitS").style.display = "block";
	}
	function submore2() {
		document.getElementById("new3").style.display = "block";
		  document.getElementById("subAmore2").style.display = "none";
	}
	
</script>
</head>
<body>

<div class="container">
<section class="text-center my-5">
<h1 id="header">KOMPETENZEN</h1>
<div class="container">
  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
    <li><a data-toggle="tab" href="#createT">Create Trainer</a></li>
    <li><a data-toggle="tab" href="#viewT">View Trainers</a></li>
    <li><a data-toggle="tab" href="#batchV">Batch Details</a></li>
    <li><a data-toggle="tab" href="#attn">Attendance</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>Welcome Admin</h3>
    
    <div id="createT" class="tab-pane fade">
      <h3>Create Trainer</h3>
       <div class="container">
  
  <form action="trainerServlet" method="post" enctype="multipart/form-data">
    <div class="form-group row">
      <div class="col-xs-3">
        <label for="namet">Name</label>
        <input class="form-control" name="namet" id="namet" type="text">
      </div>
      <div class="col-xs-3">
        <label for="emailt">Email</label>
        <input class="form-control" name="emailt" id="emailt" type="email">
      </div>
      <div class="col-xs-3">
        <label for="phonet">Phone</label>
        <input class="form-control" name="phonet" id="phonet" type="text">
      </div>
      <div class="col-xs-3">
        <label for="skillst">Skill</label>
        <select id="skillst" name="skillst" class="form-control">
        <option>--Select--</option>
        <option value="java">JAVA</option>
        <option value="angular">Angular</option>
        <option value="android">Android</option>
        </select><br><br>
      </div>
      <div class="col-xs-3">
      <h4 style="color: black;">Extra Skills</h4>
      </div>
      <div class="col-xs-3">
        
        <input class="form-control" name="html" value="html/css" id="eskillst" type="radio">HTML/CSS
      </div>
      <div class="col-xs-3">
        
        <input class="form-control" name="sql" value="sql" id="eskillst" type="radio">SQL
      </div>
      <div class="col-xs-3">
        
        <input class="form-control" name="spring" value="spring" id="eskillst" type="radio">Spring/Hibernate <br><br><br><br>
      </div>
      <div class="col-xs-4">
        <label for="photot">Photo</label>
        <input class="form-control" name="photot" id="photot" type="file">
      </div>
      <div class="col-xs-4">
        <label for="phonet">Username</label>
        <input class="form-control" name="unamet" id="unamet" type="text">
      </div>
      <div class="col-xs-4">
        <label for="pwordt">Password</label>
        <input class="form-control" name="pwordt" id="pwordt" type="password"><br><br><br>
      </div>
      <div class="col">
      <input type="hidden" value="CreateT" name="admin" class="btn btn-success">
       <input type="submit" value="Create" class="btn btn-success">
       
    </div>
    </div>
  </form>
</div>
      </div>
    <div id="viewT" class="tab-pane fade">
      <h3>View Trainers</h3>
      <div class="container">
      <table class="table table-striped"><thead class="thead"><tr><td>ID</td><td>Trainer Name</td><td>Email</td><td>Info</td><tr></thead>
      <tbody>
      <tr><td>#KMP01</td><td>Trainer 1</td><td>email@example.com</td><td>View</td></tr>
      
      </tbody>
      </table>
      </div>
      </div>
    <div id="batchV" class="tab-pane fade">
    <div class="container">
  <div class="row" style="float: right;">
    <div class="col-sm">
  <a data-toggle="tab" href="#newB">New Batch  <img src="images/add.png" style="height:40px;width: 40px;"> </a>
      </div>
    </div>
      <h3>Batch Details</h3>
      
       <div class="container">
      <table class="table table-striped">
      <thead class="thead"><tr><td>Batch ID</td><td>Batch Name</td><td>Trainer name</td><td>Info</td><tr></thead>
      <tbody>
      <tr><td>#KMP01</td><td>Batch 1</td><td>trainer 1</td><td>View</td></tr>
       
      </tbody>
      </table>
      </div>
      </div>
      </div>
     <div id="attn" class="tab-pane fade">
      <h3>Attendance</h3>
       <div class="container">
  
  <form>
    <div class="form-group row">
      <div class="my-5 col-xs-3">
      <label for="selBatch">Select Batch</label>
      <select class="form-control" name="selbatch" id="selBatch" name="">
      <option>--Select--</option>
      </select>
      </div></div></form></div>
      </div>
       <div id="newB" class="tab-pane fade">
      <h3>New Batch</h3>
      
       <div class="container">
  
  <form>
    <div class="form-group row">
      <div class="col-xs-3">
        <label for="nameb">Batch Name</label>
        <input class="form-control" id="nameb" type="text">
      </div>
      <div class="col-xs-3">
        <label for="namet">Trainer Name</label>
        <select class="form-control" name="" id="namet">
        <option>--Select--</option>
        
        </select>
      </div>
      <div class="col-xs-3">
        <label for="sdate">Start Date</label>
        <input class="form-control" id="sdate" type="date">
      </div>
      <div class="col-xs-3">
        <label for="btime">Time</label>
        <input class="form-control" id="btime" type="time"><br><br>
      </div><br><br>
      <div class="col-xs-4">
      <fieldset>
    <legend>Student 1</legend>
    <label for="sname">Student name:</label>
    <input class="form-control" type="text" id="sname" name="sname"><br><br>
    <label for="semail">Email:</label>
    <input class="form-control" type="email" id="semail" name="aemail"><br><br>
    <label for="sphone">Phone:</label>
    <input class="form-control" type="text" id="sphone" name="sphone"><br><br>
    <label for="squali">Qualification:</label>
    <select class="form-control" name="squali" id="squali">
    <option>--Select--</option>
    <option>BE/B.Tech</option>
    <option>MCA</option>
    <option>Others</option>
    </select><br><br><br>
  </fieldset>
      </div>
       <div class="col-xs-4">
      <fieldset>
    <legend>Student 2</legend>
    <label for="sname">Student name:</label>
    <input class="form-control" type="text" id="sname" name="sname"><br><br>
    <label for="semail">Email:</label>
    <input class="form-control" type="email" id="semail" name="aemail"><br><br>
    <label for="sphone">Phone:</label>
    <input class="form-control" type="text" id="sphone" name="sphone"><br><br>
    <label for="squali">Qualification:</label>
    <select class="form-control" name="squali" id="squali">
    <option>--Select--</option>
    <option>BE/B.Tech</option>
    <option>MCA</option>
    <option>Others</option>
    </select><br><br><br>
  </fieldset>
      </div>
       <div class="col-xs-4">
      <fieldset>
    <legend>Student 3</legend>
    <label for="sname">Student name:</label>
    <input class="form-control" type="text" id="sname" name="sname"><br><br>
    <label for="semail">Email:</label>
    <input class="form-control" type="email" id="semail" name="aemail"><br><br>
    <label for="sphone">Phone:</label>
    <input class="form-control" type="text" id="sphone" name="sphone"><br><br>
    <label for="squali">Qualification:</label>
    <select class="form-control" name="squali" id="squali">
    <option>--Select--</option>
    <option>BE/B.Tech</option>
    <option>MCA</option>
    <option>Others</option>
    </select><br><br><br> 
  </fieldset>
  <div id="subAmore">
  <input type="button" id="submit1" onclick="myFunctionS()"  value="Create" class="btn btn-success">
  <input type="button" id="amore1" onclick="myFunction()"  value="Add more" class="btn btn-info">
 </div>
  <div id="submitF" style="display: none;">
  <input type="hidden" value="normal3" name="bCreate">
  <input type="submit" value="CONFIRM" class="form-group">
    </div>
  

      </div>
     
     <div style="display: none;" id="amoreF">
       <div class="col-xs-4">
      <fieldset>
    <legend>Student 4</legend>
    <label for="sname">Student name:</label>
    <input class="form-control" type="text" id="sname" name="sname"><br><br>
    <label for="semail">Email:</label>
    <input class="form-control" type="email" id="semail" name="aemail"><br><br>
    <label for="sphone">Phone:</label>
    <input class="form-control" type="text" id="sphone" name="sphone"><br><br>
    <label for="squali">Qualification:</label>
    <select class="form-control" name="squali" id="squali">
    <option>--Select--</option>
    <option>BE/B.Tech</option>
    <option>MCA</option>
    <option>Others</option>
    </select><br><br><br>
  </fieldset>
      </div>
       <div class="col-xs-4">
      <fieldset>
    <legend>Student 5</legend>
    <label for="sname">Student name:</label>
    <input class="form-control" type="text" id="sname" name="sname"><br><br>
    <label for="semail">Email:</label>
    <input class="form-control" type="email" id="semail" name="aemail"><br><br>
    <label for="sphone">Phone:</label>
    <input class="form-control" type="text" id="sphone" name="sphone"><br><br>
    <label for="squali">Qualification:</label>
    <select class="form-control" name="squali" id="squali">
    <option>--Select--</option>
    <option>BE/B.Tech</option>
    <option>MCA</option>
    <option>Others</option>
    </select><br><br><br>
  </fieldset>
      </div>
       <div class="col-xs-4">
      <fieldset>
    <legend>Student 6</legend>
    <label for="sname">Student name:</label>
    <input class="form-control" type="text" id="sname" name="sname"><br><br>
    <label for="semail">Email:</label>
    <input class="form-control" type="email" id="semail" name="aemail"><br><br>
    <label for="sphone">Phone:</label>
    <input class="form-control" type="text" id="sphone" name="sphone"><br><br>
    <label for="squali">Qualification:</label>
    <select class="form-control" name="squali" id="squali">
    <option>--Select--</option>
    <option>BE/B.Tech</option>
    <option>MCA</option>
    <option>Others</option>
    </select><br><br><br>
  </fieldset>
  
   <div id="subAmore2">
  <input type="button" id="submit2" onclick="myFunctionSs()"  value="Create" class="btn btn-success">
  <input type="button" id="amore1" onclick="submore2()"  value="Add more" class="btn btn-info">
 </div>
  <div id="submitS" style="display: none;">
  <input type="hidden" value="normal3" name="bCreate">
  <input type="submit" value="Create" class="form-group">
    </div>
  
  
      </div>
      </div>
      <div id="new3" style="display: none;">
       <div class="col-xs-4">
      <fieldset>
    <legend>Student 7</legend>
    <label for="sname">Student name:</label>
    <input class="form-control" type="text" id="sname" name="sname"><br><br>
    <label for="semail">Email:</label>
    <input class="form-control" type="email" id="semail" name="aemail"><br><br>
    <label for="sphone">Phone:</label>
    <input class="form-control" type="text" id="sphone" name="sphone"><br><br>
    <label for="squali">Qualification:</label>
    <select class="form-control" name="squali" id="squali">
    <option>--Select--</option>
    <option>BE/B.Tech</option>
    <option>MCA</option>
    <option>Others</option>
    </select><br><br><br>
  </fieldset>
      </div>
       <div class="col-xs-4">
      <fieldset>
    <legend>Student 8</legend>
    <label for="sname">Student name:</label>
    <input class="form-control" type="text" id="sname" name="sname"><br><br>
    <label for="semail">Email:</label>
    <input class="form-control" type="email" id="semail" name="aemail"><br><br>
    <label for="sphone">Phone:</label>
    <input class="form-control" type="text" id="sphone" name="sphone"><br><br>
    <label for="squali">Qualification:</label>
    <select class="form-control" name="squali" id="squali">
    <option>--Select--</option>
    <option>BE/B.Tech</option>
    <option>MCA</option>
    <option>Others</option>
    </select><br><br><br>
  </fieldset>
      </div>
       <div class="col-xs-4">
      <fieldset>
    <legend>Student 9</legend>
    <label for="sname">Student name:</label>
    <input class="form-control" type="text" id="sname" name="sname"><br><br>
    <label for="semail">Email:</label>
    <input class="form-control" type="email" id="semail" name="aemail"><br><br>
    <label for="sphone">Phone:</label>
    <input class="form-control" type="text" id="sphone" name="sphone"><br><br>
    <label for="squali">Qualification:</label>
    <select class="form-control" name="squali" id="squali">
    <option>--Select--</option>
    <option>BE/B.Tech</option>
    <option>MCA</option>
    <option>Others</option>
    </select><br><br><br>
  </fieldset>
  <input type="hidden" value="normal3" name="bCreate">
  <input type="submit" value="Create" class="btn btn-success">
      </div>
      </div>
      </div>
      </form>
      </div>
      </div>
      
  </div>
</div>
</div>
</section>
</div>
</body>
</html>
