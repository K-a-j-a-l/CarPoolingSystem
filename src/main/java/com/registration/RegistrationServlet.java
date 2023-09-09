package com.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("name");
		String uemail=request.getParameter("email");
		String upwd=request.getParameter("pass");
		String umobile=request.getParameter("contact");
		RequestDispatcher dispatcher=null;
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");	
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe?useSSL=false","system", "admin");
			PreparedStatement pst = con.prepareStatement("insert into users(uname, uemail, upwd, umobile) values (?, ?, ?, ?)");
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, upwd);
			pst.setString(4, umobile);
			int i = pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("registration.jsp");
			if(i>0) {
				request.setAttribute("status","success");
			}else {
				request.setAttribute("status","failed");
			} 
			dispatcher.forward(request, response);
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
