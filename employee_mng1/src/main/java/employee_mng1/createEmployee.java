package employee_mng1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class createEmployee extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter r=response.getWriter();
		
		String f_name=request.getParameter("fname");
		String l_name=request.getParameter("lname");
		String salary=request.getParameter("salary");
		String doj=request.getParameter("doj");
		String dep=request.getParameter("department");
		
	
		
		HttpSession se1=request.getSession();
		Object created_by=se1.getAttribute("user");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mng","root","kuldeep");
			
			r.println("Connect");
			Statement s=c.createStatement();
			s.execute("INSERT INTO employee(f_name,l_name,salary,doj,department,created_dt,created_by,updated_dt,updated_by)VALUES('"+f_name+"','"+l_name+"',"+salary+",'"+doj+"','"+dep+"',NOW(),'"+created_by+"',NOW(),'"+created_by+"')");
			response.sendRedirect("listEmployee.jsp");
			
		}
		catch(Exception e)
		{
			response.sendRedirect("Error.jsp");
		}
		
	}

}
