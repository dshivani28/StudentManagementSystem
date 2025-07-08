package com.vcube.controller;

import java.io.IOException;

import java.util.List;

import com.vcube.DAO.StudentDao;
import com.vcube.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/student")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private StudentDao studentdao;

	public void init() {
		studentdao = new StudentDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");
		if (action == null) action = "list";

		switch (action) {
			case "new":
				request.getRequestDispatcher("add-student.jsp").forward(request, response); 
				break;

			case "edit":
				int id = Integer.parseInt(request.getParameter("id"));
				Student std = null;
				List<Student> students = studentdao.getAllStudents();
				for (Student s : students) {
					if (s.getSid() == id) {
						std = s;
						break;
					}
				}
				if (std != null) {
					request.setAttribute("student", std); 
					request.getRequestDispatcher("update-student.jsp").forward(request, response);
				} else {
					response.sendRedirect("student?action=list");
				}
				break;

			case "delete":
				int deleteId = Integer.parseInt(request.getParameter("id"));
				studentdao.deleteStudent(deleteId);
				response.sendRedirect("student?action=list");
				break;

			case "list":
			default:
				List<Student> list = studentdao.getAllStudents();
				request.setAttribute("listStudent", list);
				request.getRequestDispatcher("list-students.jsp").forward(request, response);
				break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");

		if ("insert".equals(action)) {
			Student std = new Student();
			std.setName(request.getParameter("name"));
			std.setCourse(request.getParameter("course"));
			std.setEmail(request.getParameter("email"));
			std.setPhone(Long.parseLong(request.getParameter("phone")));
			studentdao.addStudent(std);
			response.sendRedirect("student?action=list");

		} else if ("update".equals(action)) {
			Student s= new Student();
			s.setSid(Integer.parseInt(request.getParameter("id")));
			s.setName(request.getParameter("name"));
			s.setCourse(request.getParameter("course"));
			s.setEmail(request.getParameter("email"));
			s.setPhone(Long.parseLong(request.getParameter("phone")));
			studentdao.updateStudent(s);
			response.sendRedirect("student?action=list");

		} else {
			response.sendRedirect("student?action=list");
		}
	}
}
