<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                line-height: 1.6;
                color: #101010;
                text-align: left;
            }
            table, th, td {
                border: 1px solid #101010;
                border-collapse: collapse;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>quac quac</title>
        <script>
            function sendRedirect(url)
            {
                window.location.href = url;
            }
        </script>
    </head>
    <body>
        <input type="button" onclick="sendRedirect('list')" value = "Product List">
        <input type="button" onclick="sendRedirect('cart')" value = "Cart">
        <c:set var = "salary" scope = "session" value = "0"/>
        <c:forEach items="${requestScope.carts}" var="c" >
            <c:set var="salary" value="${salary+c.item.price*c.quantity}" scope="session"/>
        </c:forEach>

        <form action="checkout" method="post">
            Full name:<span style="padding-left:33px"><input type="text" style="width: 144px;" name="name" required ><br>
                Address:<span style="padding-left:45px"><input type="text" style="width: 144px;" name="address" required ><br>
                    Phone number:<span style="padding-left:5px"><input type="text" style="width: 144px;" name="phone" required ><br>
                        Note:<span style="padding-left:66px"><input type="text" style="width: 144px;" name="note" ><br>                
                            You have to pay: <c:out value="${salary}"/> xèng

                            </form>
                            <c:forEach items="${requestScope.carts}" var="c" >
                                <c:set var="salary" value="${salary+c.item.price*c.quantity}" scope="session"/>
                                <table cellspacing="0">
                                    <td text-align: center style="max-width:120px"> ${c.item.name}<br><img src="img/${c.item.item_id}.png" width="100" height="100" alt=""/></td>
                                    <td>
                                        <table cellspacing="0">
                                            <tr><td>Price: ${c.item.price} xu</td></tr>
                                            <tr><td>Quantity: ${c.quantity}</td></tr>
                                            <tr><td>Total: ${c.item.price*c.quantity}</tr>
                                        </table>
                                    </td>
                                </table>
                            </c:forEach>
                            </body>
                            </html>
