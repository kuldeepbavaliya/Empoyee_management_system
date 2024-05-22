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
  <script type="text/javascript">
 
	  alert("Are you sour Delete Record");
  </script>
<body>
<% if(session.getAttribute("user")==null){response.sendRedirect("login.jsp");}%>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="createEmployee.jsp">Add</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="deleteEmployee.jsp">Remove</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="updateEmployee.jsp">Update</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="listEmployee.jsp">List</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<div class="row">
	    		<div class="col-4"></div>
	    		<div class="col-4">
<div class="mb-3">
<form action="sdelete" method="post">
		    <label  class="form-label" >Emp Search Name:</label>
		    <input type="text" name="searchd" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		    <div id="emailHelp" class="form-text"></div>
		    <center>
		    <button type="submit" class="btn btn-primary">Search</button>
		    </center>
</form>
		 	 </div>
				</div>
				<div class="col-4"></div>
</div>
		
 <div class="row" >
	    		<div class="col-4"></div>
	    		<div class="col-4" style="border:5px solid black;">
		<form action="deleteEmployee" method="post">
		  <div class="mb-3">
		    <label  class="form-label" >Emp first name:</label>
		    <input type="text" name="fname" value="<% if(session.getAttribute("fn")==null){out.println("");}else{out.println(session.getAttribute("fn"));} %>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		    <div id="emailHelp" class="form-text"></div>
		  </div>
		  <div class="mb-3">
		    <label  class="form-label" >Emp last name:</label>
		    <input type="text" name="lname" value="<% if(session.getAttribute("ln")==null){out.println("");}else{out.println(session.getAttribute("ln"));} %>"  class="form-control" id="exampleInputPassword1">
		  </div>
			<div class="mb-3">
		    <label  class="form-label" >Emp Salary:</label>
		    <input type="text" name="salary" value="<% if(session.getAttribute("sa")==null){out.println("");}else{out.println(session.getAttribute("sa"));} %>" class="form-control" id="exampleInputPassword1">
		  </div>		  
		  <div class="mb-3">
		    <label  class="form-label">Emp Doj:</label>
		    <input type="text" name="doj" value="<% if(session.getAttribute("doj")==null){out.println("");}else{out.println(session.getAttribute("doj"));} %>"  class="form-control"  id="exampleInputPassword1">
		  </div>
		  <div class="mb-3">
		    <label  class="form-label">Emp Department:</label>
		    <input type="text" name="department" value="<% if(session.getAttribute("de")==null){out.println("");}else{out.println(session.getAttribute("de"));} %>" class="form-control" id="exampleInputPassword1">
		  </div>
			<%session.setAttribute("fn","");
			session.setAttribute("ln","");
			session.setAttribute("sa","");
			session.setAttribute("doj","");
			session.setAttribute("de","");%>
		   <button type="submit" class="btn btn-primary">Submit</button>
		  <br>
		  	  
		</form> 
		</div>
	    		<div class="col-4"></div>
	    		
    		</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>                                                      
</body>
</html>
