<%@ page import="java.sql.*"%>
<%!
String p;
String m;
%>
<%
int i=1;
String uname=request.getParameter("usename");
String pwd=request.getParameter("pword");

%>

<%
try{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mom");
String qry="select * from register";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(qry);
%>

<%
while(rs.next())
{
p=rs.getString("password");
m=rs.getString("username");
if(m.equals(uname) && p.equals(pwd)){
i=2;
out.println("successfull");
%>
<a href="product.html">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complete Responsive Grocery Website Design Tutorial</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body background="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEhpCVOa5_DTJYC_1aBIPMLB33gGJyMGL7tw&usqp=CAU">
        <a href="index.html" target="blank"><font size="5" color="ORANGE" ><b>back</b></font></a>
</body>
<!-- products section starts  -->

<section class="products" id="products">

    <h1 class="heading"> our <span>products</span> </h1>

    <div class="box-container">

        

            <div class="box">
                <img src="image/product-1.png" alt="">
                <h3>fresh orange</h3>
                <div class="price"> 30/- </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="order.html" class="btn">order now</a>
            </div>

            <div class=" box">
                <img src="image/product-2.png" alt="">
                <h3>fresh onion</h3>
                <div class="price"> 50/- </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="order.html" class="btn">order now</a>
            </div>

            <div class=" box">
                <img src="image/product-3.png" alt="">
                <h3>fresh meat</h3>
                <div class="price"> 200/- </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="order.html" class="btn">order now</a>
            </div>

            <div class="box">
                <img src="image/product-4.png" alt="">
                <h3>fresh cabbage</h3>
                <div class="price"> 50/-</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="order.html" class="btn">order now</a>
            </div>

        </div>

    </div>

    <div class="box-container">

      

            <div class="box">
                <img src="image/product-5.png" alt="">
                <h3>fresh potato</h3>
                <div class="price"> 30/- </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="order.html" class="btn">order now</a>
            </div>

            <div class=" box">
                <img src="image/product-6.png" alt="">
                <h3>fresh avocado</h3>
                <div class="price">60/- </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="order.html" class="btn">order now</a>
            </div>

            <div class=" box">
                <img src="image/product-7.png" alt="">
                <h3>fresh carrot</h3>
                <div class="price"> 10/- </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="order.html" class="btn">order now</a>
            </div>

            <div class="box">
                <img src="image/product-8.png" alt="">
                <h3>green lemon</h3>
                <div class="price"> 5/- </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="order.html" class="btn">order now</a>
            </div>

        </div>

    </div>


</section>

<!-- products section ends -->
</html>
</a>
<%
break;
}
}
if(i==1){
%>
<h3>login failed<h3>
<a href="index.html">
<%
}
}
catch(Exception e){
	out.println(e);
}
%>
