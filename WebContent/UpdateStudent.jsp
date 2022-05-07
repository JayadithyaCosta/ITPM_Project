<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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

	<h3 align="center"><span>  Student  </span><span>  Management  </span><span>  System  </span>  <span>  - Update Student  </span></h3>

	</div>

		</header>
			
			<div class="sidenav">
			
				<img src="css/abacuslogo2.png" class="user_type" alt="" >
			
			
			<a href="#"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
			<a href="studentinsert.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add New Student</span></a>
			<a href="SearchStudent.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Student Details</span></a>
			<a href="SearchStudentReport.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Generate Class Report</span></a>
			
			</div>
	
	<%
		String id = request.getParameter("id");
		String sid = request.getParameter("sid");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String grade = request.getParameter("grade");
		String cls = request.getParameter("cls");
		String gname = request.getParameter("gname");
		String contact = request.getParameter("contact");
		String occupation = request.getParameter("occupation");
		
	%>
	
	<h2 align="center">Update Student Details</h2>
	
	<div class="wrapper" style=margin-top:-190px;>
	
	<form action="UpdateStudentServlet" method="post">
	<div class="input_field" id="input_field"> 
	Index Number : <input type="text" name="id" id="txtinput" value="<%=id%>" readonly><br>
	Student ID : <input type="text" name="sid" id="txtinput" value="<%=sid%>"><br>
	Full Name : <input type="text" name="name" id="txtinput" value="<%=name%>"><br>
	Gender : <input type="text" name="gender" id="txtinput" value="<%=gender%>"><br>
	Date of Birth : <input type="text" name="dob" id="txtinput" value="<%=dob%>"><br>
	Address : <input type="text" name="address" id="txtinput" value="<%=address%>"><br>
	Grade : <input type="text" name="grade" id="txtinput" value="<%=grade%>"><br>
	Class : <input type="text" name="cls" id="txtinput" value="<%=cls%>"><br>
	<h4>Guardian Details</h4>
	Name : <input type="text" name="gname" id="txtinput" value="<%=gname%>"><br>
	Contact : <input type="text" name="contact" id="txtinput" value="<%=contact%>"><br>
	Occupation : <input type="text" name="occupation" id="txtinput" value="<%=occupation%>"><br>
	
	<input type="submit" name="submit" value="Update Student Details" id="updatebtn2"><br>
	</div>	
	</form>
	</div>
</body>
</html>