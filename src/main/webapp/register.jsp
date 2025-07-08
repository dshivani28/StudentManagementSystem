<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Form </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> 
    <style>
    	
    	 body {
            background: url('images/scl3.jpg') no-repeat center center;
            background-size: cover;
            background-attachment: fixed;
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }
    		
    
        .header {
            font-size: 28px;
            text-align: center;
            font-weight: bold;
            margin-bottom: 30px;
            margin-top: 10px;
        }
        .form-group {
            background: rgba(255, 255, 255, 0.35); 
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 1.0);
        }
        .form-control {
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
        }
        label {
            font-weight: bold;
            color: #333;
        }
        .verify {
            color: red;   
        }
        .btn-success {
            background-color: #4CAF50;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-success:hover {
            background-color: #45a049;
        }
        .col-md-3 {
            margin-top: 20px;
        }
        .row1 {
            margin-bottom: 20px;
        }
        
        .text{
        	color:white;
        }
        .text a{
        	color:white;
        	font-weight:bold;
        	text-decoration:underline;
        }
        .text a:hover{
        	color:black;
        	font-weight:bold;
        	text-decoration:underline;
        }
        
        
        @media screen and (max-width: 768px) {
    .form-group {
        padding: 20px;
    }

    .header {
        font-size: 24px;
    }

    .btn-success {
        width: 100%;
    }

    .row1 .col-md-6 {
        margin-bottom: 20px;
    }
    </style>
</head>
<body>

<div class="container-fluid">
    <div class="row row1">
        <div class="col-md-12 ">
            <h1 class="header">Registration Form.</h1>
        </div>
    </div>
</div>

<div class="container">
    <div class="row row1">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <form class="form-group" action="register" method="post" onsubmit="return validation();">
                <div class="row row1">
                    <div class="col-md-6">
                        <label>UserName :</label>
                        <input type="text" name="username" id="username" class="form-control">
                        <p class="verify" id="verify-username"></p>
                    </div>
                    <div class="col-md-6">
                        <label>Name:</label>
                        <input type="text" name="name" id="name" class="form-control">
                        <p class="verify" id="verify-name"></p>
                    </div>
                </div>
                <div class="row row1">
                    <div class="col-md-6">
                        <label>Email:</label>
                        <input type="email" name="email" id="email" class="form-control">
                        <p class="verify" id="verify-email"></p>
                    </div>
                    <div class="col-md-6">
                        <label>Password:</label>
                        <input type="password" name="password" id="password" class="form-control">
                        <p class="verify" id="verify-password"></p>
                    </div>
                </div>
                <div class="row row1">
                    <div class="col-md-6">
                        <label>Confirm Password :</label>
                        <input type="password" name="repassword" id="re-password" class="form-control">
                        <p class="verify" id="verify-re-password"></p>
                    </div>
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-success">Register</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>

<div class="container-fluid">
    <div class="row text">
        <div class="col-md-12 text-center">
            Already Registered? <a href="login.jsp">Login here</a>
        </div>
    </div>
</div>

<script>
    document.getElementById("name").addEventListener("keypress", Onlychars);

    function Onlychars(event) {
        var ch = event.which;
        if (!((ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122) || (ch == 8) || (ch == 32))) {
            event.preventDefault();
        }
    }

    function validation() {
        const username = document.getElementById("username").value.trim();
        const name = document.getElementById("name").value.trim();
        const email = document.getElementById("email").value.trim();
        const password = document.getElementById("password").value.trim();
        const repwd = document.getElementById("re-password").value.trim();

        let valid = true;

        if (username === "") {
            document.getElementById("verify-username").innerHTML = "* Username is mandatory";
            valid = false;
        } else if (!/^[a-zA-Z0-9]{4,}$/.test(username)) {
            document.getElementById("verify-username").innerHTML = "* Username must be at least 4 characters, alphanumeric";
            valid = false;
        } else {
            document.getElementById("verify-username").innerHTML = "";
        }

        if (name === "") {
            document.getElementById("verify-name").innerHTML = "* Name is mandatory";
            valid = false;
        } else {
            document.getElementById("verify-name").innerHTML = "";
        }

        if (email === "") {
            document.getElementById("verify-email").innerHTML = "* Email is mandatory";
            valid = false;
        } else if (!/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(email)) {
            document.getElementById("verify-email").innerHTML = "* Enter a valid email";
            valid = false;
        } else {
            document.getElementById("verify-email").innerHTML = "";
        }

        if (password === "") {
            document.getElementById("verify-password").innerHTML = "* Password is mandatory";
            valid = false;
        } else {
            document.getElementById("verify-password").innerHTML = "";
        }

        if (repwd === "") {
            document.getElementById("verify-re-password").innerHTML = "* Confirm password is mandatory";
            valid = false;
        } else if (password !== repwd) {
            document.getElementById("verify-re-password").innerHTML = "* Passwords do not match";
            valid = false;
        } else {
            document.getElementById("verify-re-password").innerHTML = "";
        }

        return valid;
    }
</script>
 <jsp:include page="/includes/footer.html" />
</body>
</html>
