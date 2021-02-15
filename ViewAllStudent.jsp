<%@page language="java" import="java.sql.*"%>
<%! Connection con=null;
    Statement st=null;
    ResultSet rs=null;
%>
    <html>
        <head>
    <style>
        body{
            background-color:#222930;
            width:1048px;
            height:594px;
            box-shadow: 0px 0px 10px black;	       }
        
        h1{
            margin-left: 350px;
            color:slategrey;
            text-shadow: 0px 0px 10px black;
            font-size:40px;
        }
        
   table{
       margin-left:25px;
       width:1000px;
       height:70px;
       color:white;
       border:none;    
       border:5px solid #4eb1ba;
      border-collapse:collapse;
    }    
        .tr1 th{
            background-color:#4eb1ba;
            color:black;
            text-shadow: 0px 0px 10px black;
            border:none;
            border: 3px solid #4eb1ba;
            font-weight: bolder;
            border-top-color: white;
        }
        
            .tr2 td{
            background-color:#222930;
            color:white;
            text-align:center;
            text-shadow: 0px 0px 10px white;
            border:none;
            border: 2px solid white;
            font-weight: bolder;
            height:35px;
        }
    </style>    
</head>    

    <body>
          <h1>Student's Records</h1>
        <table border="2">
        <tr class="tr1">
            <th>ID</th>
            <th>STUDENT'S NAME</th>
            <th>FATHER'S NAME</th>
            <th>GENDER</th>
            <th>DOB(YYYY-MM-DD)</th>
            <th>YEAR</th>
            <th>PHONE NUMBER</th>
            <th>BRANCH</th>
            
        </tr>
        
<%
   try
   {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1010");
    st=con.createStatement();
    rs=st.executeQuery("Select * from studentreg");
    while(rs.next())
    {
   %>
    <tr class="tr2">
        <td><%=rs.getString(12)%></td>
        <td><%=rs.getString(1)%>&nbsp;<%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%>&nbsp;<%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
        <td><%=rs.getString(8)%></td>
        <td><%=rs.getString(9)%></td>
        
    </tr>
    <%
   }
       con.close();
   }
       catch(Exception e)
    {
       out.print(e);
       }
   %>
        
    </table></body></html>