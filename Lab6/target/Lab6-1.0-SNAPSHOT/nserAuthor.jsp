<%-- 
    Document   : nserAuthor
    Created on : May 22, 2024, 9:31:23 PM
    Author     : marli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 Task 2</title>
    </head>
    <body>
        <h1>Lab 6 - Task 2 -Perform creating and retrieving records via JSP page</h1>
        
        <form action="ProcessAuthor.jsp" method="post">
            <fieldset>
                <legend>Author Registration</legend>
                <label>Author No: </label>
                <input type="text" name="authno" placeholder="Eg: UKXXXX"><br><br>
                
                <label>Name: </label>
                <input type="text" name="name" placeholder="Enter Your name"><br><br>
                
                <label>Address: </label>
                <input type="text" name="address" placeholder="Enter your address"><br><br>
                
                <label>City: </label>
                <input type="text" name="city" placeholder="Enter your city"><br><br>
                
                <label>State: </label>
                <input type="text" name="state" placeholder="Enter your state"><br><br>
                
                <label>Zip </label>
                <input type="text" name="zip" placeholder="Enter your zip"><br><br>
                
                <input type="submit" name="Submit">
                <input type="reset" name="Cancel">
                
                
            </fieldset>
            
        </form>
    
    
    </body>
</html>
