<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher</title>

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
#txtinput1{
border-radius: 8px;
border: 1px solid #e0e0e0;
width: 100%;
padding: 10px;
}
#formchenge
{
width: 150%;
top: 70%;
}
.required:after {
    content:" *";
    color: red;
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
<script type="text/javascript">
function CheckColors(val){
 var element=document.getElementById('other');
 if(val=='other'||val=='others')
   element.style.display='block';
 else  
   element.style.display='none';
}


</script>


</head>
 <body>

   <input type="checkbox" id="nav_animation">
	
	
		<header id="heder1">
		
			<label for="nav_animation">
			<i class="fas fa-bars" id="sidebar_btn"></i>
			</label>
		
			<div class="company_name" id ="h3ID">

	             <h3 id ="h3ID"><span> Teacher </span><span> Management </span></h3>

	        </div>

	
			
		</header>
			
			<div class="sidenav">
		     <img src="css/logo.jpeg" class="user_type" alt="">
        
			<a href="Home.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
			<a href="Addteacher.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Teacher</span></a>
			<a href="searchTeacher.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Teacher Details</span></a>
			<a href="DBrefresh.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Subject to Teacher</span></a>
			<a href="searchSubject.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Assign Subject</span></a>
			<a href="Search_for_update.jsp"><i class="fas fa-wrench" aria-hidden="true"></i><span>Update Teacher Info</span></a>
			<a href="TeacherReport.jsp"><i class="fa fa-folder" aria-hidden="true"></i><span>Teacher Report</span></a>
			<a href="TeacherReport2.jsp"><i class="fa fa-address-card" aria-hidden="true"></i><span>Individual Teacher Report</span></a>
			
		
			
			</div>
			
			


			
			
		
<div class="wrapper" id="formchenge" >
		  			


      <form action="AddTeacherServlet"  method="post"  >
			
			<h2> Add Teacher </h2>
			<div class="input_field" id="input_field">
			
			
			<label class="required">Full name :</label><input type="text"  name="Full_name" id="txtinput"  required><br/></br>
			<label class="required">Address :</label><input type="text" name="Address" id="txtinput" required><br/>
			
			<label class="required">Date Of Birth :</label><input type="date" name="DoB" id="txtinput1" required><br/>
			
			</div>
		    <label for="assing" class="required" >Gender:</label>
            <select name="Gender" class="form-control"  required>
              <option value=" "disabled selected hidden >Select Gender </option>
              <option value="Male">Male</option>
              <option value="Female">Female</option>
              
             </select>
			
			<br/>
			
			<div class="input_field" id="input_field">
			<label class="required">NIC :</label><input type="text"  name="nic" id="txtinput"  placeholder="EX:980313301V"  pattern="^(?:19|20)?\d{2}[0-9]{10}|[0-9]{9}[x|X|v|V]$" required><br/></br>
			<label class="required">Phone :</label><input type="text" name="phone" id="txtinput" pattern="[0-9]{1}[0-9]{9}" placeholder="EX:071xxxxxxx" title="phone number incorrect or not correct format"required><br/>
			<label class="required">Join Date :</label>
			<input type="date" name="joindate" id="txtinput1" required><br/>
			</div>
			 
			 <label for="assing" class="required" >Qualification:</label>
            <select name="Qualification" class="form-control" onchange='CheckColors(this.value);' required>
              <option value=" "disabled selected hidden >Select Qualification </option>
              <option value="Bachelor of Teaching (Primary Education)">Bachelor of Teaching (Primary Education)</option>
              <option value="Diploma in Primary Teacher Training">Diploma in Primary Teacher Training</option>
              <option value="Diploma in Catholic Education and Teacher Training (DCETT)">Diploma in Catholic Education and Teacher Training (DCETT)</option>
              <option value="Bsc(hons)">Bsc(hons)</option>
              <option value="others">others</option>
              <input type="text" name="other" id="other" style='display:none;'/>
              
           </select>
          
			<div class="input_field" id="input_field">
			<label>Description:</label><br>
			<textarea  name="discription" rows="5" cols="45" class="txtarea" ></textarea>
			</div>
			
			<br/>
			
			
            <div class="btn1">
			 <input type="submit" name="submit" value="Add Teacher" id="btnsubmit">
            </div>
       </form>
</div>       
 


</body>
</html>