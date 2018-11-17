<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="pageNumber.*"%>
<%
String name=request.getParameter("name1");
String pass=request.getParameter("pass");
String voterid=request.getParameter("voterid");
int date=Integer.parseInt(request.getParameter("date"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrushikesh","root","1234");
String sql="insert into reg values(?,?,?,?)";
PreparedStatement st=con.prepareStatement(sql);
st.setString(1,name);
st.setString(2,pass);
st.setString(3,voterid);
st.setInt(4,date);
st.executeUpdate();
out.println("Registered Succesfully");
%>