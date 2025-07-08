<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.vcube.model.Student" %>
<%@ page import="java.util.*,com.vcube.DAO.StudentDao" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudentsList</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> 

<style>
   body {
   		font-family: 'Poppins', sans-serif;
   		margin: 0;
   		padding: 0;
   }

   body::before {
   		content: "";
   		background-image: url('images/scl1.jpg');
   		background-size: cover;
   		background-position: center;
   		position: fixed;
   		top: 0;
   		left: 0;
   		width: 100%;
   		height: 100%;
   		z-index: -1;
   		opacity: 0.7;
   }

   .container {
       margin-top: 20px;
   }

   .table {
       background-color: #f9f9f9;
       border: 1px solid #dee2e6;
       border-radius: 5px;
   }

   .table thead th {
       background-color: #e6c5dc;
       color: #333;
       font-weight: bold;
       text-align: center;
   }

   .table td, .table th {
       vertical-align: middle;
       text-align: center;
   }

   .btn-success:hover {
       background-color: #28a745cc;
       border-color: #28a745cc;
   }

   .btn-info:hover {
       background-color: #17a2b8cc;
       border-color: #17a2b8cc;
   }

   .btn-danger:hover {
       background-color: #dc3545cc;
       border-color: #dc3545cc;
   }

   @media (max-width: 576px) {
       .header h1 {
           font-size: 18px;
       }

       .container h2 {
           font-size: 20px;
       }

       .btn {
           margin-bottom: 5px;
       }
   }
</style>
</head>
<body>


<div class="container-fluid" style="background-color: #f8f9fa; padding: 10px;">
    <div class="row">
        <div class="col-md-6">
            <h1 style="margin: 0; font-weight: bold; font-size: 2.5rem;">Student Management System</h1>
        </div>
        <div class="col-md-6 text-right">
            <a href="logout.jsp" class="btn btn-sm" style="text-decoration:underline">Logout</a>
        </div>
    </div>
</div>

<!-- Student List Section -->
<div class="container">
    <h2 class="mb-3">Students List</h2>
    <a href="student?action=new" class="btn btn-success">Add Students</a>
</div>

<table class="table mt-3">
    <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>COURSE</th>
            <th>EMAIL</th>
            <th>PHONE</th>
            <th>ACTIONS</th>
        </tr>
    </thead>
    <tbody>
        <%
            StudentDao studentdao = new StudentDao();
            List<Student> std = studentdao.getAllStudents();
            for(Student s : std) {
        %>
        <tr>
            <td><%= s.getSid() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getCourse() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getPhone() %></td>
            <td>
                <a href="student?action=edit&id=<%= s.getSid() %>" class="btn btn-secondary btn-sm">Update</a>
                <a href="student?action=delete&id=<%= s.getSid() %>"
                   class="btn btn-danger btn-sm"
                   onclick="return confirm('Are you sure you want to delete?');">
                   Delete
                </a>
            </td>
        </tr>
        <% } %>
    </tbody>
</table>
	 <jsp:include page="/includes/footer.html" />
</body>
</html>
