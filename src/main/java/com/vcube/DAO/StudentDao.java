package com.vcube.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vcube.model.Student;
import com.vcube.utility.DBConnection;

public class StudentDao {
	
	public List<Student> getAllStudents(){
		List<Student> list = new ArrayList<>();
		String query = "select * from students";
		try {
			Connection con = DBConnection.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			 while (rs.next()) {
	                Student student = new Student(
	                    rs.getInt("id"),
	                    rs.getString("name"),
	                    rs.getString("course"), 
	                    rs.getString("email"),
	                    rs.getLong("phone")
	                );
	                
			 list.add(student);
			 }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	 public void addStudent(Student student) {
		 String query = "Insert into Students (name,course,email,phone) values(?,?,?,?)";
		 try {
			Connection con =DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, student.getName());
			ps.setString(2,student.getCourse());
			ps.setString(3,student.getEmail());
			ps.setLong(4, student.getPhone());
			ps.executeUpdate();
			
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		 
	 }
	 public void updateStudent(Student student) {
		 String query = "update students set name=?, course=?, email=?,phone=? where id=? ";
		 try {
			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement(query);
				ps.setString(1, student.getName());
				ps.setString(2,student.getCourse());
				ps.setString(3,student.getEmail());
				ps.setLong(4, student.getPhone());
				ps.setInt(5, student.getSid());
				ps.executeUpdate();
			 
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
	 }
	 public void deleteStudent(int id) {
		 String  query="delete from students where id=?";
		 try {
			 Connection con =DBConnection.getConnection();
			 PreparedStatement ps =con.prepareStatement(query);
			 ps.setInt(1, id);
			 ps.executeUpdate();
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
	 }
	 public Student getStudentById(int id) {
	        Student s = null;
	        String sql = "SELECT * FROM students WHERE id=?";

	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql)) {

	            stmt.setInt(1, id);
	            ResultSet rs = stmt.executeQuery();

	            if (rs.next()) {
	                s = new Student(id, rs.getString("name"), rs.getString("email"), rs.getString("course"), id);
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return s;
	    }

	
	

}
