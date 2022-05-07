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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
  box-shadow: 4px 4px 2px #18A81A;
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
			
			<a href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
			<a href="Additem.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Item</span></a>
			<a href="search.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Item Details</span></a>
			<a href="Searchitem.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Update Item Info</span></a>
			<!-- <a href="reportinput.jsp"><i class="fa fa-calculator" aria-hidden="true"></i><span>item count</span></a> -->
			<a href="DownloadReport.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Inventory Report</span></a>
			
		
			
			</div>
			

<div class="container container-table">
    <div class="row vertical-center-row">
        <div class="text-center col-lg-10 col-md-offset-4" style="left: 200px; margin-top: 150px; background-color: #ded6d5; border-radius: 10px">
        <div class="card-header">
        <h4>
            Search Results
        </h4>
  </div>
  <div class="card-body">
    <form action="Reportservlet"  method="post">
			<div class="input_field">
			<label for="assing">Item condition</label>
            <select name="Status">
            
              <option value="Available">Available</option>
              <option value="Discurd">Broken</option>
              <option value="Using">Using</option>
              <option value="Re-condition">Re-condition</option>
              
              </select>
          

			</div>
			
			
			<button type="submit" name="Search" value="Search" class="btn btn-primary" style="width: 25%">Submit</button>
			
			
	</form>	
  </div>
        </div>
    </div>
</div>
		
	
 <div id="report" style="padding-left:0px;padding-right: 20px">
 <table style="margin-left: 18%;width:80%;padding-left: 10%">
<th>Item No</th>
<th>Item Name</th>
<th>Item Code</th>
<th>Item Categorey</th>
<th>Item Description</th>
<th>Item Condition</th>
<th>Date</th>

<c:forEach var="itm"  items="${itemDetails}">
<tr>

<td id="td1">${itm.itemNo}</td>
<td id="td1">${itm.itemname}</td>
<td id="td1">${itm.itemcode}</td>
<td id="td1">${itm.category}</td>
<td id="td1">${itm.description}</td>
<td id="td1">${itm.status}</td>
<td id="td1">${itm.date}</td>
</tr>

</c:forEach>  
</div> 
<tr>
    <td><a  href="DownloadReport.jsp"><button style="background-color: blue; width: 180px;height: 40px;color: white;border-radius: 4px">Download Report pdf </button></a> </td>
</tr>

</table>

</body>
</html>