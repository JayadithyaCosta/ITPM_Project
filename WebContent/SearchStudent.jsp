<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">

<style type="text/css">
#input_field{
color: black;

}
#txtinput:hover {
  border-color:blue ;
}
#txtinput{
border-radius: 8px;
}

</style>

</head>
<body>

<input type="checkbox" id="nav_animation">
	
	
		<header>
		
			<label for="nav_animation">
			<i class="fas fa-bars" id="sidebar_btn"></i>
			</label>
		
			<div class="company_name">

	<h3 align="center"><span>  Student  </span><span>  Management  </span><span>  System  </span>  <span>  - Search Student  </span></h3>

	</div>
			
		</header>
			
			<div class="sidenav">
			<center>
				<img src="css/abacuslogo2.png" class="user_type" alt="">
			</center>
			
			<a href="#"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
			<a href="studentinsert.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add New Student</span></a>
			<a href="SearchStudent.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Student Details</span></a>
			<a href="SearchStudentReport.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Generate Class Report</span></a>
</div>			
						
	<div id="StudentSearchBox">
	<form action="SearchStudentServlet" method="post" >
	<h4>Student ID </h4>   <input type= "text" name="sid" placeholder="Student ID" id="searchbox"><br>	
	
	<input type="submit" name="submit" value="Search" id="searchbtn">
</form>
</div>
</body>
</html>