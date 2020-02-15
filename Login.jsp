<%-- 
    Document   : Login
    Created on : 15 Feb, 2020, 2:12:04 PM
    Author     : Dinesh kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form method="post" action="LoginData.jsp">
           
             
            user name: <input type="text" name="uname"><br>
            password :<input type="password" name="upass"><br>
            <a href="forgetlogin.jsp">Forget password</a>
            <input type="submit" value="Submit">
            
        </form>
    </body>
</html>
