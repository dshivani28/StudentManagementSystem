<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LoginPage</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> 
    <style>
        body, html {
            height: 100%;
            margin: 0;
        }

        .background {
            background: url('images/scl3.jpg') no-repeat center center;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-group {
          	background:rgba(255,255,255,0.35);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0,1.0);
            width: 100%;
            max-width: 400px;
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
         
         .text{
         color:black;
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
        
    </style>
</head>
<body>

<div class="background">
    <form id="login-group" method="post" class="form-group" action="login">
        <div class="text-center mb-4">
            <h2 class="header">Login</h2>
        </div>

        <label for="username">UserName:</label>
        <input type="text" name="username" id="username" placeholder="username" class="form-control">

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" placeholder="password" class="form-control">

        <div class="text-center">
            <button type="submit" class="btn btn-success">Login</button>
        </div>
        <div class="text-center mt-3 text">
            Not registered? <a href="register.jsp">Register Here</a>
        </div>
    </form>
</div>
 <jsp:include page="/includes/footer.html" />
 
</body>
</html>
