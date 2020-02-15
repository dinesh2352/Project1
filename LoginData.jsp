<%-- 
    Document   : LoginData
    Created on : 15 Feb, 2020, 2:14:05 PM
    Author     : Dinesh kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginDataPage</title>
    </head>
    <%
        String username = request.getParameter("uname");
        String password = request.getParameter("upass");
        
        Class.forName("org.h2.Driver");
        Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from cust where custname='"+username+"'");
        String p = (String)rs.getString("password");
        if(p.equals(password))
        {
            RequestDispatcher rd = request.getRequestDispatcher("CreateBlog.jsp");
            rd.forward(request, response);
        }
        else
        {
            out.println("password not matching");
            RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
            rd.include(request, response);
        }
    %>
</html>
