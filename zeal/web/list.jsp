<%-- 
    Document   : list
    Created on : Dec 21, 2020, 9:00:54 PM
    Author     : z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<script src="../js/home/pagger.js" type="text/javascript"></script>
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
        <title>gau gau</title>
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
        <input type="button" onclick="sendRedirect('checkout')" value = "Checkout">

        <br>
        <form action="list" method = "post">
            Product name: <input type="text" style="width: 144px;"name="name" value="${param.name}">
            <br>Price from: <input style="width: 70px;" type="text" name="from" value="${param.from}">
            to: <input type="text" style="width: 70px;" name="to" value="${param.to}">
            <br>Do not include out of stock item: 
            <input type="checkbox" value="1"<c:if test="${param.instock eq 1}">checked="checked"</c:if>
                   name="instock">
                <br>Category: <select style="width: 112px;" name="cat_id" >

                    <option value="-1"></option>
                <c:forEach items="${requestScope.cats}" var="c">
                    <option  
                        <c:if test="${c.cat_id eq param.cat_id}">selected="selected"</c:if>
                        value="${c.cat_id}">${c.cat_name}</option>
                </c:forEach>
            </select>


            <input type="submit" value="Search">
        </form>


        <table >
            <th>
                <c:choose>
                    <c:when test="${sort=='name asc'}">
                        <a href="list?name=${param.name}&from=${param.from}&to=${param.to}&instock=${param.instock}&cat_id=-1&sort=name desc"method="post"> Product name</a> </c:when>
                    <c:when test="${sort=='name desc'}">
                        <a href="list?name=${param.name}&from=${param.from}&to=${param.to}&instock=${param.instock}&cat_id=-1"method="get"> Product name</a> </c:when>
                    <c:otherwise>
                        <a href="list?name=${param.name}&from=${param.from}&to=${param.to}&instock=${param.instock}&cat_id=-1&sort=name asc"method="post"> Product name</a> </c:otherwise>
                </c:choose>
            </th>
            <th>
                <c:choose>
                    <c:when test="${sort=='price asc'}">
                        <a href="list?name=${param.name}&from=${param.from}&to=${param.to}&instock=${param.instock}&cat_id=-1&sort=price desc"method="get"> Price</a> </c:when>
                    <c:when test="${sort=='price desc'}">
                        <a href="list?name=${param.name}&from=${param.from}&to=${param.to}&instock=${param.instock}&cat_id=-1"method="get"> Price</a> </c:when>
                    <c:otherwise>
                        <a href="list?name=${param.name}&from=${param.from}&to=${param.to}&instock=${param.instock}&cat_id=-1&sort=price asc"method="get"> Price</a> </c:otherwise>
                </c:choose>
            </th>
            <th>
                In Stock
            </th>
            <c:forEach items="${requestScope.items}" var="i" >
                <tr>
                    <td text-align: center style="max-width:120px"> ${i.name}<br><img src="img/${i.item_id}.png" width="100" height="100" alt=""/></td>
                    <td text-align: right>${i.price} xu</td>
                    <td><c:choose><c:when test = "${i.stock == 0}">out of stock</c:when>
                            <c:otherwise>${i.stock}</c:otherwise></c:choose></td>
                            <td>
                                <form action="add" method="get">
                                    Quantity:
                                    <input type="number" name="quantity" min="0" 
                                <c:forEach
                                    items="${requestScope.carts}" var="cr" >
                                    <c:if test="${cr.item.item_id eq i.item_id}">
                                        max="${i.stock - cr.quantity}"</c:if>
                            </c:forEach>
                                        max="${i.stock}" placeholder="0">
                            
                            <input type="hidden" name="itemid" value ="${i.item_id}">
                            <input type="submit" value="Add to cart">
                        </form>
                </tr>
            </c:forEach>
        </table>
        <c:forEach begin="1" end="${requestScope.totalpage}" var="p">
            <c:choose>
                <c:when test="${requestScope.pageindex == p}">
                    ${p}
                </c:when>
                <c:otherwise>
                    <a href="list?name=${param.name}&from=${param.from}&to=${param.to}&instock=${param.instock}&cat_id=-1&sort=${sort}&page=${p}"> ${p}</a> </c:otherwise>
            </c:choose>
        </c:forEach>

    </body>    
</html>
