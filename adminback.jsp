<%@ page import="java.sql.*"%>
<%!
String p;
String m;
%>
<%
	String pwd=request.getParameter("t2");
	String email=request.getParameter("t1");
%>

<%
try{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mom");
String qry="select * from admin";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(qry);
%>

<%
while(rs.next())
{
	p=rs.getString("password");
	m=rs.getString("email");
	if(m.equals(email) && p.equals(pwd)){
%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image: url('  https://www.bing.com/images/search?view=detailV2&ccid=kPODygo%2f&id=97EF70E33AA78A6C63F7DCCB6DA360C7CAAC2530&thid=OIP.kPODygo_lAcmi5oaqacSdAHaEK&mediaurl=https%3a%2f%2fi0.wp.com%2fwww.eatthis.com%2fwp-content%2fuploads%2f2020%2f07%2ffrito-lay-chips.jpg%3fresize%3d1920%252C1080%26ssl%3d1&exph=1080&expw=1920&q=grocery+items&simid=607992040325196284&FORM=IRPRST&ck=AD5834F7E52936EFC93018E4E0898A0E&selectedIndex=30');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  cursor: pointer;
}

.button1 {background-color: #4CAF50;} /* Green */
.button2 {background-color: #008CBA;} /* Blue */
input[type=text], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border;
}
.center {
  margin: auto;
  width: 60%;
  padding: 10px;
}
.container{  
        width: 50%;  
        overflow: hidden;  
        margin: auto;  
        margin: 10 0 0 200px;  
        padding: 80px;  
        background:#F2F2F2;  
        border-radius: 5px ;  
          
}  


</style>
</head>
<body>
<div class=container>
<h2><center>Click on USER button to get information about users</center></h2>

<div class="center">
<div class="center">
<a href="admuserdet.jsp"  target="_blank"> <input type="button" style="background-color:skyblue;color:white;width:200px;
height:40px;" value="user details"></a>
  <a href="#" class="btn"></a>
</div>

</div>
<h2><center>Click on ORDER DETAILS button to get information about order history</center></h2>
<a href="address.jsp"    target="_blank">

<div class="center">
<div class="center">
 <input type="button" style="background-color:skyblue;color:white;width:200px;
height:50px;" value="user ordering details"></a>
</div>


</div>
</div>
</body>
</html>
<%
	break;
}
	else{
%>
<h3>login failed!!</h3>
<a href="Home..html"><h3>login failed!!</h3></a>
<%
break;
}
}
}
catch(Exception e)
{
out.println(e);
}
%>