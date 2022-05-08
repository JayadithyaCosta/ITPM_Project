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
#btupdate{
  background-color: #40ff00;
  border: none;
  border-radius: 4px;
  width: 69px;
  color: white;
} 
#btdelete{
  background-color: red;
  border: none;
  border-radius: 4px;
  width: 69px;
  color: white;
} 
#txtinput:hover {
  border-color:blue ;
}
#resulttbl{
margin-left: 18%;
width:80%;
padding-left: 10%"
}
#h3ID{
margin-left: 350px;

} 
#txtinput:focus {
  background-color: #e7feff;
  border-radius: 5px;
}

  

</style>
</head>
<body>
<input type="checkbox" id="nav_animation">
	
	
		<header>
		
			<label for="nav_animation">
			<i class="fas fa-bars" id="sidebar_btn"></i>
			</label>

		<div class="company_name" id="h3ID">

			<h3 id="h3ID">
				<span> Teacher </span><span> Management </span>
			</h3>

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
			
			
		
<div class="wrapper" id="wrapper">
		  			


 <form action="SearchFORupdateservlet" method="post" >

     <table style="margin-left: 100px">
       <tr >
            <td>
             <div class="input_field">
             <label>Teacher name</label><input type="text" name="TName" placeholder="enter Teacher name" id="txtinput">
             </div>
             
            </td>
          
             <td>
             <div style="margin-left: 50px">
             <label for="assing">Status</label>
              <select name="Status" id="txtinput">
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

<table id="resulttbl">
<th>Name</th>
<th>Address</th>
<th>DOB</th>
<th>NIC</th>
<th>Phone</th>
<th>Status</th>
<th>Edit</th>
<th>Delete</th>

<c:forEach var="itm"  items="${itemDetails}">

<c:set var="id" value="${itm.id}"/>
<c:set var="fullname" value="${itm.fullname}"/>
<c:set var="adress" value="${itm.adress}"/>
<c:set var="gender" value="${itm.gender}"/>
<c:set var="dob" value ="${itm.dob}"/>
<c:set var="nic" value="${itm.nic}"/>
<c:set var="phone" value="${itm.phone}"/>
<c:set var="joindate" value="${itm.joindate}"/>
<c:set var="qulification" value="${itm.qulification}"/>
<c:set var="status" value="${itm.status}"/>
<c:set var="discrption" value="${itm.discrption}"/>




<tr>

<td>${itm.fullname}</td>
<td>${itm.adress}</td>
<td>${itm.dob}</td>
<td>${itm.nic}</td>
<td>${itm.phone}</td>
<td>${itm.discrption}</td>




<c:url  value="UpdateTeacher.jsp" var ="ItemUpdate">

<c:param name="id" value="${id}"/>
<c:param name="fullname" value="${fullname}"/>
<c:param name="adress" value="${adress}"></c:param>
<c:param name="dob" value="${dob}"></c:param>
<c:param name="gender" value="${gender}"></c:param>
<c:param name="nic" value="${nic}"></c:param>
<c:param name="phone" value="${phone}"></c:param>
<c:param name="joindate" value="${joindate}"></c:param>
<c:param name="qulification" value="${qulification}"></c:param>
<c:param name="status" value="${status}"></c:param>
<c:param name="discrption" value="${discrption}"></c:param>
</c:url>


<c:url  value="DeleteTeacher.jsp" var ="Itemdelete">

<c:param name="id" value="${id}"/>
<c:param name="fullname" value="${fullname}"/>
<c:param name="adress" value="${adress}"></c:param>
<c:param name="dob" value="${dob}"></c:param>
<c:param name="gender" value="${gender}"></c:param>
<c:param name="nic" value="${nic}"></c:param>
<c:param name="phone" value="${phone}"></c:param>
<c:param name="joindate" value="${joindate}"></c:param>
<c:param name="qulification" value="${qulification}"></c:param>
<c:param name="status" value="${status}"></c:param>
<c:param name="discrption" value="${discrption}"></c:param>
</c:url>

<td>
<a href="${ItemUpdate}">
<i class="fa fa-sync"style="color: black;">
<input type="submit" name="submit" value="Update"id="btupdate">
</i>
</a>
</td>
<td>
<a href="${Itemdelete}">
<i class="fa fa-trash"style="color: black;">
<input type="submit" name="submit" value="Delete"id="btdelete">
</i>
</a>
</td>
</tr>




</c:forEach>
</table>


</body>
</html>