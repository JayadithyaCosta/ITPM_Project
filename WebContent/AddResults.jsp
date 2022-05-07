<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>

<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
</head>
<body>
	<input type="checkbox" id="nav_animation">



	<div class="sidenav">

		<div>
			<h4
				style="display: inline-block; align-items: center; font-weight: 400; color: #dfdfdf">
				<img src="css/abacus.png" class="user_type" alt="userprofile"
					style="width: 60px; height: 60px"> ABACUS
			</h4>
		</div>

		<a href="index.jsp"><i class="fas fa-home" aria-hidden="true"></i><span>Home</span></a>
		<a href="searchMarks.jsp"><i class="fa fa-archive"
			aria-hidden="true"></i><span>Search Marks</span></a> <a
			href="AddResults.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Add
				Results</span></a>
		<!--<a href="Addprogress.jsp"><i class="fa fa-plus" aria-hidden="true"></i><span>Evaluate</span></a>-->
		<a href="Editmark.jsp"><i class="fa fa-cogs" aria-hidden="true"></i><span>Update
				Results</span></a> <a href="deleteMark.jsp"><i class="fas fa-trash"
			aria-hidden="true"></i><span>Delete Results</span></a>
		<!--<a href="SearchSubject.jsp"><i class="fas fa-edit" aria-hidden="true"></i><span>List Subject Result</span></a>-->
		<a href="Report.jsp"><i class="fas fa-download" aria-hidden="true"></i><span>Download
				Report</span></a>

	</div>

	<div class="workspace">
		<div class="card">

			<div class="card-header">
				<h2>Enter Results</h2>
			</div>

			<div class="card-body col text-center" style="border-radius: 10px">

				<form action="AddResult" method="post">

					<div class="form-group col-md-8" style="padding-left: 250px">
						<label>Enter Student Id </label><input type="text"
							class="form-control" name="stid" pattern="[S][0-9][0-9][0-9]"
							placeholder="SXXX" required><br>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Subject 01:</label> <select name="subject01"
								style="border: 1px solid gray; border-radius: 5px" required>
								<option value="Maths">Maths</option>
								<option value="English">English</option>
								<option value="History">History</option>
								<option value="Religion">Religion</option>
								<option value="Sinhala Lang and lit">Sinhala lang and
									lit</option>
								<option value="Science">Science</option>
							</select>
						</div>
						<div class="form-group col-md-2">
							<input type="text" class="form-control" name="mark1"
								placeholder="Enter Mark..." required>
						</div>
					</div>


					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Subject 02:</label> <select name="subject02"
								style="border: 1px solid gray; border-radius: 5px" required>
								<option value="Maths">Maths</option>
								<option value="English">English</option>
								<option value="History">History</option>
								<option value="Religion">Religion</option>
								<option value="Sinhala Lang and lit">Sinhala lang and
									lit</option>
								<option value="Science">Science</option>
							</select>
						</div>
						<div class="form-group col-md-2">
							<input type="text" class="form-control" name="mark2"
								placeholder="Enter Mark..." required>
						</div>
					</div>


					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Subject 03:</label> <select name="subject03"
								style="border: 1px solid gray; border-radius: 5px" required>
								<option value="Maths">Maths</option>
								<option value="English">English</option>
								<option value="History">History</option>
								<option value="Religion">Religion</option>
								<option value="Sinhala Lang and lit">Sinhala lang and
									lit</option>
								<option value="Science">Science</option>
							</select>
						</div>
						<div class="form-group col-md-2">
							<input type="text" class="form-control" name="mark3"
								placeholder="Enter Mark..." required>
						</div>
					</div>


					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Subject 04:</label> <select name="subject04"
								style="border: 1px solid gray; border-radius: 5px" required>
								<option value="Maths">Maths</option>
								<option value="English">English</option>
								<option value="History">History</option>
								<option value="Religion">Religion</option>
								<option value="Sinhala Lang and lit">Sinhala lang and
									lit</option>
								<option value="Science">Science</option>
							</select>
						</div>
						<div class="form-group col-md-2">
							<input type="text" class="form-control" name="mark4"
								placeholder="Enter Mark..." required>
						</div>
					</div>


					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Subject 05:</label> <select name="subject05"
								style="border: 1px solid gray; border-radius: 5px" required>
								<option value="Maths">Maths</option>
								<option value="English">English</option>
								<option value="History">History</option>
								<option value="Religion">Religion</option>
								<option value="Sinhala Lang and lit">Sinhala lang and
									lit</option>
								<option value="Science">Science</option>
							</select>
						</div>
						<div class="form-group col-md-2">
							<input type="text" class="form-control" name="mark5"
								placeholder="Enter Mark..." required>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Subject 06:</label> <select name="subject06"
								style="border: 1px solid gray; border-radius: 5px" required>
								<option value="Maths">Maths</option>
								<option value="English">English</option>
								<option value="History">History</option>
								<option value="Religion">Religion</option>
								<option value="Sinhala Lang and lit">Sinhala lang and
									lit</option>
								<option value="Science">Science</option>
							</select>
						</div>
						<div class="form-group col-md-2">
							<input type="text" class="form-control" name="mark6"
								placeholder="Enter Mark..." required><br>
							<br>
						</div>
					</div>


					<div class="form-row">
						<div class="form-group col-md-7">
							<label>Basket Subject 1:</label><br> <select
								name="subject07"
								style="border: 1px solid gray; border-radius: 5px" required>
								<option value="Music">Music</option>
								<option value="English Literature">English Literature</option>
								<option value="IT">IT</option>
								<option value="Hygiene">Hygiene</option>
								<option value="Western Music">Western Music</option>
								<option value="Business Studies">Business Studies</option>
							</select>
						</div>
						<div class="form-group col-md-3">
							<input type="text" class="form-control" style="margin-top: 31px"
								name="mark7" placeholder="Enter Mark..." required>
						</div>
					</div>


					<div class="form-row">
						<div class="form-group col-md-7">
							<label>Basket Subject 2:</label><br> <select
								name="subject08"
								style="border: 1px solid gray; border-radius: 5px" required>
								<option value="Music">Music</option>
								<option value="English Literature">English Literature</option>
								<option value="IT">IT</option>
								<option value="Hygiene">Hygiene</option>
								<option value="Western Music">Western Music</option>
								<option value="Business Studies">Business Studies</option>
							</select>
						</div>
						<div class="form-group col-md-3">
							<input type="text" class="form-control" style="margin-top: 31px"
								name="mark8" placeholder="Enter Mark..." required>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-7">
							<label>Basket Subject 3:</label><br> <select
								name="subject09"
								style="border: 1px solid gray; border-radius: 5px" required>
								<option value="Music">Music</option>
								<option value="English Literature">English Literature</option>
								<option value="IT">IT</option>
								<option value="Hygiene">Hygiene</option>
								<option value="Western Music">Western Music</option>
								<option value="Business Studies">Business Studies</option>
							</select>
						</div>
						<div class="form-group col-md-3">
							<input type="text" class="form-control" style="margin-top: 31px"
								name="mark9" placeholder="Enter Mark..." required>
						</div>
					</div>

					<div style="margin-top: 25px">
						<button type="submit" name="Submit" class="btn btn-primary"
							style="width: 29%">Submit</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>