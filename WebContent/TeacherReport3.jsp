<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<script type="text/javascript"
	src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
<script type="text/javascript" src="js.js"></script>
<style type="text/css">
#wrapper {
	position: absolute;
	top: 10%;
	left: 18%;
	transform: translate(0, 0);
	max-width: 80%;
	width: 100%;
	background-color: white;
	padding: 25px;
	border-radius: 5px;
	box-shadow: 4px 4px 2px black;
}

#ReportTable td, #ReportTable th {
	border: 1px solid #ddd;
	padding: 8px;
}

#ReportTable tr:nth-child(even) {
	background-color: #f2f2f2;
}

#ReportTable tr:hover {
	background-color: #ddd;
}

#ReportTable th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #030a45;
	color: white;
}

#downloadreportbtn {
	border-radius: 8px;
	background-color: #007bff;
	border: none;
	color: white;
	padding: 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 15px 0px 0px 270px;
	cursor: pointer;
	width: 200px;
	height: 40px;
}

#h3ID {
	margin-left: 350px;
}

#txtinput {
	border-radius: 8px;
}

#txtinput:focus {
	background-color: #e7feff;
}
</style>
<script>
	function generatePDF() {
		var element = document.getElementById('reporttableBox2');
		var opt = {
			margin : 1,
			filename : 'TeacherReport.pdf',
			image : {
				type : 'jpeg',
				quality : 0.98
			},
			html2canvas : {
				scale : 2
			},
			jsPDF : {
				unit : 'mm',
				format : 'government-letter',
				orientation : 'landscape'
			}
		};
		// New Promise-based usage:
		html2pdf().from(element).set(opt).save();
	}
</script>
</head>
<body>


	<div id="reporttableBox2">

		<center>
			<img src="logos/reportlogo (2).png" class="user_type" alt=""
				style="margin-left: 60px">
		</center>
		<center>
			<h2 style="margin-left: 50px;">Personal Teacher Report</h2>
		</center>



		<table style="margin-left: 10%; width: 80%; padding-left: 10%"
			id="ReportTable">

			<th>Teacher details</th>
			<th>Allocated subject</th>


			<c:forEach var="itm" items="${itemDetails}">
				<tr>
					<td>
						<table style="width: 101%">
							<tr>
								<td>TeacherID:</td>
								<td>${itm.id}</td>
							</tr>

							<tr>
								<td>Teacher Name:</td>
								<td>${itm.fullname}</td>
							</tr>
							<tr>
								<td>Address:</td>
								<td>${itm.adress}</td>
							</tr>
							<tr>
								<td>Gender:</td>
								<td>${itm.gender}</td>
							</tr>
							<tr>
								<td>DoB:</td>
								<td>${itm.dob}</td>
							</tr>
							<tr>
								<td>NIC:</td>
								<td>${itm.nic}</td>
							</tr>
							<tr>
								<td>Phone:</td>
								<td>${itm.phone}</td>
							</tr>
							<tr>
								<td>Qulification:</td>
								<td>${itm.qulification}</td>
							</tr>
							</td>
							</tr>
						</table>
			</c:forEach>
			<td rowspan="1">
				<table style="margin-top: -165px; margin-left: -10px; width: 103%"
					id="ReportTable">

					<th>Allocated year</th>
					<th>Grade</th>
					<th>Class</th>
					<th>Subject</th>
					<c:forEach var="itm" items="${itemDetails1}">


						<tr>



							<td>${itm.year}</td>
							<td>${itm.grade}</td>
							<td>${itm.clz}</td>
							<td>${itm.subject}</td>
						</tr>

					</c:forEach>
				</table>
			</td>
			</tr>

		</table>
		<label style="margin-left: 160px">This Report Genarated In:</label>
		<div id="current_date" style="margin-left: 160px">
			<script>
				var today = new Date();
				var date = today.getFullYear() + '-' + (today.getMonth() + 1)
						+ '-' + today.getDate();
				var time = today.getHours() + ":" + today.getMinutes() + ":"
						+ today.getSeconds();
				var dateTime = date + ' Time- ' + time;
				document.getElementById("current_date").innerHTML = dateTime;
			</script>
		</div>
	</div>
	<input type="submit" onclick="generatePDF()" name="download" value="Download Report" class="btn btn-success" id="downloadreportbtn">
</body>
</html>