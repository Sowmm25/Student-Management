package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/controller")
public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection connection;
	public void init(ServletConfig config) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			ServletContext context=config.getServletContext();
			String dburl = context.getInitParameter("dburl");
			String dbuser = context.getInitParameter("dbuser");
			String dbpass = context.getInitParameter("dbpassword");
			connection=DriverManager.getConnection(dburl,dbuser,dbpass);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generatedcatch block
			e.printStackTrace();
			}
	}
    public controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ResultSet rs=null;
		ResultSet rs1=null;
		Statement st=null;
		Statement st2=null;
		PrintWriter out=response.getWriter();
		String id=request.getParameter("class");
		System.out.println(id);
		try {
			st=connection.createStatement();
		
		response.setContentType("text/html");
		  out.println("<!DOCTYPE html>");
		  out.println("<html>");
		  out.println("<head>");
		  out.println("<meta charset=\"utf-8\">");  
		  out.println("<title>LEARNER'S ACADEMY</title>");
		  out.println("<style>");    
		 
		  out.println("h1 {");      
		  out.println("background-color:orange;");
		  out.println("border: 1px solid black;");
		  out.println("}");
		  out.println("body{");  
		  out.println("align:center;");
		  out.println("background-color:beige;");
		  out.println("font-size:20px");
		  out.println("font-family:cursive");
		  out.println("}");
		  out.println("</style>"); 
		  out.println("</head>");
		  out.println("<h1>STUDENT CLASS MAPPING</h1>");
		int n = 0;
		int count=0;
			
			
		rs=st.executeQuery("select class_no from class where class_name='"+id+"';");
		 out.println("<body align=center>");
	
		if(rs.next()) {
			
			  String ne=rs.getString("class_no");
			  n=Integer.parseInt(ne);
			  //out.println(n);
			//out.println(name);
			}
			String sql2="select * from students where class_no='"+n+"';";
			rs1=st.executeQuery(sql2);
			while(rs1.next()) {
				String name2=rs1.getString("name");
				String name3=rs1.getString("usn");
				count+=1;
				out.println("<p align=center>"+count+") "+"<strong>NAME:</strong> "+name2+"   "+"<strong>    USN:</strong>  "+name3+"</p>");
				out.println("<br>");
				}
			 
			 out.println("<p align=center>"+"TOTAL COUNT:    "+count+"</p>");
			   out.println("<br>");
				out.println("<p ><a style=color:red href=Home.jsp>Click here to go back</a></p>");
				out.println("<br>");
				out.println("<p><a style=color:red href=index.html>HOME PAGE</a></p>");
			  
			  out.println("</body>");
			  out.println("</html>");
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
