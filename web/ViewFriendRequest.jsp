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
             <center><h2>View Friend Request's</h2></center>
              <%@page import="java.sql.*" %>
            <%
                
                try
                {
                    
                    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
        Statement st= con.createStatement();
        ResultSet rs=st.executeQuery("select * from friends where receiver='"+username+"'");
        
        %>
             <table border='2px' cellspacing='5px'>
                 <tr>
                     <th>Sender Name</th>
                     <th>Receiver name</th>
                     <th>Status</th>
                     <th>Time</th>
                 </tr>
                 
        <%
            while(rs.next())
            {
                %>
                <tr>
                    <td><a href='ViewFriendsProfile.jsp?friendname=<%=rs.getString(1)%>'><%=rs.getString(1)%></a></td>
                    <td><%=rs.getString(2)%></td>
                    <td><a href='AcceptRequest.jsp?sender=<%=rs.getString(1)%>&receiver=<%=rs.getString(2)%>'><%=rs.getString(3)%></a></td>
                    <td><%=rs.getString(4)%></td>
                </tr>
                <%
            }
            
    }
                catch(Exception e)
                {
                    out.println(e);
                }
                %>
             </table>
            <p align="center" style="font-size:20px;"><a href="UserHome.jsp">Back</a></p>
        </div>
         <div id="image">
             <img src="images/searchfriend.png" height="400px">
            </ul>
            </ul> 
        </div>
    </body>
</html>
