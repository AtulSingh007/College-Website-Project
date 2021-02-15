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
String year=request.getParameter("year");
String phone=request.getParameter("phone");
String branch=request.getParameter("branch");
String pwd=request.getParameter("pwd");
String rpwd=request.getParameter("rpwd");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1010");
Statement st=con.createStatement();
int i=st.executeUpdate("insert into studentreg values('"+fname+"','"+lname+"','"+ffname+"','"+flname+"','"+gender+"','"+date+"','"+year+"','"+phone+"','"+branch+"','"+pwd+"','"+rpwd+"',studid.nextval)");
if(i!=0)
{
 out.print("Inserted Successfully");
   %>
    <html>
     <body>
         <a href="InsertRecordStudent.html">Insert More</a>
        </body>
    </html>
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