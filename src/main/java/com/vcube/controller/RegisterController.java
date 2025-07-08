package com.vcube.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String name= request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/studentproject","root","root");
			PreparedStatement ps = con.prepareStatement("Insert into users(username,name,email,password)values(?,?,?,?)");
			ps.setString(1,username);
			ps.setString(2,name);
			ps.setString(3,email);
			ps.setString(4,password);
			int i=ps.executeUpdate();
			if(i>0) {
				response.sendRedirect("login.jsp");
			}
			else {
				response.sendRedirect("register.jsp");
			}
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
}
}
