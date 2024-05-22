<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/76.jpg');
            height: 100vh">
    <div class="container">
    <br>
    	<center>
    			<h1>Login
    			</h1>
    	</center>
    </br>
    	
    		<div class="row">
	    		<div class="col-2"></div>
	    		<div class="col-4">
	    		
	    			<form action="login_page" method="post">
						  <div class="mb-3">
						    <label for="exampleInputEmail1" class="form-label">User name:</label>
						    <input type="text" class="form-control" id="exampleInputEmail1"   name="user">
						  </div>
						  <div class="mb-3">
						    <label for="exampleInputPassword1" class="form-label" >Password:</label>
						    <input type="password" class="form-control" name="password">
						  </div>
						  <div class="mb-3 form-check">
						   		 <input type="checkbox" class="form-check-input" id="exampleCheck1">
						    	 <label class="form-check-label" for="exampleCheck1">Check me out</label>
						  </div>
						  <center>
						  <button type="submit" class="btn btn-primary">Submit</button>
						  </center>
					</form>
	    		
	    		</div>
	    		
	    		<div class="col-2"></div>
    		</div>
    		
   </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>