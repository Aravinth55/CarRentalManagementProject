<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Delete Car Registration</title><style type="text/css">
body {
    background-image: url("https://cdn.wallpapersafari.com/60/8/fUDlIm.jpg");
    height: 768px;
    width: 1366px;
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
</style>
</head>
<body>
    <h3>Delete Car Registration</h3> 
   <br>
    <form action="/car/deletecar" method="get"
       style="text-align:center ;margin-top:5%;">
        <label>Enter Car RegisterNo</label> <input type="text"
            placeholder="Car RegNo" name="carregno"> 
  <input type='submit' value="submit" name="submit">
    </form>

</body>
</html>