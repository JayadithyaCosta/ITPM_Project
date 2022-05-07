<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
    	<%@page import="com.classes.Results"%>
	<%@page import="com.classes.Progress"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Results</title>
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

<div class="workspace">
<div class="card">
<div class="card-header vertical-center-row">
<h3>Edited Results</h3>
</div>

 <div class="card-body col text-center" style="border-radius: 10px">

	
					<div class="table-responsive">
							<table class="table table-striped table-hover">
							
								
								<thead>
									<tr>
										<th scope="col">Subject</th>
										<th scope="col">Mark</th>
										
									</tr>
								</thead>
									
									<tr>
									
				<c:forEach var="sub" items="${subdetails}">
				
				                 <c:set var="subject" value="${sub.subject}"/>
				                
								<c:set var="mark" value="${sub.mark}"/>
			
								
								
								<td>${sub.subject}</td>
								<td>${sub.mark}</td>
								
								</tr>
				
				</c:forEach>
									
								<c:forEach var="sum" items="${sumdetails}">
				
				                 <c:set var="total" value="${sum.total}"/>
				                
							
			<tr>
								
								<td style="background-color:#84e898 ;font-weight: bold">Updated Total</td>
								<td style="font-weight: 900">${sum.total}</td>
								
								
								
				</tr>
				</c:forEach>
				<tr>
								<c:forEach var="Avg" items="${Avgdetails}">
								
				                 <c:set var="avg" value="${Avg.avg}"/>
				                 	<td style="background-color:#84e898 ;font-weight: bold">Updated Average</td>
				                 <td style="font-weight: 900"><fmt:formatNumber type="number" value="${Avg.avg}" pattern="0.000" maxFractionDigits="2"/> </td>
							
								
								
								
								
								
				</c:forEach>
				</tr>
				
				</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>