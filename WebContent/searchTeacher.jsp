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
#wrapper{
  position: absolute;
  top: 10%;
  left: 18%;
  transform: translate(0,0);
  max-width:80%;
  width: 100%;
  background-color:white;
  padding: 25px;
  border-radius: 5px;
  box-shadow: 4px 4px 2px #030a45; 
  

  
}
#heder1{
    width: 100%;
	height: 70px;
	position: fixed;
	background:white;
	padding: 29px;
	box-shadow: 2px 2px 5px grey;
}  

  

</style>
</head>
<body>
<input type="checkbox" id="nav_animation">
	
	
		<header id="heder1">
		
			<label for="nav_animation">
			<i class="fas fa-bars" id="sidebar_btn"></i>
			</label>
		
			<div class="company_name"style="margin-left: 360px;height: 70px; ">

              <h3 style="margin-left: 350px;"><span> Teacher </span><span> Management </span></h3>
	        </div>

	
			
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
			
			
		
<div class="wrapper" id="wrapper">
		  			


 <form action="SearchTeacherservlet" method="post" >

     <table style="margin-left: 100px">
       <tr >
            <td>
             <div class="input_field">
             <label>Teacher name</label><input type="text" name="TName" placeholder="enter Teacher name" >
             </div>
             
            </td>
          
             <td>
             <div style="margin-left: 50px">
             <label for="assing">Status</label>
             <select name="Status">
               <option value="Active">Active</option>
               <option value="Inactive">Inactive</option>
              </select>
             </div>
             </td>
        </tr>
     </table>    
      
          <div class="btn1">
			<input type="submit" name="submit" value="search" id="btnsubmit">
          </div>
  </form>
</div>
</br>
</br>
</br>
</br>
</br>

<table style="margin-left: 18%;width:80%;padding-left: 10%">

<th>Full Name</th>
<th>NIC</th>
<th>Phone</th>
<th>Joindate</th>
<th>Qulification</th>




<c:forEach var="itm"  items="${itemDetails}">

<tr>

<td>${itm.fullname}</td>
<td>${itm.nic}</td>
<td>${itm.phone}</td>
<td>${itm.joindate}</td>
<td>${itm.qulification}</td>

</tr>
</c:forEach>


</table>



</body>
</html>