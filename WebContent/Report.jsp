<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search marks</title>
<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
</head>
<body><input type="checkbox" id="nav_animation">



<div class="sidenav">

<div>
<h4 style="display: inline-block; align-items: center; font-weight:400 ; color: #dfdfdf">
<img src="css/abacus.png"  class="user_type" alt="userprofile" style="width: 60px; height: 60px">
   ABACUS
</h4>
</div>

<a href="SystemHome.jsp"><i class="fas fa-home" aria-hidden="true"></i><span>Home</span></a>
<a href="searchMarks.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Search Marks</span></a>
<a href="AddResults.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Results</span></a>
<!--<a href="Addprogress.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Evaluate</span></a> -->
<a href="Editmark.jsp"><i class="fa fa-cogs" aria-hidden="true"></i><span>Update Results</span></a>
<a href="deleteMark.jsp"><i class="fas fa-trash" aria-hidden="true"></i><span>Delete Results</span></a>
<!--<a href="SearchSubject.jsp"><i class="fas fa-edit" aria-hidden="true"></i><span>List Subject Result</span></a> -->
<a href="Report.jsp"><i class="fas fa-download" aria-hidden="true"></i><span>Download Report</span></a>

</div>

<div class="container container-table">
    <div class="row vertical-center-row">
        <div class="text-center col-lg-10 col-md-offset-4" style="left: 200px; margin-top: 150px; background-color: #ded6d5; border-radius: 10px">
        <div class="card-header">
        <h4>
            Generate Student Report
        </h4>
  </div>
  <div class="card-body">
    <form action="generatePDFResults"  method="post">
			<div class="input_field">
			<label>Index No</label>
			<input class="form-control col-md-6" style="margin-left: 220px" type="text" name="Stid" pattern="[S][0-9][0-9][0-9]" placeholder="SXXX"required><br>
			</div>
			
			
			<button type="submit" name="generate" value="Download" class="btn btn-primary" style="width: 25%">Download</button>
			
			
	</form>	
  </div>
        </div>
    </div>
</div>
</body>
</html>