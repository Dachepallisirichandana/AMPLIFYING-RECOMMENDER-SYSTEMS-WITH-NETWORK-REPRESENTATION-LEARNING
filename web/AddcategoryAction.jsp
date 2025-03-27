<%-- 
    Document   : AddcategoryAction
    Created on : Dec 17, 2019, 6:30:24 PM
    Author     : Venkat Sweety
--%>
<% String username=(String)session.getAttribute("username");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
    String category=request.getParameter("category");
    
     String dbURL = "jdbc:mysql://localhost:3306/network";
     String dbUser = "root";
     String dbPass = "root";

    try
    {
        Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select count(*) from category where category='"+category+"'");
            if(rs.next())
	{
	int count=rs.getInt(1);
	 if(count==0)
	{
		int i=st.executeUpdate("insert into category values('"+category+"')");
		
		
		if((i==0))
		{
		response.sendRedirect("AddCategory.jsp?msg=failure");
		}
		else
		{
		response.sendRedirect("AddCategory.jsp?msg=Inserted Suceesfully");
		}
	}
	else
	{
	response.sendRedirect("AddCategory.jsp?msg=Category Name Already Exists ");
	}
	}
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>