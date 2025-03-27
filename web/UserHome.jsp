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
            <img src="images/irecommend.png" height="300px">
            
        </div>
         <div id="image">
           <ul>
                <li><a href="UserHome.jsp">Home</a></li><br></br>
                <li><a href="ViewProfile.jsp">View Profile</a></li><br></br>
                <li><a href="SearchFriend.jsp">Search Friend</a></li><br></br>
               <li><a href="ViewFriendRequest.jsp">View Friend Request</a></li><br></br>
               <li><a href="SearchPost.jsp">Search Post,recommend To Friend</a></li><br></br>
               <li><a href="MySearchHistory.jsp">My Search History</a></li><br></br>
               <li><a href="ViewAllProductsRecommends.jsp">View All products Recommends</a></li><br></br>
                <li><a href="index.html">Logout</a></li>
            </ul>
            </ul> 
        </div>
    </body>
</html>
