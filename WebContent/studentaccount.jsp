<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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

	<h3 align="center"><span>  Student  </span><span>  Management  </span><span>  System  </span></h3>

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
<div id="StudentdetailsBox">
	<table>
	<c:forEach var="stu" items="${stuDetails}">
	
	<c:set var="id" value="${stu.id}"/>
	<c:set var="sid" value="${stu.sid}"/>
	<c:set var="name" value="${stu.name}"/>
	<c:set var="gender" value="${stu.gender}"/>
	<c:set var="dob" value="${stu.dob}"/>
	<c:set var="address" value="${stu.address}"/>
	<c:set var="grade" value="${stu.grade}"/>
	<c:set var="cls" value="${stu.cls}"/>
	<c:set var="gname" value="${stu.gname}"/>
	<c:set var="contact" value="${stu.contact}"/>
	<c:set var="occupation" value="${stu.occupation}"/> 
	
	<div class="company_name">
	<h3 align="center" style= color:#858585;>Student Details</h3>
	</div>
	<tr>
	<td>Index Number</td>
	<td>${stu.id}</td>
	</tr>
	<tr>
	<td>Student ID</td>
	<td>${stu.sid}</td>
	</tr>
	<tr>
	<td>Full Name</td>
	<td>${stu.name}</td>
	</tr>
	<tr>
	<td>Gender</td>
	<td>${stu.gender}</td>
	</tr>
	<tr>
	<td>Date of Birth</td>
	<td>${stu.dob}</td>
	</tr>
	<tr>
	<td>Address</td>
	<td>${stu.address}</td>
	</tr>
	<tr>
	<td>Grade</td>
	<td>${stu.grade}</td>
	</tr>
	<tr>
	<td>Class</td>
	<td>${stu.cls}</td>
	</tr>
	</table>
	<br>
	<h2 align="center" style= color:#858585;>Guardian Details</h2><br>
	<table>
	<tr>
	<td>Name</td>
	<td>${stu.gname}</td>
	</tr>
	<tr>
	<td>Contact Number</td>
	<td>${stu.contact}</td>
	</tr>
	<tr>
	<td>Occupation</td>
	<td>${stu.occupation}</td>
	</tr>
	</c:forEach>
	</table>
	
	
	<br><br>
	<c:url value="UpdateStudent.jsp" var="stuupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="sid" value="${sid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="dob" value="${dob}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="grade" value="${grade}"/>
		<c:param name="cls" value="${cls}"/>
		<c:param name="gname" value="${gname}"/>
		<c:param name="contact" value="${contact}"/>
		<c:param name="occupation" value="${occupation}"/>
	</c:url>
	
	<div id="btnBox">
	<a href="${stuupdate}">
	<input type="button" name="update" value="Update" id="updatebtn">
	</a>
	
		<c:url value="DeleteStudent.jsp" var="studelete">
		<c:param name="id" value="${id}"/>
		<c:param name="sid" value="${sid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="dob" value="${dob}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="grade" value="${grade}"/>
		<c:param name="cls" value="${cls}"/>
		<c:param name="gname" value="${gname}"/>
		<c:param name="contact" value="${contact}"/>
		<c:param name="occupation" value="${occupation}"/>
	</c:url>
	
	<a href="${studelete}">
	<input type="button" name="delete" Value="Remove" id="removebtn"> 
	</a>
	</div>
</div>	
</body>
</html>