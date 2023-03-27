<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style type=text/css>  
<style>
body{
background-color:beige;
font-family:cursive;

}
input{
      width: 180px;
        height: 30px;
        border: 1px solid #999;
        font-size: 18px;
        
        font-family:cursive;
        background-color: #eee;
        border-radius: 5px;
      }
</style>
<h1>LOGIN PORTAL</h1>
<body align="center" style="background-color:beige">
<form action=loginServlet method="post">
username:<input type="text" name="username"/><br>
<br>
Password:<input type="password" name="password"/><br>
<br>
 <input type="submit" value="submit"/> 
 </form>

</body>
</html>