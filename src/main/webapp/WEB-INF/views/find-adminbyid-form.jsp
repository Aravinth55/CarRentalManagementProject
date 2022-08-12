<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find CompanyAdmin</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
    <h3>Find CompanyAdmin</h3> 
   <br>
    <form action="/companyadmin/findcomadminbyid" method="get"
       style="text-align:center ;margin-top:5%;">
        <label>Enter Car RegisterNo</label> <input type="text"
            placeholder="User Id" name="userid"> 
 <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>