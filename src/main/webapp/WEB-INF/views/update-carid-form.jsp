<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Car Registration</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
    <h3>Update Car Registration</h3> 
   <br>
    <form action="/car/updatecarrentalform" method="get"
        style="text-align:center ;margin-top:5%;">
        <label>Enter Car RegisterNo</label> <input type="text"
            placeholder="Car RegNo" name="carregno"> 
   <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>