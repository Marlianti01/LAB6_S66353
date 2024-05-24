<%-- 
    Document   : main
    Created on : May 24, 2024, 1:34:16 PM
    Author     : marli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="lab6.com.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="user" class="lab6.com.User" scope="request"/>
        <jsp:setProperty name="user" property="*"/>
        <h1>WELCOME</h1>
        
        <%
                
            String username = (String)session.getAttribute("username");
            String firstname = (String)session.getAttribute("firstname");
            String lastname = (String)session.getAttribute("lastname");
            
            
            
        %>
        
         <p>Username: <%= username %></p>
        <p>First Name: <%= firstname %></p>
        <p>Last Name: <%= lastname %></p>
    </body>
</html>
