package com.vcube.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username =request.getParameter("username");
		String password = request.getParameter("password");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/studentproject","root","root");
			PreparedStatement ps =con.prepareStatement("select * from users where username=? and password=?");
			ps.setString(1,username);
			ps.setString(2,password);
			ResultSet rs =ps.executeQuery();
			if(rs.next()) {
				HttpSession session =request.getSession();
				session.setAttribute("name", rs.getString("name"));
				
				response.sendRedirect("student?action=list");
			}
			else {
				response.sendRedirect("login.jsp");
			}
		}
		catch(Exception ae) {
			ae.printStackTrace();
		}
	}

}
