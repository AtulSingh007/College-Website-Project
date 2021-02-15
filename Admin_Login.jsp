<%@page language="java" import="java.sql.*" session="true"%>
<% Connection con=null;
    Statement st=null;
    ResultSet rs=null;
%>
<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
try
{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1010");
  st=con.createStatement();
  rs=st.executeQuery("Select * from admin where aid='"+id+"' AND pwd='"+pwd+"'");
  if(rs.next())
   {
  session.setAttribute("mysession",id);
    %>
<jsp:forward page="login.html"></jsp:forward>
<%
   }

 con.close();
}
  catch(Exception e)
  {
   out.print(e);
  }
%>