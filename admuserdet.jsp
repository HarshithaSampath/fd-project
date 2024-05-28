<%@ page import="java.sql.*"%>
<%
try{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mom");
String qry="select * from register";
Statement stmt=con.createStatement();
ResultSet res=stmt.executeQuery(qry);
%>
<head>
<link rel="stylesheet" href="style.css">
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>


		
	<table border="2px" id="customers">
	<tr>
	<th>Name</th>
	<th>username</th>
	<th>EMAIL</th>
	<th>Phone_No</th>
	<th>password</th>
	<th>Gender</th>
	
	</tr>
<%
	

while(res.next())
{
%>
<tr>
<td><%=res.getString(1) %></td>
<td><%=res.getString(2)%></td>
<td><%=res.getString(3)%></td>
<td><%=res.getString(4) %></td>
<td><%=res.getString(5) %></td>
<td><%=res.getString(6) %></td>

</tr>

<%

}
%>
</table>
<%

	

}
catch(Exception e)
{
out.println(e);
}
%>
