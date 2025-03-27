<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.sql.*"%>
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
            <h2><center>Add  Product Post</center></h2>
            <% String username=(String)session.getAttribute("username");%>
             <%  String msg=request.getParameter("msg");%>
            <%if(msg!=null)
            {%>
            <center><h2><font color="blue" size="5"><%=msg%></font></h2></center>
                <%
            }%>
            <form name="login" action="AddProductPostAction" method="post" onsubmit="return validate()" enctype="multipart/form-data">
            <table width="300px" height="200px" style="margin-left:200px;">
                <tr><th>ECommerce Name</th><td><input type="text" name="ename" value="<%=username%>"</td></tr>
                            <tr><th>Category</th><td><select name="category">
                    <%try
                    {
                      Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from category");
            while(rs.next())
            {%>
            <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option> 
            <%
          }
                    }
                    catch(Exception e)
                    {
                        out.println(e);
                    }
                    %>
                        </select></td></tr>
                            
                            <tr><th>Product Name</th><td><input type="text" name="pname" required=""></td></tr>
                            <tr><th>Product Description</th><td><textarea cols="40" rows="6" name="desc"></textarea></td></tr>
            <tr><th>Product Image</th><td><input type="file" name="image" required=""></td></tr>
                            <tr><td><input type="submit" value="Add Post"></td><td><input type="Reset"></td></tr>
            </table>
            </form>
      <p align="center" style="font-size:20px;"><a href="ECommerceHome.jsp">Back</a></p>
    
        </div>
    </body>
</html>
