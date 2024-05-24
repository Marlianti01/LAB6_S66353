<%-- 
    Document   : registerMarathon
    Created on : May 23, 2024, 8:29:02 PM
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
        <form action="processMarathon.jsp" method="post">
            <fieldset>
                <legend>Marathon Registration</legend>
                
                <label>Ic No: </label>
                <input type="text" name="icno"><br><br>
                
                <label>Name</label>
                <input type="text" name="name" ><br><br>
                
                <label>Kategori</label>
                <select name="category">
                    <option value="5 KM">5 KM</option>
                    <option value="7 KM">7 KM</option>
                    <option value="10 KM">10 KM</option>
                </select><br><br>
                
                <input type="submit" name="Submit">
                <input type="reset" name="Cancel">
            </fieldset>
        </form>
    </body>
</html>
