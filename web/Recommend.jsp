<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
table tr th{
    width:300px;
    height:40px;
    background: rosybrown;
    color:orange;
}
table tr td{
   height:30px;
   background: aquamarine;
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
             <center><h2>Search Product Result</h2></center>
             <table border="1">
                 <tr>
                     <th>Friend Name</th>
                    <th>Recommend</th>
                 </tr>
<%

try{

    
    String pname=request.getParameter("pname");
        String id=request.getParameter("id");
         String rating=request.getParameter("rating");
        
    String sql="select * from friends where sender='"+username+"' or receiver='"+username+"' and status='Friends'";    
   
                    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
        Statement st= con.createStatement();
      ResultSet r=st.executeQuery("select * from friends where sender='"+username+"' or receiver='"+username+"' and status='Friends'");

    while(r.next()){
     String  sender=r.getString("sender");
      String  rec=r.getString("receiver");    
  if(sender.equals(username)){
      String recei=r.getString("receiver");
      %>
      <tR>
          <td><%=recei%></tD>    
          <td><a href="RecAction.jsp?fname=<%=recei%>&pname=<%=pname%>&pid=<%=id%>&rating=<%=rating%>">Recommend</a></td>
     </tr>
      <%
  }
if(rec.equals(username)){
      String send=r.getString("sender");
      %>
      <tR>
          <td><%=send%></tD>    
          <td><a href="RecAction.jsp?fname=<%=send%>&pname=<%=pname%>&pid=<%=id%>&rating=<%=rating%>">Recommend</a></td>
     </tr>
      <%
  }
}%>
  </table>  

<%
       
}catch(Exception e){
 out.println(e);   
}


%>
             
             
             
            <p align="center" style="font-size:20px;"><a href="UserHome.jsp">Back</a></p>
        </div>
         <div id="image">
             <img src="images/searchfriend.png" height="400px">
            </ul>
            </ul> 
        </div>
    </body>
</html>
