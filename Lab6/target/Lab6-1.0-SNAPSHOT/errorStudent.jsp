<%-- 
    Document   : errorStudent
    Created on : May 23, 2024, 2:50:04 AM
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
        <form id="errorFrm.jsp" action="InsertStudent.jsp" method="post">
            <h1>Lab 9 - Task 1 -Perform creating and retrieving records via JSP page</h1>
            <p>when inserting record</p>
            
            <p><jsp:expression>exception.getMessage()</jsp:expression></p>
            
        </form>
    </body>
</html>
