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
<script type="text/javascript" src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
<script type="text/javascript" src="js.js"></script>
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
  box-shadow: 4px 4px 2px black;
  } 
 #ReportTable td, #ReportTable th {
border: 1px solid #ddd;
padding: 8px;

}
#ReportTable tr:nth-child(even){background-color: #f2f2f2;}#ReportTable tr:hover {background-color: #ddd;}#ReportTable th {
padding-top: 12px;
padding-bottom: 12px;
text-align: center;
background-color: #030a45;
color: white;
}
#downloadreportbtn{
border-radius: 8px;
background-color: #007bff;
border: none;
color: white;
padding: 10px;
text-align: center;
text-decoration: none;
display: inline-block;
font-size: 15px;
margin: 15px 0px 0px 270px;
cursor: pointer;
width:200px;
height:40px;
}
#h3ID{
margin-left: 350px;

} 
#txtinput{
border-radius: 8px;

}
#txtinput:focus {
  background-color: #e7feff;
}
   

</style>
<script>
function generatePDF(){
var element = document.getElementById('reporttableBox2');
var opt = {
margin: 1,
filename: 'StudentReport.pdf',
image: { type: 'jpeg', quality: 0.98 },
html2canvas: { scale: 2 },
jsPDF: { unit: 'mm', format: 'ledger', orientation: 'landscape' }
};
// New Promise-based usage:
html2pdf().from(element).set(opt).save();}
</script>
</head>
<body>
<input type="checkbox" id="nav_animation">
	
	
		<header>
		
			<label for="nav_animation">
			<i class="fas fa-bars" id="sidebar_btn"></i>
			</label>
		
			<div class="company_name" id="h3ID">

              <h3 id="h3ID"><span> Teacher </span><span> Management </span></h3>
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
			
			
		
<div class="wrapper" id="wrapper">



<form action="TeacherReportservlet2" method="post" >

     <table style="margin-left: 100px">
        <tr >
           
          <td>
          <div class="input_field">  
          <label>Teacher Name</label><input type="text" name="TeacherName" placeholder="enter item name" id="txtinput">
          </div>
          <td>
       </tr>
     </table>    
      
          <div class="btn1">
			<input type="submit" name="submit" value="view Report" id="btnsubmit">
          </div>
  </form>
  </div>
  
  </br>
</br>
</br>
</br>
</br>

  <div id="reporttableBox2">
  
<table style="margin-left: 18%;width:80%;padding-left: 10%" id="ReportTable">

<th>Teacher details</th>
<th>Allocated subject</th>


<c:forEach var="itm"  items="${itemDetails}">
<tr>
  <td>
<table style="width:101%">
<tr>
<td>TeacherID:</td>   
<td>${itm.id}</td>
</tr>

<tr>
<td>Teacher Name:</td>
<td>${itm.fullname}</td>
</tr>
<tr>
<td>Address:</td>
<td>${itm.adress}</td>
</tr>
<tr>
<td>Gender:</td>
<td>${itm.gender}</td>
</tr>
<tr>
<td>DoB:</td>
<td>${itm.dob}</td>
</tr>
<tr>
<td>NIC:</td>
<td>${itm.nic}</td>
</tr>
<tr>
<td>Phone:</td>
<td>${itm.phone}</td>
</tr>
<tr>
<td>Qulification:</td>
<td>${itm.qulification}</td>
</tr>
   </td>
 </tr>
</table>   


</c:forEach>
<td rowspan="1">
<table style="margin-top:-165px;margin-left: -10px;width:103%" id="ReportTable">

<th>Allocated year</th>
<th>Grade</th>
<th>Class</th>
<th>Subject</th>
<c:forEach var="itm"  items="${itemDetails1}">


<tr>



<td>${itm.year}</td>
<td>${itm.grade}</td>
<td>${itm.clz}</td>
<td>${itm.subject}</td>
</tr>

</c:forEach>
</table>
</td>
</tr>
<!--  <tr>
    <td><a  href="DownloadReport.jsp"><button style="background-color: blue; width: 180px;height: 40px;color: white;border-radius: 4px">Download Report pdf </button></a> </td>
</tr>
-->
</table>
</div>
<input type="submit" onclick="generatePDF()" name="download" value="Download Report" class="btn btn-success" id="downloadreportbtn">
</body>
</html>