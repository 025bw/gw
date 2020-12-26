
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<script src="../js/home/pagger.js" type="text/javascript"></script>
<!DOCTYPE html>
<html>
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
        <input type="button" onclick="sendRedirect('list')" value = "Product List">
        <input type="button" onclick="sendRedirect('track')" value = "Track Order">
        <c:choose><c:when test="${sessionScope.user eq null}">

            <input type="button" onclick="sendRedirect('login')" value = "Login">
        </c:when>
        <c:otherwise>
            <input type="button" onclick="sendRedirect('manageorder')" value = "Manage Order">
            <input type="button" onclick="sendRedirect('manageproduct')" value = "Manage Product">
        </c:otherwise>
            </c:choose>
    </body>
</html>
