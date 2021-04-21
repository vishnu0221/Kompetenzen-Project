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
  document.getElementById("mStud").style.display = "block";
  
  
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
    <li><a data-toggle="tab" href="#batch">Batch</a></li>
    <li><a data-toggle="tab" href="#work">Work</a></li>
    <li><a data-toggle="tab" href="#assmnt">Assessment</a></li>
    <li><a data-toggle="tab" href="#attn">Attendance</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>Welcome User</h3>
      
      <div class="container">
    <div class="row">
        <div class="text-center my-5">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <img src="images/cb.jpg" alt="" class="img-rounded img-responsive" />
                    </div>
                    <div class="col-sm-6 col-md-4" style="text-align: justify;">
                        <h4>
                            ABC</h4>
                        <small><cite title="San Francisco, USA">DEF <i class="glyphicon glyphicon-map-marker">
                        </i></cite></small>
                        <p>
                            <i class="glyphicon glyphicon-envelope"></i>email@example.com
                            <br />
                            <i class="glyphicon glyphicon-globe"></i><a href="#">#K001</a>
                            <br />
                            <i class="glyphicon glyphicon-gift"></i>June 02, 1988</p>
                        <!-- Split button
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">
                                Social</button>
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                <span class="caret"></span><span class="sr-only">Social</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Twitter</a></li>
                                <li><a href="https://plus.google.com/+Jquery2dotnet/posts">Google +</a></li>
                                <li><a href="https://www.facebook.com/jquery2dotnet">Facebook</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Github</a></li>
                            </ul>
                        </div>    -->
                    </div>
                      <div class="col-sm-6 col-md-4" style="text-align: justify;">
                        <h4>
                            Skills: HTML5,JAVA</h4>
                            <h4>
                            Join Date:</h4>
                            <!--  
                        <small><cite title="San Francisco, USA"> <i class="glyphicon glyphicon-map-marker">
                        </i></cite></small>  -->
                        <p>
                            </p>
                        <!-- Split button -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">
                                Social</button>
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                <span class="caret"></span><span class="sr-only">Social</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Twitter</a></li>
                                <li><a href="https://plus.google.com/+Jquery2dotnet/posts">Google +</a></li>
                                <li><a href="https://www.facebook.com/jquery2dotnet">Facebook</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Github</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
      
      
     </div>
     
     
     <!-- Batch Details -->
     
    <div id="batch" class="tab-pane fade">
      <h3>Batch Details</h3>
       <div class="container">
  <table class="table table-striped"><thead class="thead"><tr><td>Batch ID</td><td>Batch Name</td><td>Total Students</td><td>Info</td><tr></thead>
      <tbody>
      <tr><td>#KMP01</td><td>Batch 1</td><td>10</td><td><a data-toggle="tab" href="#bView">View</a></td></tr>
      
      </tbody>
      </table>
 
</div>
      </div>
      
      <!--  End of Batch Details -->
      
      
      <!--  Start of Work Details -->
      
    <div id="work" class="tab-pane fade">
      <h3>Work Details</h3>
      <div class="container">
      <form>
    <div class="form-group row">
      <div class="my-5 col-xs-3">
      <label for="selBatch">Select Date</label>
      <input type="date" name="date" class="form-control">
      </div>
      <div class="my-5 col-xs-3">
      <label for="selBatch">Batch Details</label>
      <input type="text" name="bdetails" class="form-control" placeholder="Batch name/Batch ID">
      </div>
      <div class="my-5 col-xs-3">
      <label for="selBatch">Work Done</label>
      <textarea rows="" cols="" name="wdetails" class="form-control" placeholder="What you done today?"></textarea>
      </div>
       <div class="my-5 col-xs-3">
       <input type="hidden" name="workDetails">
       <input type="submit" value="Update" class="form-group">
       </div>
      </div></form>
      <table class="table table-striped"><thead class="thead"><tr><td>Date</td><td>Batches Handled</td><td>Works Done</td><tr></thead>
      <tbody>
      <tr><td>20/10/2020</td><td>Batch 1</td><td>Java String</td></tr>
      
      </tbody>
      </table>
      </div>
      </div>
      
      <!--  End of Work Details -->
      
      <!-- Start of Assessment Details -->
      
    <div id="assmnt" class="tab-pane fade">
    <h3>Assessment Details</h3>
    <div class="container">
  <form>
    <div class="form-group row">
      <div class="my-5 col-xs-3">
      <label for="selBatch">Select Batch</label>
      <select class="form-control" name="selbatch" id="selBatch" name="batchAsses">
      <option>--Select--</option>   <!--  Redirected to new page -->
      </select></div><br>
      <div class="my-5 col-xs-3">
      <input type="hidden" name="user" value="">
      <input type="submit" class="btn btn-primary">
    </div>  </div></form>
      </div>
      </div>
      
      <!--  End of Assessment Details -->
      
      <!--  Start of Attendance -->
      
     <div id="attn" class="tab-pane fade">
      <h3>Attendance</h3>
       <div class="container">
   <form>
    <div class="form-group row">
      <div class="my-5 col-xs-3">
      <label for="selBatch">Select Batch</label>
      <select class="form-control" name="selbatch" id="selBatch" name="batchAsses">
      <option>--Select--</option>   <!--  Redirected to new page -->
      </select></div>
      <div class="my-5 col-xs-3">
      <label for="s1">Enter Absentees Names</label>
      <input type="text" name="s1" class="form-control" placeholder="Enter Studennt Name">
      <br>
      <input type="text" name="s2" class="form-control" placeholder="Enter Studennt Name">
      <br>
      <input type="text" name="s3" class="form-control" placeholder="Enter Studennt Name">
      <br>
      <input type="text" name="s4" class="form-control" placeholder="Enter Studennt Name">
      <input type="button" id="addmore" onclick="myFunction()"  value="Add More" class="btn btn-success">
    
      </div>
       
      <div id="mStud" style="display: none;">
      <input type="text" name="s5" class="form-control" placeholder="Enter Studennt Name">
      <br><input type="text" name="s6" class="form-control" placeholder="Enter Studennt Name">
      <br><input type="text" name="s7" class="form-control" placeholder="Enter Studennt Name">
      <br>
      </div>
      
      <br>
        </div>
        <div style="text-align: center;">
      <input type="hidden" name="user" value="">
      <input type="submit" value="Submit" class="btn btn-primary">
   </div></form>
  </div>
      </div>
      
      <!-- End of Attendance Details -->
      
      
      <!-- View Batch -->
       <div id="bView" class="tab-pane fade">
      <h3></h3>
       <div class="container">
  <table class="table table-striped">
  <h2>BATCH NAME: </h2>
      <thead class="thead"><tr><td>Student ID</td><td><td>Name</td><td>Email</td><td>Phone</td><td>Technical</td><td>Aptitude</td><td><td>Communication</td><td><tr></thead>
      <tbody>
      <tr><td>#KMP01</td><td>ABC</td><td>abc@example.com</td><td>0101010101</td><td>Good</td><td><td>Good</td><td><td>Good</td><td></tr>
       
      </tbody>
      </table>
  </div>
      </div>
      <!-- Batch View Ends -->
             
</div></div>
</section>
</div>
</body>
</html>
