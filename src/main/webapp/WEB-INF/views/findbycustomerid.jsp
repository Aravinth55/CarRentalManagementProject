<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
    <h3>Find Customer</h3> 
   <br>
    <form action="/customer/findcustomerbyid" method="get"
        style="text-align:center ;margin-top:5%;">
        <label>Enter Customer Id</label> <input type="text"
            placeholder="Customer id" name="cusid"> 
     <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>