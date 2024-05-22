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

@WebServlet("/login_page")
public class login extends HttpServlet 
{

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String user=request.getParameter("user");
		String pass=request.getParameter("password");
		PrintWriter r=response.getWriter();
		int i=0;
		HttpSession se=request.getSession();
		se.setAttribute("user", user);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mng","root","kuldeep");
			Statement s=c.createStatement();
			ResultSet rs=s.executeQuery("select * from login where user='"+user+"' and password='"+pass+"'");
			while(rs.next())
			{
				i++;
			}
			if(i==1)
			{
				response.sendRedirect("index.jsp");
			}
			
		
		
		}
		catch(Exception e)
		{
			r.print(e);
		}
	}

}

