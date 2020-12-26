<%-- 
    Document   : track
    Created on : Dec 23, 2020, 11:54:37 PM
    Author     : z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table,td,th,tr {
                border-collapse: collapse;
                border-spacing: 0;
                border: 1px solid black
            }
        </style>
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
        <br>
        <form action="track" method="POST">
            <input type="text" name="key" value="${param.key}" >
            <input type="submit" value="Search">
        </form>
            <c:set var = "total" scope = "session" value = "0"/>
            <c:forEach items="${requestScope.order}" var="o">
                <c:if test="${fn:length(o.orderstatus)>0}" >
                    <c:set var = "total" scope = "session" value = "${o.oid}"/>
            <table>
                <tr>
                <th>
                    Phone Number
                </th>
                <th>
                    Order Status
                </th>
                <th>
                    Shipping Address
                </th>
                </tr>
                <tr><c:forEach items="${requestScope.order}" var="o">
                <td>
                    ${o.customer.phone}
                </td>
                    <td>
                    ${o.orderstatus}
                </td>
                <td>
                    ${o.shipaddress}
                </td>
                </c:forEach></tr>
                
            </table>
            <br>
            Items:<br>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    
                </tr>
                <c:forEach items="${requestScope.ois}" var="ois">
                    <c:if test="${ois.oid == total}">
                        <tr>
                    <td>${ois.item.name}</td>
                    <td>${ois.price}</td>
                    <td>${ois.quantity}</td>
                    
                </tr>
                    </c:if>
                    </c:forEach>
            </table>
            </c:if>
            </c:forEach>
    </body>
</html>
