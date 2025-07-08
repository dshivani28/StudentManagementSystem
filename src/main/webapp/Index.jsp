<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        .background {
            background: url('images/scl2.jpg') no-repeat center center;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 8%;
            color: black;
        }

        .left-text h1 {
            font-size: 3em;
            font-weight: bold;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
        }

        .right-buttons {
            display: flex;
            flex-direction: column;
        }

        .btn1 {
            margin: 10px 0;
            padding: 12px 30px;
            font-size: 1.2rem;
            border:1;
            border-radius: 5px;
            background-color:#d8acd1;
            color: solid black;
          
        }

        .btn1:hover {
            background-color:#e170cf;
            color:white;
        }

        @media (max-width: 768px) {
            .background {
                flex-direction: column;
                text-align: center;
                padding: 20px;
            }

            .right-buttons {
                flex-direction: row;
                justify-content: center;
            }

            .btn1 {
                margin: 10px;
            }
        }
    </style>
</head>
<body>
	<div>
    <div class="background">
        <div class="left-text">
            <h1>Welcome to
            <br>Student Management System</h1>
        </div>
        <div class="right-buttons">
            <a href="register.jsp"><button class="btn1">Register</button></a>
            <a href="login.jsp"><button class="btn1">Login</button></a>
        </div>
        
    </div>
    <jsp:include page="/includes/footer.html" />
       </div>
</body>
</html>
