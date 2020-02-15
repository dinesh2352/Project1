<%-- 
    Document   : RegisterData
    Created on : 15 Feb, 2020, 2:10:58 PM
    Author     : Dinesh kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String username = request.getParameter("uname");
        String password = request.getParameter("upass");
        String custname = request.getParameter("custname");
        String email = request.getParameter("email");
        Class.forName("org.h2.Driver");
        Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");
        Statement st = con.createStatement();
        
        int i = st.executeUpdate("insert into cust values('"+username+"','"+password+"','"+custname+"','"+email+"');");
        if(i>0)
        {
            response.sendRedirect("welcome.jsp");
        }
        else
        {
            response.sendRedirect("index.html");
        }
    %>
</html>