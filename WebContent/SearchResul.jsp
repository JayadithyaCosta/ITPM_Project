<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="itm"  items="${itemDetails}">

<c:set var="ItemNo" value="${itm.itemNo}"/>
<c:set var="ItemName" value="${itm.itemname}"/>
<c:set var="ItemCode" value ="${itm.itemcode}"/>
<c:set var="category" value="${itm.category}"/>
<c:set var="description" value="${itm.description}"/>
<c:set var="status" value="${itm.status}"/>
<c:set var="date" value="${itm.date}"/>

${itm.itemNo}<br>
${itm.itemname}<br>
${itm.itemcode}<br>
${itm.category}<br>
${itm.description}<br>
${itm.status}<br>
${itm.date}<br>



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


<a href="${ItemUpdate}">
<input type="submit" name="submit" value="Update">
</a>
<a href="${Itemdelete}">
<input type="submit" name="submit" value="Delete">
</a>



</c:forEach>
</body>
</html>