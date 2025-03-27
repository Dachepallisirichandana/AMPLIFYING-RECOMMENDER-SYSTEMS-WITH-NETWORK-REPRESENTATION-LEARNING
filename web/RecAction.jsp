<%-- 
    Document   : RecAction
    Created on : Dec 19, 2019, 5:38:05 PM
    Author     : Acer
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String username=(String)session.getAttribute("username");

String fname=request.getParameter("fname");

String pname=request.getParameter("pname");
String pid=request.getParameter("pid");
String rating=request.getParameter("rating");

try{
     Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
        Statement st= con.createStatement();
        
        int i=st.executeUpdate("insert into recommend values(null,'"+username+"','"+fname+"','"+pname+"','"+pid+"','"+rating+"',now())");
      if(i>0){
          response.sendRedirect("SearchPostAction.jsp?mas=success&pname="+pname);
      }else{
        response.sendRedirect("SearchPostAction.jsp?mas=failed&pname="+pname);  
      }
}catch(Exception e){
  out.println(e);  
}

%>