<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fetch Customer ReturnCars</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
    <h3>Fetch Customer ReturnCars</h3> 
   <br>
    <form action="/customer/getcustomerreturncars" method="get"
       style="text-align:center ;margin-top:5%;">
        <label>Enter Customer Id</label> <input type="text"
            placeholder="Customer Id" name="cusid"> 

            <input type='submit' value="Fetch" name="submit"> 
    </form>

</body>
</html>