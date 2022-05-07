<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- <script type="text/javascript" src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script> -->
<!-- <script type="text/javascript" src="js.js"></script>  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>

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
						
	<div id="StudentviewBox">
	<form action="SearchStudentReportServlet" method="post" >
	<h4>Student Grade </h4>  
	<div id="drpdwnbtn">
	<select name="grade">
            
              <option value="1">Grade 1</option>
              <option value="2">Grade 2</option>
              <option value="3">Grade 3</option>
              <option value="4">Grade 4</option>
              <option value="5">Grade 5</option>
              <option value="6">Grade 6</option>
              <option value="7">Grade 7</option>
              <option value="8">Grade 8</option>
              <option value="9">Grade 9</option>
              <option value="10">Grade 10</option>
              <option value="11">Grade 11</option>
              <option value="12">Grade 12</option>
              <option value="13">Grade 13</option>
              
     </select>
	
	
	<input type="submit" name="submit" value="View" id="viewbtn">
	</div>
	</form>
	</div>
	
	<!-- <div id="report" style="margin-left:0%;padding-left:0px;padding-right: 20px"> -->
	<div id="reporttableBox">
	<table id="ReportTable">
		<tr>
		<th>Index Number</th>
		<th>Student ID</th>
		<th>Full Name</th>		
		<th>Date of Birth</th>
		<th>Address</th>
		<th>Gender</th>
		<th>Grade</th>
		<th>Class</th>
		<th>Guardian Name</th>
		<th>Contact Number</th>
		<th>Occupation</th>
		</tr>
		
	<c:forEach var="stu"  items="${stuDetails}">
	<tr>

		<td>${stu.id}</td>
		<td>${stu.sid}</td>
		<td>${stu.name}</td>
		<td>${stu.gender}</td>
		<td>${stu.dob}</td>
		<td>${stu.address}</td>
		<td>${stu.grade}</td>
		<td>${stu.cls}</td>
		<td>${stu.gname}</td>
		<td>${stu.contact}</td>
		<td>${stu.occupation}</td>
	</tr>
		
	</c:forEach>  
	
   <!--  <td><a  href="DownloadStudentReport.jsp"><button style="background-color: blue; width: 180px;height: 40px;color: white;border-radius: 4px">Download Report</button></a> </td> -->
	
	
	</table>
	
	</div> 
	</div>
	
	<br><br>
	<%-- <center><button onclick="generatePDF()" style="background-color: blue; width: 180px;height: 40px;color: white;border-radius: 4px">Download Report </button> </center> --%>
	<input type="submit" onclick="generatePDF()" name="download" value="Download Report" class="btn btn-success" id="downloadreportbtn">
	
	<script>
	function generatePDF(){
var element = document.getElementById('reporttableBox');
var opt = {
  margin:       1,
  filename:     'StudentReport.pdf',
  image:        { type: 'jpeg', quality: 0.98 },
  html2canvas:  { scale: 2 },
  jsPDF:        { unit: 'mm', format: 'ledger', orientation: 'landscape' }
};
 
// New Promise-based usage:
html2pdf().from(element).set(opt).save();

}
	</script>		
	


</body>
</html>