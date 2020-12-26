<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .row {
                margin-left:-5px;
                margin-right:-5px;
            }
            .column {
                float: left;
                width: 240px;
                height: 325px;
                padding: 5px;
            }
            body {
                line-height: 1.6;
                color: #101010;
                text-align: left;
            }
            table:hover {
                transition: box-shadow 0.3s ease-in-out;
                border: 1px solid #f0f0f0;
                box-shadow:
                    6px 6px 6px 0px rgba(0, 0, 0, 0.134)
            }
            table {
                border-collapse: collapse;
            }
            table td, table th {
    border: 1px solid #e0e0e0;
}
table tr:first-child th {
    border-top: 0;
     border-bottom: 0;
}
table tr:last-child td {
    border-bottom: 0;
    border-top: 0;
}
table tr td:first-child,
table tr th:first-child {
    border-left: 0;
}
table tr td:last-child,
table tr th:last-child {
    border-right: 0;
}

            div1 {
                margin-left: auto;
                margin-right: auto;
                height: 33%;
                width: 100%;
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
        <c:set var = "total" scope = "session" value = "0"/>
        <c:forEach items="${requestScope.carts}" var="c" >
            <c:set var="total" value="${total+c.item.price*c.quantity}" scope="session"/>
        </c:forEach>
        <c:if test="${requestScope.count==0}">
            <br>Cart is empty
        </c:if>
        <c:if test="${requestScope.count>0}">
            <form action="checkout" method="post">
                Full name:<span style="padding-left:33px"><input type="text" style="width: 144px;" name="name" required ><br>
                    Address:<span style="padding-left:45px"><input type="text" style="width: 144px;" name="address" required ><br>
                        Phone number:<span style="padding-left:5px"><input type="text" style="width: 144px;" name="phone" required ><br>
                            Note:<span style="padding-left:66px"><input type="text" style="width: 144px;" name="note" ><br>                
                                You have to pay: <c:out value="${total}"/> coins
                                <input type="submit" vslue="Place Order">
                                </form>
                                <div class="row">
                                    <c:forEach items="${requestScope.carts}" var="c" >
                                        <div class="column">
                                            <table>
                                                <c:set var="total" value="${total+c.item.price*c.quantity}" scope="session"/>

                                                <td text-align: center style="max-width:120px"> ${c.item.name}<br><img src="img/${c.item.item_id}.png" width="100" height="100" alt=""/></td>
                                                <td>
                                                <div1>Price: ${c.item.price} coins</div>
                                                    <br>
                                                    <div1>Quantity: ${c.quantity}</div>
                                                        <br>
                                                        <div1>Total: ${c.item.price*c.quantity}</div>

                                                            </td>
                                                            </table>
                                                            </div>
                                                        </c:forEach>
                                                        </div>
                                                    </c:if>
                                                    </body>
                                                    </html>
