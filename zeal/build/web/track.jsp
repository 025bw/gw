<%-- 
    Document   : track
    Created on : Dec 23, 2020, 11:54:37 PM
    Author     : z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <body>
        <form action="track" mothod="post">
            <input type="text" name="key" value="${param.key}" >
            <input type="submit" value="Search">
        </form>
            ${param.order.orderstatus}
            <table>
                <c:forEach items="${requestScope.order}" var="o">
                <td>
                    ${o.orderstatus}
                </td>
                </c:forEach>
            </table>
                
    </body>
</html>
