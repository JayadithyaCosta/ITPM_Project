<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
  box-shadow: 4px 4px 2px #18A81A; 
  

  
}
#btupdate{
  background-color: #4aac2ae8;
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

  

</style>


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
			
			
		
<div class="container container-table">
    <div class="row vertical-center-row">
        <div class="text-center col-lg-10 col-md-offset-4" style="left: 100px; margin-top: 100px; background-color: #ded6d5; border-radius: 10px">
        <div class="card-header">
        <h4>
            Search Results
        </h4>
  </div>
  <div class="card-body">
 	<form action="search2servlet" method="post" >
			<div class="input_field">
             <label>Item Name</label>
             <input type="text" class="form-control col-md-4" style="margin-left: 300px" name="itemName" placeholder="Enter item name" >
             </div>
             
			
		    <div class="form-group col-md-4" style="margin-left: 300px; margin-top: 25px">
		      <label for="assing">Item condition</label>
            	<select name="Status">
            
              <option value="Available">Available</option>
              <option value="Discurd">Broken</option>
              <option value="Using">Using</option>
              <option value="Re-condition">Re-condition</option>
              
              </select>
		    </div>
		  
			
			
			<button type="submit" name="submit" class="btn btn-primary" id="btnsubmit" style="width: 25%">Search</button>
			
			
	</form>	
  </div>
        </div>
    </div>
</div>



<div style="margin-left: 237px; margin-right: 8px">
<div style="margin-top: 8vh; margin-left: 20px">
	<table class="table table-striped table-hover" style="font-size: 20px">
	<thead>
			<tr>
				<th scope="col">Item No</th>
				<th scope="col">Item Name</th>
				<th scope="col">Item Code</th>
				<th scope="col">Item Category</th>
				<th scope="col">Item Description</th>
				<th scope="col">Item Condition</th>
				<th scope="col">Date</th>
			</tr>
  	</thead>
  	
  	

<c:forEach var="itm"  items="${itemDetails}">




<tr>



<td>${itm.itemNo}</td>
<td>${itm.itemname}</td>
<td>${itm.itemcode}</td>
<td>${itm.category}</td>
<td>${itm.description}</td>
<td>${itm.status}</td>
<td>${itm.date}</td>




</tr>




</c:forEach>
</table>
</div>
</div>
</body>
</html>