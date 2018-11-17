<%@ page import ="java.sql.*" %>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="pageNumber.*"%>
<%
    try{
        String voterid = request.getParameter("voterid");   
        String pass= request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrushikesh","root","1234");    
        PreparedStatement pst = conn.prepareStatement("Select voterid,pass,date from reg where voterid=? and pass=?");
        pst.setString(1, voterid);
        pst.setString(2, pass);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())
        {         
           out.println("<html><center><h1>");
           out.println("<a href='polling.html' target='bottom'>go to voting</a>");
           out.println("</h1></center></html>");
        }    
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){    
out.println(e);   
       out.println("Something went wrong !! Please try again");       
   }      
%>