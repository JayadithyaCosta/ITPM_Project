<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">


</head>
<body><input type="checkbox" id="nav_animation">



<div class="sidenav">

<div>
<h4 style="display: inline-block; align-items: center; color: #dfdfdf">
<img src="css/abacus.png"  class="user_type" alt="userprofile" style="width: 60px; height: 60px">
   ABACUS
</h4>
</div>

			<a href="Home.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
			<a href="Additem.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Item</span></a>
			<a href="search.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Item Details</span></a>
			<a href="Searchitem.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Update Item Info</span></a>
			<!-- <a href="reportinput.jsp"><i class="fa fa-calculator" aria-hidden="true"></i><span>item count</span></a> -->
			<a href="DownloadReport.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Inventory Report</span></a>
			
			
			</div>
			
			
<div class="workspace">
<div class="card">

<div class="card-header text-center">
<h2>Add Item</h2>
</div>

 <div class="card-body col" style="border-radius: 10px">		  			


      <form action="AdditemServlet"  method="post"  >
      
      
      <div class="form-row">
	    <div class="form-group" id="input_field">
	      <label>Item name :</label>
	     </div>
	    <div class="form-group col-md-5">
			<input  type="text" class="form-control" style="border: 1px solid #31363a" name="item_name" id="txtinput"  required><br/></br>
	    </div>
	  </div>
	  
	  <div class="form-row">
	    <div class="form-group">
	      <label>Item code :</label>
	     </div>
	    <div class="form-group col-md-5" style="margin-left: 6px">
			<input type="text" class="form-control" style="border: 1px solid #31363a" name="item_code" id="txtinput" required><br/>
	    </div>
	  </div>
			
			<div class="form-row" >
			    <div class="form-group col-md-8" style="padding-right: 0px; padding-left: 0px">
			      <label for="assing">Category:</label>
			      	<select name="category" style="border: 1px solid gray; border-radius: 5px; margin-left: 21px; margin-right: -35px" required>
				      		<option value="Furniture">Furniture</option>
			              	<option value="Stationary">Stationary</option>
			              	<option value="Sport">Sports</option>
			              	<option value="Electronic">Electronic</option>
			              	<option value="Other">Other</option>
					</select>
			    </div>
	 	 	</div>
			
		
			
			 <div class="form-row" style="margin-top: 25px">
	   			 <div class="form-group">
	     			 <label>Description:</label>
	    	 </div>
	    		<div class="form-group col-md-8">
					<textarea  name="discription" class="form-control" style="border: 1px solid #31363a" rows="5" cols="35" class="txtarea" required></textarea>
	   		 </div>
	 	 </div>
			
			
			<br/>
			
			<div style="margin-top: 25px">
				<button type="submit" name ="submit" value="create item" class="btn btn-primary" style="width: 20%">Submit</button>
			</div>
			
       </form>
       </div>

</div>  
</div>     
 


</body>
</html>