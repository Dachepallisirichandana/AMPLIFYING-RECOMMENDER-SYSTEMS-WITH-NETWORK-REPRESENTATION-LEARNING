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
           
ul li
{
    list-style:none;
    float:left;
    padding:5px;
    text-decoration:none;
}
ul li a
{
    text-decoration:none;
    font-size:20px;
}

            #image
{
    width:40%;
    height:500px;
    margin-left:50px;
   
   
}
#abstract
{
    width:40%;
    height:400px;
 float:right;
    margin-right:80px;
}
        </style>
    </head>
    <body>
        <div id="title">AMPLIFYING RECOMMENDER SYSTEMS WITH NETWORK REPRESENTATION LEARNING</div>
        <div id="menu">
            <ul>
                <li><a href="ECommerceHome.jsp">Home</a></li>
                 <li><a href="index.html">Logout</a></li>
                   
            </ul>
        </div>
        
        
       
        
        <div id="abstract">
            <% String username=(String)session.getAttribute("username");%>
             <h2>Welcome Mr/Miss<font color="red"> <%=username%></font></h2>
             <center><h2>Search Friend Here</h2></center>
             <form name="search" action="SearchFirendAction.jsp" method="post">
                 <table width="300px" height="100px">
                     <tr>
                         <td>Enter Friend Name</td><td><input type="text" name="fname" required=""></td>
                     </tr>
                     <tr><td><input type="Submit" value="Search"></td><td><input type="Reset"></td></tr>
                 </table>
             </form>
            <p align="center" style="font-size:20px;"><a href="UserHome.jsp">Back</a></p>
        </div>
         <div id="image">
             <img src="images/searchfriend.png" height="400px">
            </ul>
            </ul> 
        </div>
    </body>
</html>
