package com.saini;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/singup")
public class singup extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String first=request.getParameter("first");
	String last=request.getParameter("last");
	String email=request.getParameter("email");
	String mobile=request.getParameter("mobile");
	String user=request.getParameter("id");
	String pass=request.getParameter("password");
	String gender=request.getParameter("Geneder");
	
	String url="jdbc:mysql://localhost:3306/website";
	String sql="insert into data values(?,?,?,?,?,?,?)";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
	
	PreparedStatement st=con.prepareStatement(sql);
	st.setString(1,first );
	st.setString(2, last);
	st.setString(3, email);
	st.setString(4,mobile );
	st.setString(5, user);
	st.setString(6, pass);
	st.setString(7, gender);
	int count=st.executeUpdate();
	
	response.sendRedirect("login.jsp");
	} catch (Exception e) {
	PrintWriter out=response.getWriter();
	out.println("Plese try again here is an Proublem..");
	}
	
	
	
	}

}
