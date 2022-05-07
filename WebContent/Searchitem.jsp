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
<body>
<input type="checkbox" id="nav_animation">
	
	
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
 	<form action="Searchservlet" method="post" >
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



<table style="margin-left: 18%;width:80%;padding-left: 10%; font-size: 20px; margin-top: 50px">
<th>Item No</th>
<th>Item Name</th>
<th>Item Code</th>
<th>Item Category</th>
<th>Item Description</th>
<th>Item Condition</th>
<th>Date</th>
<th>Update</th>
<th>Delete</th>
<c:forEach var="itm"  items="${itemDetails}">

<c:set var="ItemNo" value="${itm.itemNo}"/>
<c:set var="ItemName" value="${itm.itemname}"/>
<c:set var="ItemCode" value ="${itm.itemcode}"/>
<c:set var="category" value="${itm.category}"/>
<c:set var="description" value="${itm.description}"/>
<c:set var="status" value="${itm.status}"/>
<c:set var="date" value="${itm.date}"/>


<tr>

<td>${itm.itemNo}</td>
<td>${itm.itemname}</td>
<td>${itm.itemcode}</td>
<td>${itm.category}</td>
<td>${itm.description}</td>
<td>${itm.status}</td>
<td>${itm.date}</td>



<c:url  value="updateitem.jsp" var ="ItemUpdate">

<c:param name="ItemNo" value="${ItemNo}"/>
<c:param name="ItemName" value="${ItemName}"/>
<c:param name="ItemCode" value="${ItemCode}"></c:param>
<c:param name="category" value="${category}"></c:param>
<c:param name="description" value="${description}"></c:param>
<c:param name="status" value="${status}"></c:param>
<c:param name="date" value="${date}"></c:param>
</c:url>


<c:url  value="Deleteitem.jsp" var ="Itemdelete">

<c:param name="ItemNo" value="${ItemNo}"/>
<c:param name="ItemName" value="${ItemName}"/>
<c:param name="ItemCode" value="${ItemCode}"></c:param>
<c:param name="category" value="${category}"></c:param>
<c:param name="description" value="${description}"></c:param>
<c:param name="status" value="${status}"></c:param>
<c:param name="date" value="${date}"></c:param>
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