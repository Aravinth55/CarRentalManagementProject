<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Delete CompanyAdmin</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
    <h3>Delete CompanyAdmin</h3> 
   <br>
    <form action="/companyadmin/deletecomadmin" method="get"
     style="text-align:center ;margin-top:5%;">
        <label>Enter Car RegisterNo</label> <input type="text"
            placeholder="User Id" name="userid"> 
  <input type='submit' value="submit" name="submit">
    </form>

</body>
</html>