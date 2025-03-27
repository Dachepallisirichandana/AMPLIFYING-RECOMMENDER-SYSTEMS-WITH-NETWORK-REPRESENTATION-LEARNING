<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>AMPLIFYING RECOMMENDER SYSTEMS WITH NETWORK REPRESENTATION LEARNING</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <style>
            #abstract
{
    width:80%;
    height:400px;
 
}
        </style>
    </head>
    <body>
        <div id="title">AMPLIFYING RECOMMENDER SYSTEMS WITH NETWORK REPRESENTATION LEARNING</div>
        <div id="menu">
            <ul>
                <li><a href="index.html">Home</a></li>
                 <li><a href="User.jsp">User</a></li>
                  <li><a href="Ecommerce.jsp">E-Commerce Server</a></li>
                   <li><a href="Register.jsp">Registration</a></li>
            </ul>
        </div>
        
        
       
        
        <div id="abstract">
            <img src="images/userlogin.png" align="right" width="300px" height="200px" style="margin-top:50px;">
            <%  String msg=request.getParameter("reg");%>
            <%if(msg!=null)
            {%>
            <center><h2><font color="blue" size="5"><%=msg%></font></h2></center>
                <%
            }%>
            <h2><center>Welcome To User  Login</center></h2>
            <form name="login" action="UserLogin.jsp" method="post">
            <table width="300px" height="200px" style="margin-left:200px;">
                <tr><td>Username</td><td><input type="text" name="username" required=""></td></tr>
                <tr><td>Password</td><td><input type="password" name="password" required=""></td></tr>
                <tr><td><input type="submit" value="Login"></td><td><input type="Reset"></td></tr>
            </table>
            </form>
        </div>
    </body>
</html>
