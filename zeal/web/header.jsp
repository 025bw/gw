<%-- 
    Document   : header
    Created on : Dec 18, 2020, 11:53:57 AM
    Author     : sonnt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        ${sessionScope.user ne null?sessionScope.user.username:"not yet logged in"}
    </body>
</html>
