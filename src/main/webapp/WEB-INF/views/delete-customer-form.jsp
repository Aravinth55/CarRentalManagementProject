<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Customer Registration</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
    <h3>Delete Customer Registration</h3> 
   <br>
    <form action="/customer/deletecustomer" method="get"
       style="text-align:center ;margin-top:5%;">
        <label>Enter Customer Id</label> <input type="text"
            placeholder="Customer id" name="cusid"> 
     
             <input type='submit' value="submit" name="submit">
    </form>

</body>
</html>