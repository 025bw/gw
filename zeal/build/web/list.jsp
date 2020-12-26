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
            table,td {
                border-collapse: collapse;
                border-spacing: 0;
                width: 100%;
            }
            td{max-width: 100px}
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
        </style>
        <title>gau gau</title>
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
            Sort by: <select name="sort" onchange="this.form.submit()">
                <option value=""></option>
                <option value="name asc" <c:if test="${sort == 'name asc'}">selected</c:if> >A-Z</option>
                <option value="name desc" <c:if test="${sort == 'name desc'}">selected</c:if> >Z-A</option>
                <option value="price asc" <c:if test="${sort == 'price asc'}">selected</c:if> >Price: Low to High</option>
                <option value="price desc" <c:if test="${sort == 'price desc'}">selected</c:if> >Price: High to Low</option>
            </select>
            <br>
            <c:forEach var="page" begin="1" end="${totalPage}" varStatus="loop">
                    <input type="button" name="page" onclick="this.form.submit()" value="${page}"></input>
                </c:forEach>
        </form>

        
<div class="row">

            <c:forEach items="${requestScope.items}" var="i" >
                <div class="column">
                    <table >
                        <tr><td>
                                <img src="img/${i.name}.png" width="220" height="220" alt=""/>

                            </td></tr>
                        <tr><td>
                                ${i.name}<br>${i.price} coins
                            </td></tr>


                        <tr><td><c:choose><c:when test = "${i.stock == 0}"><br>out of stock</c:when>
                                    <c:otherwise>In Stock: ${i.stock}</c:otherwise></c:choose></td>
                                    </td></tr>
                                <tr>

                                    <td>
                                      
                                <c:if test = "${i.stock != 0}">
                                    <form action="add" method="get">
                                        Quantity:
                                        <input type="number" width="30px" name="quantity" min="0"  
                                               <c:forEach
                                                   items="${requestScope.carts}" var="cr" >
                                                   <c:if test="${cr.item.item_id eq i.item_id}">
                                                       max="${i.stock - cr.quantity}"</c:if>
                                               </c:forEach>
                                               <c:if test="${i.stock<1000}">
                                                   max="${i.stock}"</c:if>
                                                   max="999"
                                                   
                                                   
                                                   <c:if test="${(i.stock - cr.quantity) == 0}">
                                                       value="0"</c:if>>
                                               <input type="hidden" name="itemid"  value ="${i.item_id}">
                                        <input type="submit" value="Add to cart">
                                    </form>
                                </c:if>
                            </td>

                        </tr>



                    </table></div>
                </c:forEach>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/flickity/1.1.0/flickity.pkgd.min.js"></script>
    </body>    
</html>
