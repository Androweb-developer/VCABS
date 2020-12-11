<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>VCABS Booking</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
    <link rel="icon" href="vc.png" type="image/gif" sizes="16x16"> 
    <link href="https://fonts.googleapis.com/css?family=PT+Sans+Narrow&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b2d906b476.js"></script>
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
padding:19px;
position: center;
display:inline-block;

font-weight:bold;
opacity:0.9;
border-radius:20px;}


.form-check-input{
border:none;
border-radius:50px;}

body {
    background: url("back.jpg") no-repeat;
    background-position: center;
    background-size: cover;
    font-family: "Comic Sans MS", cursive, sans-serif;
    background-attachment: fixed;
}
.navbar {
    background-color: blue;
    opacity:0.9;

}
button:focus{
border:none;}
input[type=tel]{
border-radius:50px;
}

input[type=text],input[type=date],input[type=time],input[type=tel] {
  border:none;
  border-radius:20px;
  background:white;
  font-size:18px;
  font-weight:normal;
  padding:20px 25px 20px 25px;
  outline: none;
  font-weight:normal;
  text-align:left;
}
input[type=text]:focus,input[type=tel]:focus {
  outline: none;
  width:80%;
  font-weight:bold;
}
.top{
 color:black;
 font-size:35px;
 font-weight:bold;
  }
img{
padding-bottom:10px;}


h1:hover{
color:green;}

.navbar-brand {
    font-family: "Comic Sans MS", cursive, sans-serif;
    font-size: 30px;
    text-shadow: 3px 3px #8d8d8d8c;
    
}
.fa-phone-square-alt {
    color: black;
}
#telno {
    color: white;
    clear: right;
    line-height: 0.9;
}

.bookride{
border:none;
padding:10px 30px 10px 30px;
border-radius:50px;}


.container.form {
    color: #fff;
}

#match-list {
    position:absolute;
    z-index: 1;

}
    </style>
</head>

<body>


        <nav style="background: yellow;"class="navbar navbar-dark">
            <div class="container-fluid">
                <a class="top" style="color:black; text-decoration:none;" href="#">
                    <img src="logo1.png" width= 50px height= 55px >
                     VCABS Bookings
                </a>
                
                <button style="color: red; background:yellow; border:none;" onclick="window.location.replace('Login.jsp')" >LOGOUT</button>
                <a class="alignright" href="tel:+91-8973671254">
                    <div class="customersupport" >
                        <i class="fas fa-phone-square-alt fa-3x"></i>
                        <div class="float-right">
                            <span  style="text-align:right;color: grey;" >24X7 Support</span>
                            <div id="telno" style="color: black;" >+91-8973671254</div>
                        </div>
                        
                    </div>
                </a>
            </div>
        </nav>
        <div class="container form">
        <br>
        		<div style="text-align:center;">
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions"  value="option1" checked>
                    <label class="form-check-label">ONE WAY</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions"  value="option2">
                    <label class="form-check-label">ROUND TRIP</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions"  value="option3">
                    <label class="form-check-label">MULTI CITY</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions"  value="option4">
                    <label class="form-check-label">PACKAGES</label>
                </div>
                <br></br>
                <form name="myForm1"  action="BookingSuccess.jsp"  method="post">
                <h1>!!  Book Your Ride  !!</h1>
                <hr style="background:black;">
                <center>
                <div style="width:50%; ">
                            <label >MOBILE</label>
                            <input  type="tel" class="form-control" name="mobile"  placeholder="Mobile no."  minlength="10" required>
                        </div>
                        </center>
                        <br>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label >ORIGIN</label>
                            <input  type="text" class="form-control" name="origin"  placeholder="Origin" required>
 
                        </div>
                        <div class="form-group col-md-6">
                            <label >DESTINATION</label>
                            <input  type="text" class="form-control" name="destination" placeholder="Destination" required>
                       
                        </div>
                    </div>
                    <div style="width:100%;"class="form-group">
                        <label >ORIGIN ADDRESS</label>
                        <input type="text" class="form-control" name="originAdd" placeholder="St.No, Apartment, City" required>
                    </div>
                    <div style="width:100%;" class="form-group">
                        <label >DESTINATION ADDRESS</label>
                        <input type="text" class="form-control" name="destinationAdd" placeholder="St.No, Apartment, City" required>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>DATE</label>
                            <input  type="date" class="form-control" name="date" required>
 
                        </div>
                        <div class="form-group col-md-6">
                            <label>TIME(24 Hrs)</label>
                            <input  type="time" class="form-control" name="time" required>
                       
                        </div>
                    </div>
                    <br>
                        <button onclick="alert('VCABS:\nCheck if all the fields are filled.\nAfter confirmation you will get a call from +91 8973671254.')"
                        style="border:none; background:yellow; color:black;" type="submit" class="bookride">BOOK RIDE</button>
                </form>
                
        </div>
       
</body>
</html>