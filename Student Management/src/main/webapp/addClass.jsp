<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background-color:beige;
}
select{
        width: 120px;
        height: 30px;
        border: 1px solid #999;
        font-size: 18px;
        font-family:cursive;
        color: #1c87c9;
        background-color: #eee;
        border-radius: 5px;
        box-shadow: 4px 4px #ccc;
      }
      input{
      width: 120px;
        height: 30px;
        border: 1px solid #999;
        font-size: 18px;
        
        color: #1c87c9;
        background-color: #eee;
        border-radius: 5px;
      }
      div {
        margin-bottom: 10px;
      }
      label {
        display: inline-block;
        width: 150px;
        text-align: right;
      }
</style>

</head>
<body align="center">
<h1>Class Addition</h1>
<h3>Fill the following details to add class</h3>
<form action="addClass" method="post">
<div>
<label>Class No</label><input type="text" name="no"/>
</div>
<div>
<label>Class Name</label><input type="text" name="name"/>
</div>
<input type="submit" value="submit"/></form> 
<br>
<tr></tr>
<a href="adminindex.jsp">Admin functions page</a><br>
<br>
<a href="index.html">Home</a>

</body>
</html>