<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList"%>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  
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
<form action="listEmployee" method="post">
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">id</th>
		      <th scope="col">first name</th>
		      <th scope="col">last name</th>
		      <th scope="col">salary</th>
		      <th scope="col">doj</th>
		      <th scope="col">department</th>
		      <th scope="col">created date</th>
		      <th scope="col">created by</th>
		      <th scope="col">updated date</th>
		      <th scope="col">updated by</th>
		      <th scope="col">Update</th>
		      <th scope="col">Delete</th>
		    </tr>
		  </thead>
		  <tbody>
		  <tr>
		  <% if(session.getAttribute("list")==null){out.println("");}
			 
		 ArrayList<String> p = (ArrayList) session.getAttribute("list");
		 int m=0,i=0,pn;
		 int kr=10;
		 if(request.getParameter("page")==null)
		 {
			pn=30;	 
		 }
		 else
		 {
		 		pn=Integer.parseInt(request.getParameter("page"));
		 }
		int size=120;
		 if(p==null)
		 {
			 out.println("");
		 }
		 else
		 {
			
			 for(String k:p)
			 {
				 %>
				 <td>
				 <%
				 out.println(k);
				 m++;
				
				 if(m==kr)
				 {
					 kr=kr+10;
				 %>
				 <td><a class="btn btn-primary" href="updateEmployee.jsp">update</a>
				 <td><a class="btn btn-danger" href="deleteEmployee.jsp">delete</a> 
				 <br>
				 <tr>
				 <%
				
				 }
				if(m==pn)
				{
				%> 
				<td colspan="12">
				<%
					for(i=0;i<=size/pn;i++)
					{
						if(i==0)
						{
							%> 
							<a href="listEmployee.jsp?page=<%=30%>" class="btn btn-info" >Page<%=i+1%>
							</a><%  
						}
						if(i==1)
						{
							%> 
							<a href="listEmployee.jsp?page=<%=60%>" class="btn btn-info" >Page<%=i+1%>
							</a>
							<%	
						}
						if(i==2)
						{
							%> 
							<a href="listEmployee.jsp?page=<%=120%>" class="btn btn-info" >Page<%=i+1%>
							</a>
							<%
						}
					}
					 break;
					 
				}
			 }
			 			 
		 }
		
		 %>
		
		 </tbody>
		</table>
		<center><input type="submit" value="Show"></center>
	</form>
	<center><a href="index.jsp"><input type="submit" value="Welcom"></a></center>
		
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>                                                      

</body>
</html>