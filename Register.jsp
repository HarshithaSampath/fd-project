<html>
<body>
<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("fname");
String usname=request.getParameter("uname");
String Email=request.getParameter("mail");


String PhoneNumber=request.getParameter("pno");
String password=request.getParameter("pwd");
String gen=request.getParameter("gender");


try
{

	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mom");
               
                 
	          PreparedStatement pstmt=con.prepareStatement("insert into register values(?,?,?,?,?,?)");
	          pstmt.setString(1,name);
	          pstmt.setString(2,usname);
		pstmt.setString(3,Email);
		pstmt.setString(4,PhoneNumber);
		pstmt.setString(5,password);
		pstmt.setString(6,gen);

		pstmt.executeUpdate();
		out.println("Registration Successful");
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>