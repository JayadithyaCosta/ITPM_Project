<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@page import="com.classes.Results"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search resultt</title>

<link rel="stylesheet" href="css/exams.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
</head>
<body>
<input type="checkbox" id="nav_animation">


<header>

<label for="nav_animation">
<i class="fas fa-bars" id="sidebar_btn"></i>
</label>

<div class="company_name">

<h3 align="center"><span> Kanampella </span><span> Junior </span><span>   School     </span> </h3>

</div>



</header>


<div class="sidenav">

<center>
<img src="css/logo.jpeg"  class="user_type" alt="userprofile">

</center>
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
<h2>Search Results</h2>
	
   
									
								
				                 
				                
				                 
							<table>
								
									<tr>
										
										<th>Student id</th>
										<th>Marks</th>
										
									</tr>
									
								  <c:forEach var="res1" items="${resdetails1}">
								  
				                  <c:set var="stid" value="${res1.stid}"/>
				                 <c:set var="mark" value="${res1.mark}"/>
				                 <c:set var="subject" value="${res1.subject}"/>
							
			
								<tr>
								<td>${res1.stid}</td>
								<td>${res1.mark}</td>
								
								
				
				</tr>
				
				
								
								
								
							
							</c:forEach>
							</table>
</div>
</div>	
</body>
</html>