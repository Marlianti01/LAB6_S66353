<%-- 
    Document   : queryStudent
    Created on : May 23, 2024, 8:12:21 PM
    Author     : marli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                border-collapse: collapse;
            }
            
            td, th {
                border: 1px solid #999;
                padding: 0.5rem;
                text-align: left;
            }
            
            th{
                background: gold;
            }
        </style>
    </head>
    <body>
        <%
            out.print("<table>");
                out.print("<thead>");
                    out.print("<th>"+"ISBNNo"+"</th>");
                    out.print("<th>"+"Author"+"</th>");
                    out.print("<th>"+"Title"+"</th>");
                out.print("</thead>");
                out.print("<tbody>");                 
        %>
        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Step 1: MySQL driver loaded...!");
            
            String myURL = "jdbc:mysql://localhost/csf3107";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            System.out.println("Step 2 : Database is connected...!");
            
            Statement myStatement = myConnection.createStatement();
            
            String myQuery = "SELECT * FROM student";
            ResultSet myResultSet = myStatement.executeQuery(myQuery);
            
            while (myResultSet.next()){
            out.print("<tr>");
                out.print("<td width=\"20%\">" + myResultSet.getString(1)+ "</td>");
                out.print("<td width=\"40%\">" + myResultSet.getString(2)+ "</td>");
                out.print("<td width=\"40%\">" + myResultSet.getString(3)+ "</td>");
            out.print("</tr>");
            }
            
                myConnection.close();
        %>
    </body>
</html>
