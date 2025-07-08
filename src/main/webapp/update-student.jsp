<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.vcube.model.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<%
    Student student = (Student) request.getAttribute("student");
    if (student == null) {
%>
    <div class="container mt-5">
        <div class="alert alert-danger" role="alert">
            Error: Student data not available. Please go back to <a href="student?action=list">Student List</a>.
        </div>
    </div>
<%
    } else {
%>

<div class="container mt-5">
    <h2>Update Student</h2>
    <form class="form-group" method="post" action="student">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="<%= student.getSid() %>">
        
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="name">Name:</label>
                <input type="text" name="name" id="name" class="form-control" value="<%= student.getName() %>" required>
            </div>
            <div class="form-group col-md-6">
                <label for="course">Course:</label>
                <input type="text" name="course" id="course" class="form-control" value="<%= student.getCourse() %>" required>
            </div>
        </div>
        
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" class="form-control" value="<%= student.getEmail() %>" required>
            </div>
            <div class="form-group col-md-6">
                <label for="phone">Phone:</label>
                <input type="tel" name="phone" id="phone" class="form-control" value="<%= student.getPhone() %>" required>
            </div>
        </div>
        
        <button type="submit" class="btn btn-success">Update</button>
         <button type="submit" class="btn btn-primary">cancel</button>
    </form>
</div>
<% } %>
 <jsp:include page="/includes/footer.html" />
</body>
</html>
