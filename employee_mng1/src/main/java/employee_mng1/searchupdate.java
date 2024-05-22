package employee_mng1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class searchupdate extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String search=request.getParameter("search");
		PrintWriter r=response.getWriter();
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mng","root","kuldeep");
		
		Statement s=c.createStatement();
		
		ResultSet rs=s.executeQuery("select * from employee where f_name='"+search+"'");
		
		HttpSession se=request.getSession();
		
		while(rs.next())
		{
			se.setAttribute("fn", rs.getString("f_name"));
			se.setAttribute("ln", rs.getString("l_name"));
			se.setAttribute("sa", rs.getInt("salary"));
			se.setAttribute("doj", rs.getString("doj"));
			se.setAttribute("de", rs.getString("department"));
		

		}
				response.sendRedirect("updateEmployee.jsp");
		}
		catch(Exception e)
		{
			response.sendRedirect("Error.jsp");
		}
		
	}
}
