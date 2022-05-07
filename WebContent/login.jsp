<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel = "stylesheet"
   type = "text/css"
   href = "css/signup.css" />
<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">  
<script src="https://kit.fontawesome.com/a81368914c.js"></script>

<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>
    
    <img class="wave" src="css/wave.png">
	<div class="container">
		<div class="img">
			<img src="css/logo.png">
		</div>
		<div class="login-content">
			<form action="loginServlet" method = "post">
				<img src="css/avata.png">
				<h2 class="title">Sign In</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		
           		   		<input type="text" class="input" name="id" placeholder="userID"  pattern="[T][0-9][0-9][0-9]"required>
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	
           		    	<input type="password" class="input" name="password" placeholder="password" pattern=".{8,}"required>
            	   </div>
            	</div>
            	<a href="Signup.jsp">SIGN UP</a>
            	<input type="submit" class="btn" value="Login">
            </form>
        </div>
    </div>

</body>
</html>