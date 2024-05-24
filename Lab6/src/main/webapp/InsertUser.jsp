<%-- 
    Document   : InsertUser
    Created on : May 24, 2024, 1:52:05 AM
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
        <form action="processUser.jsp" method="post">
            <fieldset>
                <legend>User Profile</legend>
                <labe>Username: </labe>
                <input type="text" name="username"><br><br>
                
                <label>Password: </label>
                <input type="password" name="password"><br><br>
                
                <label>Firstname: </label>
                <input type="text" name="firstname"><br><br>
                
                <label>Lastname </label>
                <input type="text" name="lastname"><br><br>
                
                <input type="submit" name="submit">
            </fieldset>
        </form>
    </body>
</html>
