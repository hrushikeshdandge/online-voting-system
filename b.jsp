<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
      String voting=request.getParameter("voting");
      out.println("<h1>"+voting+"</h1>");

           Class.forName("com.mysql.jdbc.Driver");
           Connection con=
           DriverManager.getConnection("jdbc:mysql://localhost:3306/hrushikesh","root","1234");
           String s="insert into voating values(?)"; 
           PreparedStatement st=con.prepareStatement(s);
           st.setString(1,voting);
           st.executeUpdate();
            String redirectURL = "3.html";
        response.sendRedirect(redirectURL);
%>
