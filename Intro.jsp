<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>VCABS Intro</title>
    <link rel="icon" href="vc.png" type="image/gif" sizes="16x16"> 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
    <style>
    * {
    box-sizing: border-box;
    -webkit-font-smoothing: antialiased;
}
form{
text-align:center;
background: lightgrey;
color:black;
width:55%;
box-shadow:  5px 5px 25px 40px rgba(0, 0, 0, 0.19);
padding:10px 25px 10px 25px;
font-weight:bold;
opacity:0.9;
border-radius:20px;}




body {
    background: url("back.jpg") no-repeat;
    background-position: center;
    background-size: cover;
    padding:100px 0 0 30% ;
    font-family: "Comic Sans MS", cursive, sans-serif;
    background-attachment: fixed;
}

img.avatar {
  width: 35%;
  border-radius: 10%;
  opacity: 0.95;
}


button {
  background-color: green;
  color: white;
  padding: 14px 20px ;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  border-radius: 50px;
  width: 50%;
}

button:hover {
  width:47%
}


.loginbtn,.signupbtn{font-family: "Comic Sans MS", cursive, sans-serif;}
.signupbtn {
  float: center;
  width: 50%;
  color:black;
}

    </style>
</head>

<body onloadstart="window.location.replace('https://sites.google.com/view/vcabs/home')">
        <div class="container form">
                <form>
	    <img src="logo1.png" alt="Avatar" class="avatar">
	    <h1 >Welcome to VCABS</h1>
                    <br>
	    <div>
	    	<button class="loginbtn" type="button"><a style="text-decoration:none; color:white;"onclick="window.location.replace('Login.jsp')">LOGIN</a></button>
			<br>
			<div style="color:red;">
			................Do not have a rider account?.................
			</div>
	    	<div>
	    		<button type="button" class="signupbtn" style="background:indigo;"><a style="text-decoration:none; color:white;" onclick="window.location.replace('SignUp.jsp')">SIGN UP</a></button>
	    	</div >
	    	<div style="color:blue;">
			................Know about us..............</div>
	    	<div>
	    		<button type="button" class="signupbtn" style="background:yellow; color:black;"><a style="text-decoration:none; color:black;" href="https://sites.google.com/view/vcabs/home">ABOUT</a></button>
	    	</div>
	    </div>
                </form>

      </div>
       
</body>
</html>