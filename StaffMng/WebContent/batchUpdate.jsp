<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assessment Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <link rel="stylesheet" href="CSS/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>
</head>
<body>
<div class="container">
<section class="text-center my-5">
<h1 id="header">KOMPETENZEN</h1>
<div class="container">
<form>
<div class="form-group row">
      <div class="my-5 col-xs-3">
      <label for="selname">Select Student</label>
<select id="selname" name="bname" class="form-control">

<option>--SELECT--</option>
<option value=""></option>
</select>
</div></div>
    <div class="form-group row">
      <div class="my-5 col-xs-3">
      <label for="seltech">Technical</label>
      <select id="seltech" name="tech" class="form-control">
      <option>--Select--</option>
      <option value="avg">Average</option>
      <option value="good">Good</option>
      <option value="exc">Excellent</option>
      </select>
      </div>
       <div class="my-5 col-xs-3">
      <label for="selcom">Communication</label>
      <select id="selcom" name="tech" class="form-control">
      <option>--Select--</option>
      <option value="avg">Average</option>
      <option value="good">Good</option>
      <option value="exc">Excellent</option>
      </select>
      </div>
       <div class="my-5 col-xs-3">
      <label for="selapt">Aptitude</label>
      <select id="selapt" name="tech" class="form-control">
      <option>--Select--</option>
      <option value="avg">Average</option>
      <option value="good">Good</option>
      <option value="exc">Excellent</option>
      </select>
     </div>
      
      <br>
      
      <div class="my-5 col-xs-3">
      
      <input class="form-control" type="hidden" name="user" value="bUpdate">
     <input type="submit" class="btn btn-primary" id="upd">
     </div></form>
 
</div>
</section>
</div>

</body>
</html>