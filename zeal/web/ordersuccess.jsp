<%-- 
    Document   : ordersuccess
    Created on : Dec 23, 2020, 11:29:03 PM
    Author     : z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        div1{
            font-size: 30px;
        }
        
    </style>
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
        <input type="button" onclick="sendRedirect('/zeal/')" value = "Home">
        <input type="button" onclick="sendRedirect('list')" value = "Product List">
        <br><br>
        Order Succeeded. Please use this key to track your order:
        <br><br><br>
        <br><div1>${key}</div>
    </body>
</html>
