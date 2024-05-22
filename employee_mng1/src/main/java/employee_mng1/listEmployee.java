package employee_mng1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class listEmployee extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter r=response.getWriter();
		int id;
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mng","root","kuldeep");
		
		Statement s=c.createStatement(); 
		ResultSet rs=s.executeQuery("select * from employee order by updated_dt desc");
		ArrayList<String> l=new ArrayList();
				while(rs.next())
				{
					l.add(Integer.toString(rs.getInt("id")));
					l.add(rs.getString("f_name"));
					l.add(rs.getString("l_name"));
					l.add(Integer.toString(rs.getInt("salary")));
					l.add(rs.getString("doj"));
					l.add(rs.getString("department"));
					l.add(rs.getDate("created_dt").toString());
					l.add(rs.getString("created_by"));
					l.add(rs.getDate("updated_dt").toString());
					l.add(rs.getString("updated_by"));
		  		}
				HttpSession session=request.getSession();
				session.setAttribute("list", l);
				response.sendRedirect("listEmployee.jsp");
		}
		catch(Exception e)
		{
			response.sendRedirect("Error.jsp");
		}
		
	}

}
