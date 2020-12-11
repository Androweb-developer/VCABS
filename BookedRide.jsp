<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booked Ride</title>
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
    padding:6px 0 0 30% ;
    font-family: "Comic Sans MS", cursive, sans-serif;
    background-attachment: fixed;
}


button{
width:70%;
}

button:hover{
width:200px;
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

h2{
text-align:left;}





.signupbtn{
border:none;
marigin:15px 0 0 0 ;
padding:10px 30px 10px 30px;
border-radius:50px;}

#match-list {
    position:absolute;
    z-index: 1;

}
    </style>
</head>

<body>
            
        <div class="container form">
                <form>
	    <img src="logo1.png" alt="Avatar" class="avatar">
	    <h1 >You are BOOKED for a ride
	    <br></br>
	    </h1>
	    <div style="font-size:30px; color:black;">
		    <h2><% 
	                String origin =(String) session.getAttribute("origin");
	                     out.print(origin); %> </h2>
		    <h2><% 
	                String destination =(String) session.getAttribute("destination");
	                     out.print(destination); %> </h2>
		    <h2><% 
	                String originAdd =(String) session.getAttribute("originAdd");
	                     out.print(originAdd); %> </h2>
		    <h2><% 
	                String destinationAdd =(String) session.getAttribute("destinationAdd");
	                     out.print(destinationAdd); %> </h2>
		    <h2><% 
	                String date =(String) session.getAttribute("date");
	                     out.print(date); %> </h2>
	        <h2><% 
	                String time =(String) session.getAttribute("time");
	                     out.print(time); %> </h2>
	        <h2><% 
	                String mobile =(String) session.getAttribute("mobile");
	                     out.print(mobile); %> </h2></div>
	  
                    <input type="checkbox" onclick="myFunction()" required>
                    <p style="text-align:center;">By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <button  onclick="alert('VCABS:\nCancelling Your Ride....!')" style="border:none; background: red; color: white;"
                         type="button" class="signupbtn"><a onclick="window.location.replace('MainPage.jsp')" style="text-decoration:none; color:white;">CANCEL RIDE</a></button>
                        </div>
                        <div class="form-group col-md-6">
                            <button  onclick="alert('VCABS:\nRedirecting to BOOK another Ride....!')" style="border:none; background: indigo; color: white;"
                         type="button" class="signupbtn"><a onclick="window.location.replace('MainPage.jsp')" style="text-decoration:none; color:white;">BOOK MORE</a></button>
                       
                        </div>
                    </div>
                        
                        
                			   
                </form>

        </div>
       
</body>
</html>