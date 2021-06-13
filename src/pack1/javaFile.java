package pack1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/javaFile")
public class javaFile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 try
		 {  
	   		   Connection con=DriverManager.getConnection(  
	   		   "jdbc:mysql://localhost:3306/dbms","hbstudent","hbstudent");  
	   		
	   		   String s1=request.getParameter("sid");
	   		   String s2=request.getParameter("sname");
	   		   String s3=request.getParameter("bname");
	   		   String s4=request.getParameter("idate");
	   		   if(s1!=null && s2!=null && s3!=null && s4!=null) {
	   			 PreparedStatement pst=con.prepareStatement(" insert into person (sid,sname,bname,BookDate)"
	 	   		        + " values (?, ?, ?, ?)");
	 	   		  pst.setString(1, request.getParameter("sid"));
	 	   		  pst.setString(2, request.getParameter("sname"));
	 	   		  pst.setString(3, request.getParameter("bname"));
	 	   		  pst.setString(4, request.getParameter("idate"));
	 	   		  int t=pst.executeUpdate();
	 	   		  RequestDispatcher requestDispatcher = request.getRequestDispatcher("mainFile.jsp");
	 	   		  requestDispatcher.forward(request, response);
	   		   }else {
	   			  PreparedStatement pst1=con.prepareStatement("select * from person");
		   		  ResultSet rs=pst1.executeQuery();
		   		  rs.last();
		   		  int rows=rs.getRow();
		   		  String arr[][]=new String[rows][4];
		   		  rs.first();
		   		  for(int i=0;i<rows;i++) {
	  			     for(int j=0;j<4;j++) {
	  				   arr[i][j]=rs.getString(j+1)==null?"":rs.getString(j+1);
	  			     }
	  			     rs.next();
		   		  }
		   		  request.setAttribute("res", arr);
		   		  
		   		  RequestDispatcher requestDispatcher = request.getRequestDispatcher("DisplayFile.jsp");
	 	   		  requestDispatcher.forward(request, response);
	   		   }
	   		   
	   		   con.close();  
	   	}
		catch(Exception e){
	   			System.out.println(e);
	    }
		
	}

}
