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
<style type="text/css">
#wrapper{
  position: absolute;
  top: 10%;
  left: 28%;
  transform: translate(0,0);
  max-width:60%;
  width: 60%;
  background-color:white;
  padding: 25px;
  border-radius: 5px;
  box-shadow: 4px 4px 2px #18A81A; 
  background-color: 
  

  
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

	<h3 align="center"><span> Kanampella </span><span> Junior </span><span>   School     </span>  </span> <span>   -Inventory     </span> </h3>

	</div>

	<!-- <div class="logout">
	<a href="login.jsp" class="logout_btn"></a>
	</div>-->
			
		</header>
			
			<div class="sidenav">
			<center>
				<img src="css/logo.jpeg" class="user_type" alt="">
			</center>
			
			<a href="Home.jsp"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
			<a href="Additem.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add Item</span></a>
			<a href="search.jsp"><i class="fa fa-search" aria-hidden="true"></i><span>Search Item Details</span></a>
			<a href="Searchitem.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Update Item Info</span></a>
			<a href="reportinput.jsp"><i class="fa fa-archive" aria-hidden="true"></i><span>Inventory Report</span></a>
			
		
			
			</div>
			
			<br><br>
			<br><br>
			<br><br>
			<br><br>
			
			
		
<div class="wrapper" id="wrapper">


<form action="ViewReportservlet" method="post" >
  
  
  
     <table >
        <tr >
           
            <td>
             <label for="assing" >Item Name:</label>
            <select name="ItemName" id="ItemName" class="form-control"  >
            <c:forEach var="itm"  items="${itemDetails}">
              <option value="${itm.itemName}">${itm.itemName}</option>
              </c:forEach>
             </select>
            
            </td>
            
            
       </tr>
      
     </table>
            
            
				
			
            
          <div class="btn1">
			<input type="submit" name="submit" value="view report" id="btnsubmit">
          </div>
          
  </form>
  </div>
  </br>
</br>
</br>
</br>
</br>
  
 <table style="margin-left: 28%;width:60%;padding-left: 10%">
 <th>Item Name</th>
 <th>Available</th>
 <th>Using</th>
 <th>Re-Condition</th>
 <th>Broken</th>
 <th>Total</th>

 
   <tr>
       <td >
       ${itemDetails7}
       </td>
       <td>
       ${itemDetails3}
       </td>
       <td>
       ${itemDetails4}
       </td>
       <td>
       ${itemDetails5}
       </td>
       <td>
       ${itemDetails6}
       </td>
       <td>
        ${itemDetails2}
       </td>
       
  </tr> 
 </table>  

</body>
</html>