<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booked</title>
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
<%@ page import="net.javaguides.login.database.Bookings,net.javaguides.login.bean.BookingBean" %>
	    <%
	    final Bookings booking;
	    booking = new Bookings();
	    String origin = request.getParameter("origin");
	    String destination = request.getParameter("destination");
	    String originAdd = request.getParameter("originAdd");
	    String destinationAdd = request.getParameter("destinationAdd");
	    String date = request.getParameter("date");
	    String time = request.getParameter("time");
	    String mobile = request.getParameter("mobile");
	    
	    if(date!="" && time!="") {
        	BookingBean book = new BookingBean();
            book.setOrigin(origin);
            book.setDestination(destination);
            book.setOriginAdd(originAdd);
            book.setDestinationAdd(destinationAdd);
            book.setDAte(date);
            book.setTIme(time);
            book.setMobile(mobile);
             
            try {
            	//response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
                booking.Bookride(book);
            } catch (Exception e) {
                    // TODO Auto-generated catch block
                e.printStackTrace();
            }
	    }

       %>
        <div class="container form">
                <form>
	    <img src="logo1.png" alt="Avatar" class="avatar">
	    <h1 >You have Successfully BOOKED our service
	    <br></br>
	    </h1>
	    <h2><% out.print("FROM:"+origin); %></h2>
	    <h2><% out.print("TO:"+destination); %></h2>
	    <h2><% out.print("ORIGIN ADDRSS:"+originAdd); %></h2>
	    <h2><% out.print("DESTINATION ADDRESS:"+destinationAdd); %></h2>
	    <h2><% out.print("MOBILE:"+mobile); %></h2>
	  
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