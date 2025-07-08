package com.vcube.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection con;
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/studentproject","root","root");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
		public static Connection getConnection(){
			return con;
		}
	}


