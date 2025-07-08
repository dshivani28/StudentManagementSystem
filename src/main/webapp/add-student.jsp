<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add customer Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> 
<style>
		
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 800px;
        margin: 50px auto;
        background: #fff;
        padding: 30px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        border-radius: 8px;
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
    }

    .form-group {
        width: 100%;
    }

    .row {
        display: flex;
        flex-wrap: wrap;
        margin-bottom: 20px;
        margin-top: 20px;
    }

    .col-md-6 {
        margin-right:10px;
        width: 45%;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input.form-control {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        margin-right:10px;
    }

    .btn-secondary {
        display: block;
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
    }
    .form-group {
              background: rgba(255, 255, 255, 0.85); 
		    padding: 40px;
		    border-radius: 15px;
		    box-shadow: 0px 4px 15px rgba(0, 0, 0, 1.0);
        }

    .btn-secondary:hover {
        background-color: #0056b3;
    }

    .mt-4 {
        margin-top: 20px;
    }
</style>
		

</head>
<body>
	<div class ="container">
	<div class="row">
		<div class="col-md-12">
			<h2>Add Students</h2>
			<form class="form-group" id="forms" method="post" action="student">
			  <input type="hidden" name="action" value="insert">
			<div class="row">
			  <div class="col-md-6">
					<label>Name:</label>
					<input type="text" name="name" class="form-control" id="name" required>
			  </div>
				   <div class="col-md-6">
					<label>	COURSE:</label>
					<input type="text" name="course" class="form-control" id="course"required>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>EMAIL:</label>
				    <input type="text" name="email" class="form-control" id="email" required>
				</div>
				<div class="col-md-6">
					<label>	PHONE:</label>
				    <input type="tel" name="phone" class="form-control"  id="phone" required>
				</div>
			</div>
			
				<div class="mt-4">
				   <input type="submit" value="Save" class="btn btn-success">
			</div>
			
			</form>
		</div>
	</div>
	</div>
	 <jsp:include page="/includes/footer.html" />
</body>
</html>