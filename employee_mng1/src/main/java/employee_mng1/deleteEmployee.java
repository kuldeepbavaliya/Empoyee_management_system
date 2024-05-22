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


public class deleteEmployee extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String fn=request.getParameter("fname");
		
		PrintWriter r=response.getWriter();
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mng","root","kuldeep");
		
		Statement s=c.createStatement();
		
		s.execute("delete from employee where f_name='"+fn+"'");

		response.sendRedirect("listEmployee.jsp");
		}
		catch(Exception e)
		{
			response.sendRedirect("Error.jsp");
		}
	}

}
