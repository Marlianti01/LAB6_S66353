<%-- 
    Document   : ProcessAuthor
    Created on : May 22, 2024, 10:07:01 PM
    Author     : marli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="lab6.com.Author"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lab 6 - Task 1 - Perform creating and retrieving records via JSP page</h1>
        <jsp:useBean id="myAuthor" class="lab6.com.Author" scope="request"/>      
        <jsp:setProperty name="myAuthor" property="*"/>   
        <%
            int result;
        
        Class.forName("com.mysql.jdbc.Driver");
            String myURL="jdbc:mysql://localhost:3306/csf3107";
        Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            
            
            String sInsertQry = "INSERT INTO author(authno, name, address, city, state, zip) VALUES(?,?,?,?,?,?)";
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
            
            myPS.setString(1, myAuthor.getAuthno());
            myPS.setString(2, myAuthor.getName());
            myPS.setString(3, myAuthor.getAddress());
            myPS.setString(4, myAuthor.getCity());
            myPS.setString(5, myAuthor.getState());
            myPS.setString(6, myAuthor.getZip());
            
             result = myPS.executeUpdate();
            
            if(result > 0){
                out.println("\tRecord successfully added into Author table...!");
                out.println("<p>" + "Record with author no "+myAuthor.getAuthno()+" succesfully created..!"+"</p>");
                out.println("<p>"+"Details of record are; "+"</p>");
                out.println("<p>Name: "+myAuthor.getName()+"</p>");
                out.println("<p>Address: "+myAuthor.getAddress()+"</p>");
                out.println("<p>City: "+myAuthor.getCity()+"</p>");
                out.println("<p>State: "+myAuthor.getState()+"</p>");
                out.println("<p>Zip: "+myAuthor.getZip()+"</p>");
                myConnection.close();
            }   
        %>
    </body>
</html>
