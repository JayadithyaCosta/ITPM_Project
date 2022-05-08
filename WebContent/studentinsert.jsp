<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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

	<h3 align="center"><span>  Student  </span><span>  Management  </span><span>  System  </span>  <span>  - Add Student  </span></h3>

	</div>

		</header>
			
			<div class="sidenav">
			
				<img src="css/abacuslogo2.png" class="user_type" alt="" >
			
			
			<a href="#"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
			<a href="studentinsert.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add New Student</span></a>
			<a href="SearchStudent.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Student Details</span></a>
			<a href="SearchStudentReport.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Generate Class Report</span></a>
			
			</div>
			

<div class="wrapper" >

 <form action="StudentInsert" method="post">
         <div class="input_field" id="input_field">       
        Student ID        
        <input type="text" name="name" id="txtinput" pattern="[S][0-9][0-9][0-9]" placeholder="SXXX" required><br><br>
        Full Name
        <input type="text" name="sid" id="txtinput" required><br><br>
        Date Of Birth 
        <input type="date" id="txtinput" name="dob" value="1995-05-05" placeholder="XXXX-XX-XX" required><br><br>
        Address 
        <br><br><textarea  name="address" rows="5" cols="55" class="txtarea" id="txtinput" required></textarea><br><br>
        Gender
        <br><br><input type="radio" name="gender" value="male" id="txtinput"> Male
  		<input type="radio" name="gender" value="female" id="txtinput"> Female<br><br>
        Grade
        <select name="grade" class="form-control" id="txtinput" required>
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
        <br><br>
        Class
        <select name="cls" class="form-control" id="txtinput"  required>
              <option value="A">Class A</option>
              <option value="B">Class B</option>
              <option value="C">Class C</option>
              <option value="D">Class D</option>
              
             </select><br><br><br>
             <div class="company_name">
        <h3 align="center" style=color:#858585;>Guardian Details</h3><br><br>
        </div>
        Name
        <input type="text" name="gname" id="txtinput"><br><br>
        Contact Number
        <input type="text"  name="contact" placeholder="0112345678" pattern="[0-9]{10}" required id="txtinput"><br><br>
        Occupation
        <input type="text" name="occupation" id="txtinput">
        </div>
          
      	<center>
         <button type="submit" name="submit" class="btn btn-primary" style="width: 60%">Add Student</button>
         </center>
        </form>
        
        </div>

</body>
</html>