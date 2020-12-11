<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="vc.png" type="image/gif" sizes="16x16"> 
<style>

form {
  box-shadow:  5px 5px 25px 40px rgba(0, 0, 0, 0.19);
  background: lightgrey;
  border-radius:15px;
  opacity: 0.9;
  height:50%;
  font-weight:light;
  text-align:center;
  width: 400px;
  padding: 12px;
}

input[type=text],input[type=tel], input[type=password] {
  width: 70%;
  padding: 14px;
  border: 1px solid white;
  text-align:center;
  margin: 5px 0 22px 0;
  font-family: "Comic Sans MS", cursive, sans-serif;
  display: inline-block;
  font-size:18px;
  border-radius:30px;
  background: white;
}


input[type=text]:focus,input[type=tel]:focus, input[type=password]:focus {
font-weight:bold;
  outline: none;
  width: 80%;
  
}

button {
  background-color: green;
  color: white;
  padding: 14px 20px ;
  margin: 8px 0;
  border: none;
  font-family: "Comic Sans MS", cursive, sans-serif;
  cursor: pointer;
  border-radius: 50px;
  width: 50%;
}

button:hover {
  width:47%
}
body {
  background: url("back.jpg") no-repeat;
  background-position: center;
  padding:25px 0 0 0;
  font-family: "Comic Sans MS", cursive, sans-serif;
    background-size: cover;
    background-attachment: fixed;
}


.dark-mode {
  background-color: black;
  color:yellow;
}

.imgcontainer {
  text-align: center;
  margin: 10px 0 0 0;
}

img.avatar {
  width: 35%;
  border-radius: 10%;
  opacity: 0.95;
}

.signupbtn{
color:white;}


.container {
border-radius: 50px;
text-align: center;
  padding: 10px;
}
.container1{text-align: left;
padding: 0 10px 0 10px;
}

span.psw {
  float: right;
  color: lightblue;
}
.h1{
text-align:center;}
.loginbtn,.signupbtn{
font-family: "Comic Sans MS", cursive, sans-serif;}
.signupbtn {
  float: center;
  color:white;
  width: 50%;
}

}
</style>
<meta charset="ISO-8859-1">
<title>VCABS Driver Login</title>
</head>
<body>
	 <div align="center">
	  <form name="login" action="DriverServlet" method="post">
	  <div class="imgcontainer">
	    <img src="logo1.png" alt="Avatar" class="avatar">
	  </div>
	
	  <div class="container">
	  <h1 >VCABS Driver Login</h1>
	  
	  <hr style="background:black;">
	    <label for="uname"><b>DRIVER ID</b></label>
	    <input type="tel" placeholder="Enter ID" name="DriverID" maxlength="7" required>
	    <br>
	
	    <label for="psw"><b>PASSWORD</b></label>
	    <input type="password" placeholder="Enter Password" name="Dpassword" required>
	
	    <div class="container1">
	      <input  type="checkbox"  name="remember" onclick="myFunction()"> Keep in Mind<span class="psw"><a 
	       href="mailto:androdevelop850@gmail.com" style="color:blue;text-decoration:none;" onclick="alert('Contact the ADMIN for help.\nMail:androdevelop850@gmail.com')">Forgot password?</a></span>
	    </div>
	    <br>
	    <div>
	    	<button class="loginbtn" type="submit" onclick="alert('VCABS:\nLogin Processing........!')" >BOOKED RIDE</button>
			<br>
	    </div>
	  </div>
	  
	  </form>
	  
	 </div>
</body>
</html>