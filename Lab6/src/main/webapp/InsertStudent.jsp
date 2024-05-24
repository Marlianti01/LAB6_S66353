<%-- 
    Document   : InsertStudent
    Created on : May 23, 2024, 1:27:40 AM
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
        
        <form action="processStudent.jsp" method="post">
        <fieldset>
            <legend>Student Registration</legend>
            <label>Student ID: </label>
            <input type="text" name="stuno" ><br><br>
            <label>Name: </label>
            <input type="text" name="name"><br><br>
            <label>Program: </label>
            <select name="program">
                <option value="BSc Soft. Eng.">BSc Soft. Eng.</option>
                <option value="BSc. with IM">BSc. with IM</option>
                <option value="BSc. in Networking">BSc. in Networking</option>
                <option value="BSc. in Robotic">BSc. in Robotic</option>
            </select><br><br>
            <input type="submit" name="Submit">
            <input type="reset" name="Cancel">
        </fieldset>
            </form>
    </body>
</html>
