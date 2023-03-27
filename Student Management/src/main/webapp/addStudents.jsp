<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" 
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
ResultSet rs = null;
st = connection.createStatement();
rs = st.executeQuery("select sub_name from subject"); 
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
   vertical-align:middle;

      }
      label {
        display: inline-block;
        width: 150px;
        text-align: right;
      }
    

</style>
</head>
<body align="center">

<form action="addStudent" method="post">
<h1>STUDENT ADDITION</h1>
<h3>Fill the following details to add subject</h3>
<div>
<label>Student name</label><input type="text" name="name"/>
</div><br>
<div>
<label>Student usn</label><input type="text" name="usn"/>
</div><br>
<div>
<label>Subject of Intrest: </label><select name ="subject">
<%while(rs.next()){ %>
<option value="<%=rs.getString("sub_name")%>"><%=rs.getString("sub_name")%></option>
                        <%}%>           
                         </select> 
        </select>
        </div><br>
<input type="submit" value="submit"/></form>

</form>

</body>
</html>