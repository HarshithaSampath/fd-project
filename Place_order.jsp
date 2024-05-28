<%@ page import ="java.sql.*" %>
<%
	String name=request.getParameter("user_name");
	String email=request.getParameter("user_email");
     String phno=request.getParameter("user_tel");
	String add=request.getParameter("address");
%>

<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mom");
	String qry="insert into dorder values(?,?,?,?)";
	PreparedStatement pstmt=con.prepareStatement(qry);
	pstmt.setString(1,name);
	pstmt.setString(2,email);
	pstmt.setString(3,phno);
	pstmt.setString(4,add);
	int res=pstmt.executeUpdate();
	
%>
<html>
<head>
<body>
    <h2> YOUR ORDER IS PLACED SUCCESSFULLY</h2>
</body>
</head>
</html>

<%
}
catch(Exception e) {
out.print(e);
}
%>