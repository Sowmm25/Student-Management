<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style type=text/css>   
body{
background-color:beige;
}
.navbar { 
display: flex;  
align-items: center;   
background-color:orange;  
padding:20px;   

  
}  
.navbar * {  
display: inline;  
}  
.navbar li {  
margin: 50px;  
}  
.navbar li a {  
color: blue;  
text-decoration: none;  
}  
</style>  
<body align="center">
<header>
<h1>LEARNER'S ACADEMY ADMIN PORTAL</h1></header>
<nav class="navbar">
<ul>
<li>
<a href="addStudents.jsp">Add Students</a>

</li>
<li>
<a href="addTeachers.jsp">Add Teachers    </a>

</li>
<li>
<a href="addSubject.jsp">Add Subject</a>

</li>
<li>
<a href="addClass.jsp">Add Class</a>
</li>
<li>
<a href="index.html">Home</a>
</ul>
</nav>


</body>
</html>