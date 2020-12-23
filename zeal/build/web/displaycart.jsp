<%-- 
    Document   : checkout
    Created on : Dec 22, 2020, 2:58:49 AM
    Author     : z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <c:set var = "salary" scope = "session" value = "0"/>
    <style>
        body {
                line-height: 1.6;
                color: #101010;
                text-align: left;
            }
        table, th, td {
            border: 1px solid #101010;
            border-collapse: collapse;
            text-align: center
        }
    </style>
    <head>
        <script>
            function sendRedirect(url)
            {
                window.location.href = url;
            }
        </script>
        <title>meo meo</title>
    </head>
    <body>
        
        <input type="button" padding-bottom="25px" onclick="sendRedirect('list')" value = "Product List">
        <form>
            <table>
                <tr>
                    <td>Product</td>
                    <c:forEach items="${requestScope.carts}" var="cr" >
                        <c:set var="salary" value="${salary+cr.item.price*cr.quantity}" scope="session"/>

                        <td  style="max-width:120px"> ${cr.item.name}<br><img src="img/${cr.item.item_id}.png" width="100" height="100" alt=""/></td>
                        </c:forEach>
                </tr>
                <td>Quantity</td>
                <c:forEach items="${requestScope.carts}" var="cr" >
                    <td> <input style="max-width:120px" type="number" name="q" min="0" max="${cr.item.stock}" value="${cr.quantity}">
                        <c:forEach items="${requestScope.carts}" var="i" >
                        </c:forEach>
                        <input type="hidden" name="i" value="${cr.item.item_id}"
                    </td>
                </c:forEach>
            </table>
            <c:if test="${requestScope.count>0}">
            <input type="submit" value="Update Cart"
                   formaction="UpdateCart"
                   >
            <input type="submit" value="Checkout"
                   formaction="checkout"
                   >
            </c:if>
        </form>
        Total: <c:out value="${salary}"/>  xèng
    </body>
</html>
