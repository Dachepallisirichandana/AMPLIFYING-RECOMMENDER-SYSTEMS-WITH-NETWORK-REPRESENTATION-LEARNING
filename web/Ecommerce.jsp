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
            <img src="images/ecommerce.jpg" align="right" width="350px" height="250px" style="margin-top:50px;">
            <h2><center>Welcome To E-Commerce  Login</center></h2>
            <form name="login" action="EcommerceLogin.jsp" method="post">
            <table width="300px" height="200px" style="margin-left:200px;">
                <tr><td>Username</td><td><input type="text" name="username" required=""></td></tr>
                <tr><td>Password</td><td><input type="password" name="password" required=""></td></tr>
                            <tr><td>Select E-Commerce Provider</td><td><select name="provider">
                                        <option value="Amazon">Amazon</option>
                                        <option value="LinkedIn">LnkedIn</option>
                                        <option value="eBay">eBay</option>
                        </select></td></tr>
                <tr><td><input type="submit" value="Login"></td><td><input type="Reset"></td></tr>
            </table>
            </form>
        </div>
    </body>
</html>
