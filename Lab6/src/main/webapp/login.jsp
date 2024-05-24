<%-- 
    Document   : login
    Created on : May 24, 2024, 2:24:31 AM
    Author     : marli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="doLogin.jsp" method="post">
            <legend>Login</legend>
            <label>Username: </label>
            <input type="text" name="username"><br><br>
            
            <label>Password</label>
            <input type="password" name="password"><br><br>
            
            <input type="submit" name="Submit">
        </form>
    </body>
</html>
