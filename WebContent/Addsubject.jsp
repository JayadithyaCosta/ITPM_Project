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

#heder1{
    width: 100%;
	height: 70px;
	position: fixed;
	background:white;
	padding: 29px;
	box-shadow: 2px 2px 5px grey;
}  
#h3ID{
margin-left: 350px;

} 
</style>

</head>
</head>
<body>

<input type="checkbox" id="nav_animation">
	
	
		<header id="heder1">
		
			<label for="nav_animation">
			<i class="fas fa-bars" id="sidebar_btn"></i>
			</label>
		
			<div class="company_name" id="h3ID">

              <h3 id="h3ID"><span> Teacher </span><span> Management </span></h3>
	        </div>

	
			
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
			
			
		
<div class="wrapper" >
		  			


     
			
			<h2> Add subject </h2>
			<form action="Addsubjectservlet"  method="post"  >
			
		    <label for="assing" >Teacher Name:</label>
            <select name="Tname" class="form-control" required >
              <option value=" "disabled selected hidden >Select Teacher Name </option>
              <c:forEach var="itm"  items="${itemDetails}">
              <option value="${itm.itemName}">${itm.itemName}</option>
              </c:forEach>
             </select>
			<br/>
			 <label for="assing" >year:</label>
            <select name="year" class="form-control"  required>
              <option value=" "disabled selected hidden >Select Year</option>
              <option value="2022">2022</option>
              <option value="2023">2023</option>
              <option value="2024">2024</option>
              <option value="2025">2025</option>
              <option value="2026">2026</option>
             </select>
			
			<br/>
			 <label for="assing" >Grade:</label>
            <select name="grade" class="form-control"  required>
              <option value=" "disabled selected hidden >Select Grade </option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              
              
             </select>
			
			<br/>
			 <label for="assing" >Class:</label>
            <select name="class" class="form-control"  required>
             <option value=" "disabled selected hidden >Select Class </option>
              <option value="A">A</option>
              <option value="B">B</option>
              <option value="C">C</option>
              <option value="D">D</option>
              <option value="E">E</option>
             </select>
			
			<br/>
			
			 <label for="assing" >Subject:</label>
            <select name="Subject" class="form-control"  required>
              <option value=" "disabled selected hidden >Select Subject </option>
              <option value="Sinhala">Sinhala</option>
              <option value="Maths">Maths</option>
              <option value="English">English</option>
              <option value="Information Technology">Information Technology</option>
              <option value="Science">Science</option>
              <option value="Business & Accounting Studies">Business & Accounting Studies</option>
              <option value="Agriculture & Food Technology">Agriculture & Food Technology</option>
              <option value="Arts & Crafts	">Arts & Crafts</option>
             </select>
			
			<br/>
			
			<div class="btn1">
            <input type="submit"  name ="submit" value="Add subject">
            </div>
       </form>
</div>       
 


</body>
</html>