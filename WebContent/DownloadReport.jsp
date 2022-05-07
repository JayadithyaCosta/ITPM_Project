<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
<script type="text/javascript" src="js.js"></script>
<style type="text/css">
#table1{
	border-collapse: collapse;
	width: 100%;
	color: black;
	text-align: left;
	
}
th{
	background-color: black;
	color: white;
}
tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style>

</head>
<body>
<form action="Downloadreportservlet" method="post" >
<center>
     <table>
        <tr >
           
          
             <td>
            
             <label for="assing">Item condition</label>
            <select name="Status">
            
              <option value="Available">Available</option>
              <option value="Discurd">Broken</option>
              <option value="Using">Using</option>
              <option value="Re-condition">Re-condition</option>
              
              </select>
          
          </td>
       </tr>
       </table>    
       
       <input type="submit" name="submit" value="View Report" id="btnsubmit" style="background-color: grey; margin-top:10px; width: 180px;height: 40px; color: white;border-radius: 4px">
        
     
</center>      
  </form>

  
</br>
<center><button onclick="generatePDF()"style="background-color: blue; width: 180px;height: 40px;color: white;border-radius: 4px">Download Report </button> </center>

  <div id="report" >
               <center>
               <div style="background-color: grey; margin-top: 20px; margin-bottom: 20px">
				<img src="css/Logo.png" class="user_type" style="">
				</div>
			   </center>
			    <center><h1>Inventory Report</h1></center>
  <table id="table1">
<th>Item No</th>
<th>Item Name</th>
<th>Item Code</th>
<th>Item Category</th>
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


</table>
</body>
</html>