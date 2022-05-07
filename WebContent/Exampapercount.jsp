<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Total Exam Paper Count</title>
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
				<img src="css/avatar.svg" class="user_type" alt="">
				
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
			
			
		
				<div class="wrapper">
		  			
		    				
	 				<h2>Available Exam Papers</h2> <br>
	 					
	 					<div class="btn1">
	 					
	 						<form action="exampapercountservlet" method ="post">
  								<input type = "submit"  name="submit" value="Calculate count">
  						</div>
  						
  							</form>
  						
  						<br><br>
  						
  							<c:forEach var="coure" items="${countvalue}">
								<tr>
									<td>Total Exam Papers = </td>
									<td>${coure.count}</td>
								</tr>
							</c:forEach>
						
				</div>
						
</body>
</html>