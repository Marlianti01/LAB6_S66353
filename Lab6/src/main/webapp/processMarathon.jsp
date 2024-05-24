<%-- 
    Document   : processMarathon.jsp
    Created on : May 23, 2024, 9:36:24 PM
    Author     : marli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="lab6.com.Database"%>
<%@page import="lab6.com.Marathon"%>
<%@page import="lab6.com.MarathonDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="myMarathon" class="lab6.com.Marathon" scope="request"/>       
        <jsp:setProperty name="myMarathon" property="*"/>
        <%
            int result;
            
            Database myDB = new Database();
            
            MarathonDAO object1 =  new MarathonDAO();
            
            result = object1.addDetails(myMarathon);
            
            if(result > 0){
            System.out.println("\tRecord successfully added into Book's table...!");
            out.print("<p>" + "Record with IC No " + myMarathon.getIcno() + " successfully created..!"+"</p>");
            
            out.print("<p>" + "Details of record are; " + "</p>");
            out.print("<p>Ic No     : " + myMarathon.getIcno() + "</p>" );
            out.print("<p>Name     : " + myMarathon.getName() + "</p>" );
            out.print("<p>Category     : " + myMarathon.getCategory() + "</p>" );
            myDB.closeConnection();
            }
            
        %>
        
  
    </body>
</html>
