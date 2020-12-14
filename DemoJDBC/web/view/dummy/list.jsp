<%-- 
    Document   : list
    Created on : Dec 10, 2020, 10:17:52 AM
    Author     : sonnt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<script src="../js/home/pagger.js" type="text/javascript"></script>
<link href="../css/home/pagger.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="pager" class="pagger"> </div>
        <table border="1px"> 
            <tr>
                <th>Id</th>
                <th>Name</th>
            </tr>
            <c:forEach items="${requestScope.dummies}" var="d" varStatus="loop">
                <tr 
                    <c:if test="${loop.index mod 2 ne 0}">
                        style="background-color: lightgray;"
                    </c:if>
                    >
                    <td>${d.id}</td>
                    <td>${d.name}</td>
                </tr>
            </c:forEach>
        </table>   
        <div id="pager_bottom" class="pagger"> </div>
        <script>
            renderPager("pager",${requestScope.pageindex},${requestScope.totalpage},10);
            renderPager("pager_bottom",${requestScope.pageindex},${requestScope.totalpage},10);
        </script>
    </body>
</html>
