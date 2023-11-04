package com.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pickup=request.getParameter("from");
		String destination=request.getParameter("to");
		int seats=Integer.parseInt(request.getParameter("seats"));
		LocalDate date = LocalDate.parse(request.getParameter("date"););
		RequestDispatcher dispatcher=null;
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");	
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe?useSSL=false","system", "admin");
			PreparedStatement pst = con.prepareStatement("insert into searches(uname, uemail, upwd, umobile) values (?, ?, ?, ?)");
			pst.setString(1, pickup);
			pst.setString(2, destination);
			pst.setDate(3, java.sql.Date.valueOf(date));
			pst.setInt(4, seats);
			int i = pst.executeUpdate();
			if(i>0) {
				displayRides(request,response);
			} 
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
	private void displayRides(HttpServletRequest request, HttpServletResponse response) {
		 Connection con = null;
	        try {
	            Class.forName("oracle.jdbc.driver.OracleDriver");
	            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe?useSSL=false", "system", "admin");
	            PreparedStatement pst = con.prepareStatement("SELECT * FROM offers");
	            ResultSet rs = pst.executeQuery();
	            request.setAttribute("resultSet", rs); // Set the result set as an attribute to access it in JSP
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (con != null) {
	                    con.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }

	}

}
