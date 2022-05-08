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
#input{
width:270px;
margin-left: 80px;
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

		<h3 style="margin-left: 300px;"><span> Teacher </span><span> Management </span></h3>
	
	</div>

	<!-- <div class="logout">
	<a href="login.jsp" class="logout_btn"></a>
	</div>-->
			
		</header>
			
			<div class="sidenav">
			<center>
				<img src="css/logo.jpeg" class="user_type" alt="">
			</center>
			
			<a href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
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

  <form action="UpdateTeacherservlet" method="post">
    <h2>Edit Teacher Details <i class="fa fa-edit" aria-hidden="true"></i></h2>
      <div class="input_field" id="input">
	    <table >
	
	    <tr >  
			<td >TeacherID</td>
			<td><input type="text" name="id"  value="<%=id  %>" readonly  id="td1" style="width: 450px;">
			
			</td>
		</tr>
	    <tr id="trup">
			<td>Name</td>
			<td><input type="text" name="fullname" value="<%= fullname %>" id="td1">
			
			</td>
		</tr>
		<tr>
			<td>Address</td>
			<td><input type="text" name="adress" value="<%= adress  %>"  id="td1"></td>
		</tr>
		<tr>
			<td>DOB</td>
			<td><input type="text" name="dob" value="<%= dob  %>"   id="td1"></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td><input type="text" name="gender" value="<%= gender  %>"  id="td1"></td>
		</tr>
		<tr>
			<td>NIC</td>
			<td><input type="text" name="nic" value="<%= nic  %>"   id="td1" pattern="^(?:19|20)?\d{2}[0-9]{10}|[0-9]{9}[x|X|v|V]$"></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td><input type="text" name="phone" value="<%= phone  %>"   id="td1"></td>
		</tr>
		<tr>
			<td>JoinDate</td>
			<td><input type="text" name="joindate" value="<%= joindate  %>"   id="td1"> </td>
		</tr>
		<tr>
			<td>Qulification</td>
			<td><label for="assing"></label>
            <select name="qulification" id="td1">
              <option value="<%= qulification  %>"><%= qulification  %></option>
              
              <option value="Diploma in Primary Teacher Training">Diploma in Primary Teacher Training</option>
              <option value="Diploma in Catholic Education and Teacher Training (DCETT)">Diploma in Catholic Education and Teacher Training (DCETT)</option>
              <option value="Bsc(hons)">Bsc(hons)</option>
              <option value="others">others</option>
              
            </select> 
            </td> 
		</tr>
		<tr id="trup">
			
			<td>Status</td>
			<td><label for="assing"></label>
            <select name="status" id="td1">
              <option value="<%= discrption %>"><%= discrption %></option>
              <option value="Inactive">Inactive</option>
              <option value="Inactive">Active</option>
              
            </select> 
            </td> 

		</tr>
		<tr>
		<td>Description</td>
		<td><input type="text" name="discrption" value="<%= status %>" id="td1"></td>
	</tr>
	

	</table>
	</div>	
			
	
	<br>
	<div class="btn1">
	<input type="submit" name="submit" value="Update">
	</div>
	
	</form>
</div>	


</body>
</html>