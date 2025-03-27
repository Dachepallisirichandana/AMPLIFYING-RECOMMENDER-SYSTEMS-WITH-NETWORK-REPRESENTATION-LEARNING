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
            <ul>
                <li><a href="ViewAllUsers.jsp">View All Users And Authorize</a></li><br></br>
                <li><a href="ViewAllFriendReqRes.jsp">View All Friend Request And Response</a></li><br></br>
                <li><a href="AddCategory.jsp">Add Categories</a></li><br></br>
               <li><a href="AddProductPost.jsp">Add Product Post</a></li><br></br>
               <li><a href="ViewAllPostWithRatings.jsp">View All Post With Ratings</a></li><br></br>
             
               <li><a href="ViewAllRecommendedPostByCategory.jsp">View All Recommended Posts Based On Category</a></li><br></br>
               <li><a href="ViewAllExplictTrustProcucts.jsp">View All Explict Trust Products</a></li><br></br>
               <li><a href="ViewAllImplictTrustproducts.jsp">View All Implict Trust Products</a></li><br></br>
               <li><a href="ViewAllSearchHistory.jsp">View All Search History</a></li><br></br>
        
               <!--<li><a href="ViewPostRankResults.jsp">View Post Rank Results</a></li><br></br>-->
                 <li><a href="index.html">Logout</a></li>
            </ul>
            </ul>
        </div>
         <div id="image">
             <% String username=(String)session.getAttribute("username");%>
             <h2>Welcome E-Commerce Server<font color="red"> <%=username%></font></h2>
            <img src="images/ecommerce.png" height="400px">
        </div>
    </body>
</html>
