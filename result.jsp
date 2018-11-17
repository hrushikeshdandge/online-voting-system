<%@ page import ="java.sql.*" %>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="pageNumber.*"%>
<%
    try{   
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrushikesh","root","1234");    
        PreparedStatement pst = conn.prepareStatement("select h,count(h) from voating group by h");
        ResultSet rs = pst.executeQuery();                        
                 
         while (rs.next()) 
{
            String name = rs.getString(1);
            out.println(name);
  String n = rs.getString(2);
            out.println(n);
	}
          
        }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>