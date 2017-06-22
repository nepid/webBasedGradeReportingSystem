<%-- 
    Document   : userinfo
    Created on : Jul 15, 2014, 5:50:22 PM
    Author     : Jack Sparrow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success User Information</title>
    </head>
    <body>
        
        Welcome<br>
        
        Full Name: ${sessionScope['userInfo[0]']} <br>
        Phone No.: ${sessionScope['userInfo[1]']}<br>
        Address:${sessionScope['userInfo[2]']}<br>
        Email ID: ${sessionScope['userInfo[3]']}<br>
        
        Thank you for the login, <a href="logout">Please get out.</a> 
        
    </body>
</html>
