<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    <%
Class.forName("com.mysql.jdbc.Driver");
Connection connection = 
DriverManager.getConnection("jdbc:mysql://localhost/learneracademy","root","root");
Statement st = null;
Statement st2=null;
ResultSet rs = null;
ResultSet rs1 = null;
st = connection.createStatement();
st2 = connection.createStatement();
rs = st.executeQuery("select class_name from class"); 
rs1=st2.executeQuery("select * from subject order by class_no");
%>
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
<h1>TEACHER ADDITION</h1>
<h3>Fill the following details to add teacher</h3>
<body align="center">

<form action="addTeachers" method="post">
<div>
<label>Name</label>
<input type="text" name="name"/>
</div>
<div>
<label>Teacher ID</label><input type="text" name="id"/>
</div>
<div>
<label>Specialization</label><input type="text" name="spec"/>
</div>
<div>
<label>Select Class</label>
<select name="class">
<%while(rs.next()){ %>
<option value="<%=rs.getString("class_name")%>"><%=rs.getString("class_name")%></option>
                        <%}%>           
                         </select> 
        
</select>

</div>
<div>
<input type="submit" value="submit"/></form>
</div>
<a href="subjectRef.jsp">Click here to view subject allocation</a><br>
<br>
<a href="teacherRef.jsp">Click here to view teacher's Allotment</a>



</body>
</html>