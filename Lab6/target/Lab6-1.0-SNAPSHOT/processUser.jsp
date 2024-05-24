<%-- 
    Document   : processUser
    Created on : May 24, 2024, 1:55:55 AM
    Author     : marli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="myUser" class="lab6.com.User"  scope="request"/>
        <jsp:setProperty name="myUser" property="*"/>
        
        <%
            int result;
            
            Class.forName("com.mysql.jdbc.Driver");
            String mySQL = "jdbc:mysql://localhost/csf3107";
            Connection myConnection = DriverManager.getConnection(mySQL, "root", "admin");
            String insertUser = "INSERT INTO userprofile (username, password, firstname, lastname) VALUES (?,?,?,?)";
            PreparedStatement ps = myConnection.prepareStatement(insertUser);
            
            ps.setString(1, myUser.getUsername());
            ps.setString(2, myUser.getPassword());
            ps.setString(3, myUser.getFirstname());
            ps.setString(4, myUser.getLastname());
            
            result = ps.executeUpdate();
            
            if(result > 0){
            
            response.sendRedirect("login.jsp");
            }
            
            myConnection.close();
            
            
            
        %>
    </body>
</html>
