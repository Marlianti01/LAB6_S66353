<%-- 
    Document   : processStudent
    Created on : May 23, 2024, 2:00:01 AM
    Author     : marli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page errorPage="errorStudent.jsp"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="myStudent" class="lab6.com.Student" scope="request"/>       
        <jsp:setProperty name="myStudent" property="*"/>       
        <%
            int result;
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Step 1 : MySQL driver load...!");
            
            String myURL = "jdbc:mysql://localhost/csf3107";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            System.out.println("Step 2: Database is connected");           
            System.out.println("Step 3: Prepared Statements created");          
            String sInsertQry = "INSERT INTO userprofile(stuno, stuname, stuprogram) VALUES(?,?,?)";          
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
            
            System.out.println("Step 4: Perform insertion of record...!");
            myPS.setString(1, myStudent.getStuno());
            myPS.setString(2, myStudent.getName());
            myPS.setString(3, myStudent.getProgram());
            
            result = myPS.executeUpdate();
            if(result > 0){
            System.out.println("\tRecord successfully added into Book's table..!");
            out.println("<p>"+"Record with student no "+myStudent.getStuno() + " successfully created..!"+"</p>");
            out.println("<p>"+"Details of record are; "+"</p>");
            out.println("<p>Student ID: "+myStudent.getStuno()+"</p>");
            out.println("<p>Name: "+myStudent.getName()+"</p>");
            out.println("<p>Program: "+myStudent.getProgram()+"</p>");
            }
            
            System.out.println("Step 5: close database connection");
            myConnection.close();
           
            System.out.println("Database connection is closed..!");
        %>
    </body>
</html>