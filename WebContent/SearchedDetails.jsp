<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%@page import="com.classes.Exam"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.List"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Searched Details</title>
<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
</head>
<body>
<input type="checkbox" id="nav_animation">
	
	
		<header>
		
			<label for="nav_animation">
			<i class="fas fa-bars" id="sidebar_btn"></i>
			</label>
		
			<div class="company_name">
				<h3 align="center"><span> Kanampella </span><span> Junior </span><span>   School     </span> </h3>
			</div>


		</header>
			
			<div class="sidenav">
			<center>
				<img src="css/logo.jpeg" class="user_type" alt="">
				
			</center>
					
				
			<a href="AddRegistrationDetails.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Registration </span></a>
			<a href="AddExam.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Exam</span></a>
			<a href="InsertQuetions.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Questions</span></a>
			<a href="UpdateQuestion.jsp"><i class="fa fa-cogs" aria-hidden="true"></i><span>Update Question</span></a>
			<a href="DeleteQuestion.jsp"><i class="fa fa-trash" aria-hidden="true"></i><span>Drop Question</span></a>
			<a href="SearchExam.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Search Exam</span></a>
			<a href="GenerateReport.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Generate Report</span></a>
			<a href="GenerateExamPaperReport.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Download Exam Paper</span></a>
			<a href="Exampapercount.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Exam Paper Count</span></a>
		
			</div>
			
			<div class="wrapper">
				<h2>Exam Details</h2>
				
					<table>

 						<% 	
 							List <Exam>cmp =(List<Exam>)request.getAttribute("exDetails"); 
        					for(Exam C:cmp){%> 
       							 <%-- Arranging data in tabular form --%> 
           								 <tr> 
							            	<td>Exam ID</td>
							            	<td><%=C.getExamID()%></td> 
             							 </tr>
								          <tr>
								            <td>Total Questions</td>
								             <td><%=C.getTotal_Question()%></td> 
								           </tr>
								           
								             <tr>
								             	<td>Marks</td>
								                <td><%=C. getMarks()%></td> 
								            </tr> 
							              <tr>
							             	<td>Subject ID </td>
							                <td><%=C.getSubjectID()%></td> 
							            </tr> 
               
            			<%}%> 
				</table>
				

		</div>
	</div>


</body>
</html>