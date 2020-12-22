<%-- 
    Document   : checkout
    Created on : Dec 22, 2020, 2:58:49 AM
    Author     : z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
            table, th, td {
                border: 1px solid #101010;
                border-collapse: collapse;
            }
    </style>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
        <c:forEach items="${requestScope.carts}" var="cr" >
                <tr>
                    <td>${cr.itemid}</td>
                    <td>${cr.quantity}</td>
                </tr>
            </c:forEach>
        
        
        </table>
    </body>
</html>
