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

public class searchdelete extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String search=request.getParameter("searchd");
		PrintWriter r=response.getWriter();
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mng","root","kuldeep");
		
		Statement s=c.createStatement();
		
		ResultSet rs=s.executeQuery("select * from employee where f_name='"+search+"'");
		
		HttpSession ses=request.getSession();
		
		while(rs.next())
		{
			ses.setAttribute("fn", rs.getString("f_name"));
			ses.setAttribute("ln", rs.getString("l_name"));
			ses.setAttribute("sa", rs.getInt("salary"));
			ses.setAttribute("doj", rs.getString("doj"));
			ses.setAttribute("de", rs.getString("department"));
		

		}
		response.sendRedirect("deleteEmployee.jsp");
		}
		catch(Exception e)
		{
			response.sendRedirect("Error.jsp");
		}
	}

}
