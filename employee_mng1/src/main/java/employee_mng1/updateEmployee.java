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

public class updateEmployee extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter r=response.getWriter();
		String f_name=request.getParameter("fname");
		String l_name=request.getParameter("lname");
		String salary=request.getParameter("salary");
		String doj=request.getParameter("doj");
		String dep=request.getParameter("department");
		

		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mng","root","kuldeep");
		
		Statement s=c.createStatement();
		
		s.execute("update employee set l_name='"+l_name+"' where f_name='"+f_name+"'");
		s.execute("update employee set salary='"+salary+"' where f_name='"+f_name+"'");
		s.execute("update employee set doj='"+doj+"' where f_name='"+f_name+"'");
		s.execute("update employee set department='"+dep+"' where f_name='"+f_name+"'");
		s.execute("update employee set updated_dt=sysdate() where f_name='"+f_name+"'");

		
		response.sendRedirect("listEmployee.jsp");
		}
		catch(Exception e)
		{
			response.sendRedirect("Error.jsp");
		}
	}

}
