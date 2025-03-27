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
            <h2><center>Welcome To User  Registration</center></h2>
            <form name="login" action="RegisterAction" method="post" enctype="multipart/form-data">
            <table width="400px" height="500px" bgcolor="lightgray"style="margin-left:200px;">
                <tr><td>Username</td><td><input type="text" name="username" required=""></td></tr>
                <tr><td>Password</td><td><input type="password" name="password" required=""></td></tr>
                <tr><td>Email Id</td><td><input type="email" name="email" required=""></td></tr>
                <tr><td>Mobile Number</td><td><input type="text" name="mobile" required=""></td></tr>
                <tr><td>Address</td><td><textarea  name="address" required=""></textarea></td></tr>
                <tr><td>Date Of Birth</td><td><input type="text" name="dob" required=""></td></tr>
                            <tr><td>Gender</td><td><select name="gender">
                                        <option value="Male">Male</option>
                                        <option value="FeMale">FeMale</option>
                                        <option value="Others">Others</option>
                        </select></td></tr>
                            <tr><td>Select Profile Pic</td><td><input type="file" name="image" required=""></td></tr>
                <tr><td><input type="submit" value="Register"></td><td><input type="Reset"></td></tr>
            </table>
            </form>
        </div>
    </body>
</html>
