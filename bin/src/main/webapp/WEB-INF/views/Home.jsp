<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
*{
margin: 0;
padding: 0;
}
body
 {
    background-image:
        url("https://images.hdqwalls.com/download/jeep-extreme-mudder-aw-1366x768.jpg");
    height: 768px;
    width: 1366px;
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
#welcome{color:white;
text-align: center;
font-size: 40px;
font-family: Times;
}
#admin{color:orange;
text-align: center;
font-size: 30px;
font-family: Times;
}
#customer{color:orange;
text-align: center;
font-size: 30px;
font-family:Times;
}
.menu{
width: 400px;
float: left;
height: 70px;
}
ul{
float: left;
display: flex;
justify-content: center;
align-items: center;
}
ul li{
list-style: none;
margin-left: 62px;
margin-top: 27px;
font-size: 20px; 
}
ul li a{
text-decoration: none;
color: #fff;
font-family: Arial;
font-weight: bold;
transition: 0.4s ease-in-out;
}
ul li a:hover{
color: #ff7200;
}
.search{
width: 330px;
float: left;
margin-left: 270px;
}
.srch{
font-family: 'Times New Roman ';
width: 200px;
height: 40px;
background: transparent;
border: 1px solid #ff7200;
margin-top: 13px;
color: #fff;
border-right: none;
font-size: 16px;
float: left;
padding: 10px;
border-bottom-left-radius: 5px;
border-top-left-radius: 5px;
}
.btn{
width: 100px;
height: 40px;
background: #ff7200;
border: 2px solid #ff7200;
margin-top: 13px;
color: #fff;
font-size: 15px;
border-bottom-right-radius: 5px;
border-bottom-right-radius: 5px;
}
.btn:focus {
	outline: none;
}
.srch:focus {
	outline: none;
}
.form{
width: 250px;
height: 380px;
background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
position: absolute;
top: -20px;
left: 1000px;
border-radius: 10px;
padding: 25px;
}
.form h2{
width: 220px;
font-family: sans-serif;
text-align: center;
color: #ff7200;
font-size: 22px;
background-color: #fff;
border-radius: 10px;
margin: 2px;
padding: 8px;
}
.form input{

width: 240px;
height: 35px;
background: transparent;
border-bottom: 1px solid #ff7200;
border-top: none;
border-right: none;
border-left: none;
color: #fff;
font-size: 15px;
letter-spacing: 1px;
margin-top: 30px;
font-family: sans-serif;

}
.form input:focus {
outline: none;
}
::placeholder{
color: #fff;
font-family: Arial;

}
.btnn{
width:240px;
height: 40px;
background: #ff7200;
border: none;
margin-top: 30px;
font-size: 18px;
border-radius: 10px;
cursor: pointer;
color: #fff;
transition: 0.4s ease;
 }
 .btnn:hover {
	background: #fff;
	color: #ff7200;
}
.btnn a{
text-decoration: none;
color: #000;
font-weight: bold;
}
.form .link{
font-family: Arial;
font-size: 17px;
padding-top: 20px;
text-align: center;
color: #fff;
}
.form .link a{
text-decoration: none;
color: #ff7200;
}
.liw{
padding-top: 15px;
padding-bottom: 10px;
text-align: center;
color: #fff;
}
</style></head>
<body>
<!-- <h1 id="welcome">Welcome</h1>
<div>
<h1 id="admin"> <a href="/companyadmin/adminlogin">CompanyAdmin Login</a></h1>
</div>
<div>
<h1 id="customer"><a href="/customer/customerloginpage">Customer Login</a></h1>
</div> -->
<div class="menu">
<ul>
<li><a href="#">HOME</a></li>
<li><a href="/companyadmin/adminlogin">ADMIN</a></li>
<li><a href="/customer/customerloginpage">CUSTOMER</a></li>
<li><a href="/home/cont">CONTACT</a></li>
</ul>
<!-- <div class="search" >
<input class="srch" type="search" name="" placeholder="Type To text">
<a href="/home/customer"><button class="btn">Search</button></a>
</div> -->
<!-- <div class="content">
<h1>Car Rental & <br><span>Development</span><br>Course</h1>
  --><div class="form">
<h2>Login Here</h2>
<input type="text" name="text" placeholder="Enter CustomerId Here">
<input type="password" name="password" placeholder="Enter password Here">
<button class="btnn"><a href="/home/customer">Login</a></button>
<p class="link">Don't have an account<br>
<a href="/customer/addcustomerform">Sign up here</a></p>
<p class="liw">Log in with</p>
</div>
</div>
</body>
</html>