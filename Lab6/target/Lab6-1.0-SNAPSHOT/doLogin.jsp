<%-- 
    Document   : doLogin
    Created on : May 24, 2024, 1:12:11 PM
    Author     : marli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
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
        <%
            Class.forName("com.mysql.jdbc.Driver");
            
            String mySql = "jdbc:mysql://localhost/csf3107";
            Connection myConnection = DriverManager.getConnection(mySql, "root", "admin");
            
            Statement myStatement = myConnection.createStatement();
            
            String que = "SELECT * FROM userprofile WHERE username = ? AND password = ?";
            PreparedStatement ps = myConnection.prepareStatement(que);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
            
                    String firstname = rs.getString("firstname");
                    String lastname = rs.getString("lastname");
                    
                     session.setAttribute("username", user.getUsername());
                     session.setAttribute("firstname", firstname);
                     session.setAttribute("lastname", lastname);
                response.sendRedirect("main.jsp");
            }
            else{
            response.sendRedirect("login.jsp?message=Invalid+username+or+password");
            }
            
            myConnection.close();
            
           
        %>
    </body>
</html>
