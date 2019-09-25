package com.saini;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;


@WebServlet("/login")
public class login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String i=request.getParameter("u");
		String j=request.getParameter("p");
		String url="jdbc:mysql://localhost:3306/website";
		String sql="select * from data where id=? and password=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,"root","root");
		
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, i);
		st.setString(2, j);
		
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			
			HttpSession s=request.getSession();
			s.setAttribute("user", i);
			response.sendRedirect("welcome.jsp");
			
		}
		else {
			response.sendRedirect("welcome.jsp");
			
		}
		} catch (Exception e) {
			PrintWriter ou=response.getWriter();
			ou.println(e);
		}
		
		
	
	}

}
