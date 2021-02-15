<%@page language="java" import="java.sql.*"%>
<%!
    Connection con=null;
    Statement st=null;
%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String ffname=request.getParameter("ffname");
String flname=request.getParameter("flname");
String gender=request.getParameter("gender");
String date=request.getParameter("date");
String id=request.getParameter("id");
String phone=request.getParameter("phone");
String dep=request.getParameter("dep");
String pwd=request.getParameter("pwd");
String rpwd=request.getParameter("rpwd");
String mail=request.getParameter("mail");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1010");
Statement st=con.createStatement();
int i=st.executeUpdate("insert into facultyreg values('"+fname+"','"+lname+"','"+ffname+"','"+flname+"','"+gender+"','"+date+"','"+id+"','"+phone+"','"+dep+"','"+pwd+"','"+rpwd+"','"+mail+"',facid.nextval)");
if(i!=0)
{
%>
<jsp:forward page="Successful_reg.html"></jsp:forward>
<%
 }
else
{
 out.print("Not registered");
}
con.close();
}
catch(Exception e)
{
 out.print(e);
}
%>