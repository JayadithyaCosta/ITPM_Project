<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.classes.Results"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add progress</title>

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
<a href="Addprogress.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Evaluate</span></a>
<a href="Editmark.jsp"><i class="fa fa-cogs" aria-hidden="true"></i><span>Update Results</span></a>
<a href="deleteMark.jsp"><i class="fas fa-trash" aria-hidden="true"></i><span>Delete Results</span></a>
<a href="SearchSubject.jsp"><i class="fas fa-edit" aria-hidden="true"></i><span>List Subject Result</span></a>
<a href="Report.jsp"><i class="fas fa-download" aria-hidden="true"></i><span>Download Report</span></a>

</div>

<div class="workspace">
<div class="wrapper">
<h2>Evaluate progress</h2>
<form action="SearchProgress" method="post">

<div class="input_field">

		<label>Enter Student Id    </label><input type="text" name="stid" pattern="[S][0-9][0-9][0-9]" placeholder="SXXX"required><br>
		</div>

		<div class="btn1">
		<input type=Submit name="Submit" Value="Search"> 
		</div>


</form>



<h4>Search Results</h4>
	

							<table>
								
									<tr>
										
										
										<th style="background-color:#4F8524 ;font-weight: bold">Total</th>
										<th style="background-color:#4F8524 ;font-weight: bold">Average</th>
										<th style="background-color:#4F8524 ;font-weight: bold">Status</th>
										
									</tr>
									
								<c:forEach var="prog" items="${progdetails}">
				
				                 <c:set var="average" value="${prog.average}"/>
				                 <c:set var="total" value="${prog.total}"/>
								 <c:set var="status" value="${prog.status}"/>
			
								<tr>
								<td>${prog.total}</td>
								<td>${prog.average}</td>
								
								<td>${prog.status}</td>
								
								
				
				</tr>
				</c:forEach>
				</table>


<form action="addProgress" method="post">
<div class="input_field">
<label>Index No:</label><input type="text" name="stId" pattern="[S][0-9][0-9][0-9]" placeholder="SXXX"required><br>

</div>
<div class="input_field">
<label>Add Remark:</label><br>
</div>
<div>
<textarea rows="10" cols="50" name="Remark">Enter Remark</textarea><br>
</div>
<div class="input_field">
<label>Evaluated By:</label><input type="text" name="teacherId" pattern="[T][0-9][0-9][0-9]" placeholder="TXXX"required><br>
</div>
<div class="btn1">
<input type="submit" name="submit" value="Submit">
</div>
<div class="btn2">
<input type="reset" name="cancel" value="Cancel">
</div>

</form>

	
</div>
</div>
</body>
</html>