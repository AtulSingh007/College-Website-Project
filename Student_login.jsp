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
  rs=st.executeQuery("Select * from studentreg where sid='"+id+"' AND pwd='"+pwd+"'");
  if(rs.next())
   {
   %>
   <jsp:forward page="Student_info.html"></jsp:forward>
<%
   }

 con.close();
}
  catch(Exception e)
  {
   out.print(e);
  }
%>