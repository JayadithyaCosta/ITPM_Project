<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Registration Details</title>
<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet" href="css/list.css">
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
				<img src="css/logo.jpeg" class="user_type" alt="">
				
			</center>
			
			<a href="AddRegistrationDetails.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Registration </span></a>
			<a href="AddExam.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Exam</span></a>
			<a href="InsertQuetions.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Questions</span></a>
			<a href="UpdateQuestion.jsp"><i class="fa fa-cogs" aria-hidden="true"></i><span>Update Question</span></a>
			<a href="DeleteQuestion.jsp"><i class="fa fa-trash" aria-hidden="true"></i><span>Drop Question</span></a>
			<a href="SearchExam.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Search Exam</span></a>
			<a href="GenerateReport.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Generate Report</span></a>
				<a href="GenerateExamPaperReport.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Download Exam Paper</span></a>
			<a href="Exampapercount.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Exam Paper Count</span></a>
		
		
	</div>
			
			<br><br>
			<br><br>
			<br><br>
			<br><br>
			
				<center><h2>Registration Details List</h2></center>
		    	
  								<form action="Listregistrationdetailsservlet" method ="post">
  								
  									<div class="btn1">
										<input type="submit" name="submit" value="View">
									</div>
  							
  										<br><br>
  										<br><br>
  										<br><br>
  						
					  						<table class="content-table">
					  							<thead>
					  								<tr>
						  								<th>StudentID</th> 
														<th>Email</th>
														<th>Date</th>
											
													</tr>
												</thead>
												
													<c:forEach var="reg" items="${regDetails}" >
													<c:set var="sid"  value="${reg.studentId}"/>
													<c:set var="semail"  value="${reg.email}"/>
													<c:set var="date"  value="${reg.date}"/>
											
														<tr>
															<td>${reg.studentId}</td>
															<td>${reg.email}</td>
															<td>${reg.date}</td>
														</tr>
											
													</c:forEach>
												</table>
									</form>
		
</body>
</html>