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
                     <th>Product Name</th>
                          <th>Product Description</th>
                                <th>Product Image</th>
                                       <th>Product Rating</th>
                                         <th>Product Recommend</th>
                 </tr>
<%

try{
   Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
      
    
    String pname=request.getParameter("pname");
    
    String s1="insert into history values('"+username+"','"+pname+"',now())";
    
    Statement st3=con.createStatement();
    st3.executeUpdate(s1);
    
    String sql="select * from products where pname='"+pname+"'";    
   
                   Statement st= con.createStatement();
      ResultSet rs=st.executeQuery(sql);
        if(rs.next()){
           int c=Integer.parseInt(rs.getString("rating")) ;
         int cc=c+1;
         
         Statement st1= con.createStatement();
  st1.executeUpdate("update products set rating='"+cc+"' where pname='"+pname+"'");
       Statement s= con.createStatement();
      ResultSet r=s.executeQuery("select * from products where pname='"+pname+"'");
       while(r.next()){
           
           %>
           <tr>
               <td><%=r.getString("pname")%></td>
               <td><textarea cols="20" rows="5"><%=r.getString("desc")%></textarea></td>
                <td><image src="view2.jsp?id=<%=r.getString("id")%>" width="100" height="100"></td>
                  <td><%=r.getString("rating")%></td>
                  <td><a href="Recommend.jsp?id=<%=r.getString("id")%>&pname=<%=r.getString("pname")%>&rating=<%=r.getString("rating")%>"><input type="button" value="Recommend To"></a></td>
           </tr>   
           
             
           <%
       }
         %>
           </table>  
             
             <%
      }else{
          %>
          <p style="color:red">Sorry!! the product you are trying to search does not exist</p>   
          <%
        }
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
