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
#trup:nth-child(even) {
	background-color: white;
	
}
#td1{
margin-bottom: 5px;
border-radius: 4px;

}
#td1:hover {
border-color:blue ;
width: 100%;

}
}
#input{
width:270px;
}
#deletetable{
background-color: white;

}

</style>

</head>
<body>
<%      
        String id=request.getParameter("id");
		String fullname = request.getParameter("fullname");
		String adress = request.getParameter("adress");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String joindate = request.getParameter("joindate");
		String qulification = request.getParameter("qulification");
		String status = request.getParameter("status");
		String discrption = request.getParameter("discrption");
	
	%>
<input type="checkbox" id="nav_animation">
	
	
		<header>
		
			<label for="nav_animation">
			<i class="fas fa-bars" id="sidebar_btn"></i>
			</label>
		
			<div class="company_name">

	<h3 style="margin-left:300px"><span> Teacher </span><span> Management </span></h3>

	</div>

	<!-- <div class="logout">
	<a href="login.jsp" class="logout_btn"></a>
	</div>-->
			
		</header>
			
			<div class="sidenav">
			<center>
				<img src="css/logo.jpeg" class="user_type" alt="">
			</center>
			
			<a href="Home.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
			<a href="Addteacher.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Teacher</span></a>
			<a href="searchTeacher.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Teacher Details</span></a>
			<a href="DBrefresh.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Subject to Teacher</span></a>
			<a href="searchSubject.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Assign Subject</span></a>
			<a href="Search_for_update.jsp"><i class="fas fa-wrench" aria-hidden="true"></i><span>Update Teacher Info</span></a>
			<a href="TeacherReport.jsp"><i class="fa fa-folder" aria-hidden="true"></i><span>Teacher Report</span></a>
			<a href="TeacherReport2.jsp"><i class="fa fa-address-card" aria-hidden="true"></i><span>Individual Teacher Report</span></a>
			
			
			</div>
			
			<br><br>
			<br><br>
			<br><br>
			<br><br>
			
			
		
				<div class="wrapper">
<form action="DeleteTeacherServlet" method="post">
 
 <h2>Delete Item</h2>  
   <div class="input_field" id="input">
	<table id="deletetable">
	<tr>    
			<td >TeacherId:</td>
			<td><input type="text" name="ID" id="input" value="<%= id  %>" readonly id="td1">
			
			</td>
		</tr>
	    <tr id="trup">
			<td>Name:</td>
			<td><input type="text" name="IName" value="<%= fullname %>" readonly id="td1">
			
			</td>
		</tr>
		<tr>
			<td>Address:</td>
			<td><input type="text" name="Icode" value="<%= adress  %>" readonly id="td1"></td>
		</tr>
		<tr id="trup">
			
			<td>Gender:</td>
			<td>
			<input type="text" name="Categorey" value="<%= gender %>" readonly id="td1">
           
            </td> 

		</tr>
		<tr id="trup">
			
			<td>DoB:</td>
			<td>
			<input type="text" name="Categorey" value="<%= dob %>" readonly id="td1">
           
            </td> 

		</tr>
		<tr>
		<td>NIC:</td>
		<td><input type="text" name="Description" value="<%= nic %>" readonly id="td1"></td>
	</tr>
	<tr id="trup">
		
		<td>Phone:</td>
		<td>
		<input type="text" name="Status" value="<%= phone %>" readonly id="td1">
            
		</td>
	</tr>
	
	<tr>
		<td>JoinDate:</td>
		<td><input type="text" name="Date" value="<%= joindate %>" readonly id="td1"></td>
	</tr>
	<tr>
		<td>Qulification:</td>
		<td><input type="text" name="Date" value="<%= qulification %>" readonly id="td1"></td>
	</tr>	
	<tr>
		<td>Status:</td>
		<td><input type="text" name="Date" value="<%= discrption %>" readonly id="td1"></td>
	</tr>
	<tr>
		<td>Descrption:</td>
		<td><input type="text" name="Date" value="<%= status %>" readonly id="td1"></td>
	</tr>	
	</table>
   </div>	
	
	<br>
	<div class="btn1">
	<input type="submit" name="submit" value="Delete" style="background-color: red">
	</div>
	</form>
</div>	


</body>
</html>