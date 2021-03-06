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
#trup:nth-child(even) {
	background-color: white;
	
}
#td1{
margin-bottom: 5px;
border-radius: 4px;


}
#td1:hover {
  border-color:blue ;
}
#input{
width:270px;
}

.btn7 {
  background-color: #0095ff;
  border: 1px solid transparent;
  border-radius: 3px;
  box-shadow: rgba(255, 255, 255, .4) 0 1px 0 0 inset;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system,system-ui,"Segoe UI","Liberation Sans",sans-serif;
  font-size: 18px;
  font-weight: 400;
  line-height: 1.15385;
  margin: 0;
  outline: none;
  padding: 8px .8em;
  position: relative;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: baseline;
  white-space: nowrap;
}

.btn7:hover,
.btn7:focus {
  background-color: #07c;
}

.btn7:focus {
  box-shadow: 0 0 0 4px rgba(0, 149, 255, .15);
}

.btn7:active {
  background-color: #0064bd;
  box-shadow: none;
}



</style>
</head>
<body>

<%      
        String ItemNo= request.getParameter("ItemNo");
		String ItemName = request.getParameter("ItemName");
		String ItemCode = request.getParameter("ItemCode");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		String status = request.getParameter("status");
		String date = request.getParameter("date");
	
	%>
	
	
	
	<input type="checkbox" id="nav_animation">

			<div class="sidenav">

<div>
<h4 style="display: inline-block; align-items: center; color: #dfdfdf">
<img src="css/abacus.png"  class="user_type" alt="userprofile" style="width: 60px; height: 60px">
   ABACUS
</h4>
</div>
             
			<a href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
			<a href="Additem.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Item</span></a>
			<a href="search.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Item Details</span></a>
			<a href="Searchitem.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Update Item Info</span></a>
			<!-- <a href="reportinput.jsp"><i class="fa fa-calculator" aria-hidden="true"></i><span>item count</span></a> -->
			<a href="DownloadReport.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Inventory Report</span></a>
			
			
</div>

<div class="container container-table">
    <div class="row vertical-center-row">
        <div class="text-center col-lg-10 col-md-offset-4" style="left: 100px; margin-top: 53px; background-color: #ded6d5; border-radius: 10px">
        <div class="card-header">
        <h4>
            Update Item
        </h4>
  </div>
  <div class="card-body">
  <form action="UpdateItemservlet" method="post">
  
   <div class="input_field" id="input">
	<table>
	    <tr  >  
			<td id="td1">
			<div class="form-group" id="input_field">
	      		<label style="font-size: 19px;">Item Number :</label>
	     	</div>
			</td>
			
			<td id="td1">
				<div class="form-group col-md-5">
					<input class="form-control" style="border: 1px solid #31363a" type="text" name="INO" id="input" value="<%=ItemNo  %>" readonly  id="td1">
				</div>
			</td>
		</tr>
		
		 <tr>  
			<td id="td1">
			<div class="form-group" id="input_field">
	      		<label style="font-size: 19px; width: 180px;">Item Code :</label>
	     	</div>
			</td>
			
			<td id="td1">
				<div class="form-group col-md-5">
					<input class="form-control" style="border: 1px solid #31363a; width: 272px"  type="text" name="Icode" value="<%= ItemCode  %>"  readonly id="td1">
				</div>
			</td>
		</tr>
		
		
		 <tr  >  
			<td id="trup">
			<div class="form-group" id="input_field">
	      		<label style="font-size: 19px; width: 180px;">Item Name :</label>
	     	</div>
			</td>
			
			<td id="td1">
				<div class="form-group col-md-5">
					<input class="form-control" style="border: 1px solid #31363a; width: 272px" type="text" name="IName" value="<%= ItemName %>" id="td1">
				</div>
			</td>
		</tr>
		
		
		
		<tr>
		<td id="trup">
			<div class="form-group" id="input_field">
	      		<label style="font-size: 19px;">Category :</label>
	     	</div>
			</td>
				<td><label for="assing"></label>
				<select name="category" style="font-size: 15px; margin-left: 8px; width: 272px;" id="td1">
              <option value="Furniture"><%= category %></option>
              <option value="Stationary">Stationary</option>
              <option value="Sport">Sport</option>
              <option value="Electronic">Electronic</option>
            </select> 
            </td> 
           </tr> 
            
		<tr>
		<td id="trup">
			<div class="form-group" id="input_field">
	      		<label style="font-size: 19px;">Description :</label>
	     	</div>
			</td>
			
		<td><input class="form-control" style="border: 1px solid #31363a; margin-left: 16px; width: 272px;" type="text" name="Description" value="<%= description %>" id="td1"></td>
	</div>
	</tr>
	<tr>
		<td id="trup">
			<div class="form-group" id="input_field">
	      		<label style="font-size: 19px;">Status :</label>
	     	</div>
			</td>
		<td><label for="assing"></label>
            <select name="Status" style="font-size: 15px; margin-left: 8px; width: 272px;" id="td1">
              <option value="Available"><%= status %></option>
              <option value="Discard">Discard</option>
              <option value="Using">Using</option>
              <option value="Re-condition">Re-condition</option>
              
              
            </select>
		
		</td>
	</tr>
	
	<tr>
		<td id="trup">
			<div class="form-group" id="input_field">
	      		<label style="font-size: 19px;">Date :</label>
	     	</div>
			</td>
		<td><input class="form-control" style="border: 1px solid #31363a; margin-left: 16px; width: 272px;" type="text" name="Date" value="<%= date %>" id="td1"></td>
	</tr>
	</table>
   </div>	
	
	
	<div style="margin-top: 25px; margin-left: 352px">
				<button type="submit" name="submit" value="Update" class="btn btn-primary" style="width: 30%">Update</button>
	</div>
	
	</form>
</div>	

</div>
</div>
</div>
</body>
</html>