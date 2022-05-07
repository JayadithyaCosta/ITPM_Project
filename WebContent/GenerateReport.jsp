<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Download Exam Details</title>
<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
</head>
<body>
	<input type="checkbox" id="nav_animation">


	<header>

		<label for="nav_animation"> <i class="fas fa-bars"
			id="sidebar_btn"></i>
		</label>

		<div class="company_name">
			<h3 align="center"></h3>

		</div>


	</header>

	<div class="sidenav">
		<center>
			<img src="css/logo.jpeg" class="user_type" alt="">

		</center>


		<a href="AddRegistrationDetails.jsp"><i class="fa fa-plus"
			aria-hidden="true"></i><span>Add Registration </span></a> <a
			href="AddExam.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add
				Exam</span></a> <a href="InsertQuetions.jsp"><i class="fa fa-plus"
			aria-hidden="true"></i><span>Add Questions</span></a> <a
			href="UpdateQuestion.jsp"><i class="fa fa-cogs"
			aria-hidden="true"></i><span>Update Question</span></a> <a
			href="DeleteQuestion.jsp"><i class="fa fa-trash"
			aria-hidden="true"></i><span>Drop Question</span></a> <a
			href="SearchExam.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Search
				Exam</span></a> <a href="GenerateReport.jsp"><i class="fa fa-home"
			aria-hidden="true"></i><span>Generate Report</span></a> <a
			href="GenerateExamPaperReport.jsp"><i class="fa fa-home"
			aria-hidden="true"></i><span>Download Exam Paper</span></a> <a
			href="Exampapercount.jsp"><i class="fa fa-home"
			aria-hidden="true"></i><span>Exam Paper Count</span></a>


	</div>





	<form action="generatePDFResults" method="post">

		<div class="wrapper">

			<div class="btn1">
				<i class="fas fa-download" aria-hidden="true"><input
					type="Submit" name="generate" Value="Download"></i>
			</div>
		</div>
	</form>








</body>
</html>