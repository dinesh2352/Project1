<%-- 
    Document   : Register
    Created on : 15 Feb, 2020, 2:12:49 PM
    Author     : Dinesh kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <form method="post" action="RegisterData.jsp">
        user name: <input type="text" name="uname"><br>
        password : <input type="password" name ="upass"><br>
        customer name: <input type="text" name ="custname"><br>
        email id: <input type="email" name ="email"><br>
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
        </form>
        
    </body>
</html>