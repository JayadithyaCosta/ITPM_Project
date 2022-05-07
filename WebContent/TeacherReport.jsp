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

<!--  <script type="text/javascript" src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
<script type="text/javascript" src="js.js"></script> -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>

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
 

#reporttableBox{
width:1260px;
min-height: 60px;
float:left;
background-color:#c0c0c0;
border-radius: 0px;
border-style: outset #c0c0c0;
border-width: 5px;
margin-left:249px;
margin-top:40px;
}#ReportTable {
font-family: Arial, Helvetica, sans-serif;
border-collapse: collapse;
width: 100%;
font-size:16px;
}#ReportTable td, #ReportTable th {
border: 1px solid #ddd;
padding: 8px;
}#ReportTable tr:nth-child(even){background-color: #f2f2f2;}#ReportTable tr:hover {background-color: #ddd;}#ReportTable th {
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
margin: 15px 0px 0px 250px;
cursor: pointer;
width:200px;
height:40px;
}
#h3ID{
margin-left: 350px;

} 
  

</style>
<script>
function generatePDF(){
var element = document.getElementById('reporttableBox');
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



<form action="TeacherReportservlet1" method="post" >

     <table style="margin-left: 100px">
       <tr >
            
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
			<input type="submit" name="submit" value="view Report" id="btnsubmit">
          </div>
  </form>
  </div>
  
  </br>
</br>
</br>
</br>
</br>

  
<div id="reporttableBox">
  <h2 style="margin-left: 550px;">Teachers Report </h2></centere>
  This Report Genarated In:
   <div id="current_date">
   <script>
      document.getElementById("current_date").innerHTML = Date();
   </script>
   </div>
<table id="ReportTable">
  
<th>ID</th>  
<th>Name</th>
<th>Address</th>
<th>DOB</th>
<th>Gender</th>
<th>NIC</th>
<th>Phone</th>
<th>Qulification</th>

<c:forEach var="itm"  items="${itemDetails}">
<tr>

<td id="td1">${itm.id}</td>
<td id="td1">${itm.fullname}</td>
<td id="td1">${itm.adress}</td>
<td id="td1">${itm.gender}</td>
<td id="td1">${itm.dob}</td>
<td id="td1">${itm.nic}</td>
<td id="td1">${itm.phone}</td>
<td id="td1">${itm.qulification}</td>
</tr>

</c:forEach>  
</div> 

</table>
</div>

<input type="submit" onclick="generatePDF()" name="download" value="Download Report" class="btn btn-success" id="downloadreportbtn">

</body>
</html>