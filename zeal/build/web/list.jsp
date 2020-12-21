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
            input[type="checkbox"]{
  width: 21px; /*Desired width*/
  height: 21px; /*Desired height*/
  top: 10px;
}

            a {
                margin-right: 10px;
                color: #101010;
            }
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
        <title>JSP Page</title>
        <script>
            function sendRedirect(url)
            {
                window.location.href = url;
            }
        </script>
    </head>
    <body>
        <a href="list" method="get"> Product List</a>
        <a href="cart" method="get"> Cart </a>
        <a href="checkout" method="get"> Check Out </a>


        <form action="list" method = "get">
            Product name: <input type="text" style="width: 144px;"name="name" value="${param.name}">
            <br>Price from: <input style="width: 70px;" type="text" name="from" value="${param.from}">
            to: <input type="text" style="width: 70px;" name="to" value="${param.to}">
            <br>Do not include out of stock item: 
            <input type="checkbox" <c:if test="${param.instock != on}">checked="checked"</c:if>
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
        
        <div id="pager" class="pagger"> </div>
        <table >
            <th>
                <c:choose>
                    <c:when test="${sort=='name asc'}">
                        <a href="list?sort=name_desc"method="get"> Product name</a> </c:when>
                    <c:when test="${sort=='name desc'}">
                        <a href="list"method="get"> Product name</a> </c:when>
                    <c:otherwise>
                        <a href="list?sort=name_asc"method="get"> Product name</a> </c:otherwise>
                </c:choose>
            </th>
            <th>
                <c:choose>
                    <c:when test="${sort=='price asc'}">
                        <a href="list?sort=price_desc"method="get"> Price</a> </c:when>
                    <c:when test="${sort=='price desc'}">
                        <a href="list"method="get"> Price</a> </c:when>
                    <c:otherwise>
                        <a href="list?sort=price_asc"method="get"> Price</a> </c:otherwise>
                </c:choose>


            </th>
            <th>
                Available Stock
            </th>
            <c:forEach items="${requestScope.items}" var="i" >
                <tr>
                    <td text-align: center style="max-width:120px"> ${i.name}<br><img src="img/${i.item_id}.png" width="100" height="100" alt=""/></td>
                    <td text-align: right>${i.price} VND</td>
                    <td><c:choose><c:when test = "${i.stock == 0}">out of stock</c:when>
                            <c:otherwise>${i.stock}</c:otherwise></c:choose></td>
                            <td><form action="/action_page.php">
                                    Quantity:
                                    <input type="number" id="quantity" name="quantity" min="0" max="${i.stock}">
                            <input type="submit" value="Add to cart">
                        </form>
                </tr>
            </c:forEach>
        </table>
        <div id="pager_bottom" class="pagger"> </div>
        <script>
            renderPager("pager",${requestScope.pageindex},${requestScope.totalpage}, 10);
            renderPager("pager_bottom",${requestScope.pageindex},${requestScope.totalpage}, 10);
        </script>

    </body>
</html>
