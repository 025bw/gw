<%-- 
    Document   : manage
    Created on : Dec 23, 2020, 5:56:20 PM
    Author     : z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function sendRedirect(url)
            {
                window.location.href = url;
            }
            $("#featured-courses").flickity();
        </script>
    </head>
    
    <body>
        <h1>Hello World!</h1>
        <input type="button" onclick="sendRedirect('manageorder')" value = "Manage Order">
        <input type="button" onclick="sendRedirect('manageproduct')" value = "Manage Product">
    </body>
</html>
