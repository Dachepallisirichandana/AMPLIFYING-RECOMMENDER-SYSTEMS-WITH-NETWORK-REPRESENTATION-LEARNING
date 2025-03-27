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
                <li><a href="ECommerceHome.jsp">Home</a></li>
                 <li><a href="index.html">Logout</a></li>
            </ul>
        </div>
        
        
       
        
        <div id="abstract">
            <h2><center>Add  Product Category</center></h2>
            <% String username=(String)session.getAttribute("username");%>
             <%  String msg=request.getParameter("msg");%>
            <%if(msg!=null)
            {%>
            <center><h2><font color="blue" size="5"><%=msg%></font></h2></center>
                <%
            }%>
            <form name="login" action="AddcategoryAction.jsp" method="post" onsubmit="return validate()">
            <table width="300px" height="200px" style="margin-left:200px;">
                <tr><td>Category Name</td><td><input type="text" name="category" required=""></td></tr>
                <tr><td><input type="submit" value="Add Category"></td><td><input type="Reset"></td></tr>
            </table>
            </form>
      <p align="center" style="font-size:20px;"><a href="ECommerceHome.jsp">Back</a></p>
    
        </div>
    </body>
</html>
