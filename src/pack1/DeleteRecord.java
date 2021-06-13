package pack1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
@WebServlet("/DeleteRecord")
public class DeleteRecord extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 try
		 {  
	   		  Connection con=DriverManager.getConnection(  
	   		   "jdbc:mysql://localhost:3306/dbms","hbstudent","hbstudent");
	   		  
	   		PreparedStatement pst=con.prepareStatement("delete from person where sid='"+request.getParameter("1")+"'");
	   		 int t=pst.executeUpdate();
	   		 
	   		
	   		 LocalDate IssueDate = LocalDate.parse(request.getParameter("4"));
	   		LocalDate CurrDate = LocalDate.parse(java.time.LocalDate.now().toString());
	   			
	   		long days = ChronoUnit.DAYS.between(IssueDate, CurrDate);
	   		long charges=0;
	   		if(days<=7) {
	   			charges=0;
	   		}else {
	   			charges= days-7;
	   		}
	   		
	   		request.setAttribute("charge",charges);
	   		
	   		request.setAttribute("name",request.getParameter("2"));
	   		
	   		  
 	   		  RequestDispatcher requestDispatcher = request.getRequestDispatcher("FairCharges.jsp");
 	   		  requestDispatcher.forward(request, response);
	   		   
	   		   con.close();  
	   	}
		catch(Exception e){
	   			System.out.println(e);
	    }
		
	}

}
