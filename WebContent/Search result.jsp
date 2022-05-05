<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.classes.Results"%>
	<%@page import="com.classes.Progress"%>
	<%@page import="com.classes.Student"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search result</title>

<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="js.js"></script>
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

<div class="workspace">
<div class="card">
<div class="card-header vertical-center-row">
<h3>Search Results</h3>
</div>

 <div class="card-body col text-center" style="border-radius: 10px" id="report">

	
					<div class="table-responsive">
							<table class="table table-striped table-hover" >
							
								<thead>
								    <tr>
								      <th scope="col">Subject</th>
								      <th scope="col">Marks</th>
								    </tr>
  								</thead>
								
								<c:forEach var="res" items="${resdetails}">
				
				                 <c:set var="mark" value="${res.mark}"/>
				                 <c:set var="subject" value="${res.subject}"/>
							
			
								<tr>
								
								<td>${res.subject}</td>
								<td>${res.mark}</td>
								
								
				
				</tr>
				</c:forEach>
			
				
					<c:forEach var="prog" items="${progdetails}">
					
								
								
				                 <c:set var="status" value="${prog.status}"/>
				                 <c:set var="remark" value="${prog.remark}"/>
					
				         		 <c:set var="total" value="${prog.total}"/>
				                 <c:set var="avg" value="${prog.avg}"/>
							
								<tr>
								<td>Total Marks</td>
								<td style="background-color:#69C369;font-weight: italic">${prog.total}</td>
								</tr>
								
								<tr>
								<td style="background-color:#40C140;font-weight: bold">Average</td>
								<td style="background-color:#40C140;font-weight: italic">${prog.avg}</td>
								</tr>
								
								<tr>
								<td style="background-color:#7FA660;font-weight: bold">Status</td>
								<td style="background-color:#7FA660;font-weight: italic">${prog.status}</td>
								</tr>
								
								<tr>
								<td style="background-color:#97DD5E ;font-weight: bold">Teacher Remark</td>
								<td style="background-color:#97DD5E;font-weight: italic">${prog.remark}</td>
								</tr>
								
					
					</c:forEach>
					<c:forEach var="stu" items="${details}">
	
		
		<c:set var="StudentID " value="${stu.studentID}"/>
		<c:set var="Fullname " value="${stu.fullname}"/>
		
		
		
		<div class="form-control">
		<label style="color: teal;font-weight: 500;">Student ID: <h4 style="color: black; font-weight: 800;">${stu.studentID}</h4></label>
		</div>
		<div class="form-control">
		<label style="color: teal;font-weight: 500">Student Name: <h4 style="color: black; font-weight: 800;">${stu.fullname}</h4></label>
		</div>
		<div style="display: flex; background-color: #000; ">
		<img alt="Abacus Logo" src="css/logo.png" class="form-group col-md-2" style="margin: auto">
		</div>
		
	
	</c:forEach>
				
						</table>	
						</div>		
								
								
</div>
<div>		
	<button onclick="generatePDF()"style="background-color: blue; width: 180px;height: 40px;color: white;border-radius: 4px">Download Report </button>
</div>				
</div>
</div>	
</body>
</html>