package com.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username =request.getParameter("username");
		String password=request.getParameter("password");
		response.setContentType("text/html");
	   System.out.println(username);
	   System.out.println(password);
		PrintWriter out=response.getWriter();
		 out.println("<!DOCTYPE html>");
		  out.println("<html>");
		  out.println("<head>");
		  out.println("<meta charset=\"utf-8\">");  
		  out.println("<title>LEARNER'S ACADEMY</title>");
		  out.println("<style>");     
		  out.println("p {");       
		  out.println("align:center;");
		  out.println("}");
		  out.println("body{");  
		  out.println("align:center;");
		  out.println("background-color:beige;");
		  out.println("font-size:20px");
		  out.println("font-family:cursive");
		  out.println("}");
		  out.println("</style>");  
		  out.println("</head>");
		  out.println("<body style=background-color:beige align=center>");
		  out.println("<br>");
		  out.println("<br>");
		  out.println("<br>");
		if(!isvalidinput(username,false) || !isvalidinput(password,false)) {
			out.println("<h1>please Enter Valid Input</h1>");
			out.println("<p><a style=color:red href=index.html>HOME PAGE</a></p>");
			out.println("<a href=admin.jsp>Back</a>");
			return;
			}
		if(username.equals("root")&&password.equals("root")) {
			RequestDispatcher rd=request.getRequestDispatcher("adminindex.jsp");
			rd.include(request, response);
		}
		
		else {
			out.println("<p style=background-color:beige><h2> user not found</h2></p>");
			out.println("<a  href=index.html>HOME PAGE</a>");
			
			out.println("<p><a  href=admin.jsp>Back</a></p>");
		}
		out.println("</body>");
		
	}
	private boolean isvalidinput(String inputvalue,boolean checkforno) {
		if(inputvalue==null || inputvalue.isBlank() || inputvalue.isEmpty()) {
			return false;
			}else if(checkforno) {
				try {
					Integer.parseInt(inputvalue);
					return true;
					}catch(Exception e) {
						return false;
						}
				}else {
					return true;
				}
		}


}
