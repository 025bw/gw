<%-- 
    Document   : manageorder
    Created on : Dec 23, 2020, 2:05:30 AM
    Author     : z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table,td,th,tr {
                border-collapse: collapse;
                border-spacing: 0;
                border: 1px solid black
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr><th>ID</th><th>Phone Number</th><th>Total Value</th><th>Order Status</th></tr>
                    <c:forEach items="${requestScope.orders}" var="o">
                <tr>
                    <td>
                        ${o.oid}
                    </td>
                    <td>
                        ${o.customer.phone}
                    </td>
                    <td>

                        <c:set var="value" scope="session" value="0"/>  
                        <c:forEach items="${requestScope.ois}" var="ois">
                            <c:if test="${o.oid==ois.oid}">
                                <c:set var="value" value="${value+ois.price*ois.quantity}" scope="session"/>
                            </c:if>
                        </c:forEach>
                        <c:out value="${value}"/>
                    </td>
                    <td><form action="manageorder" method="post">
                            <c:if test="${o.orderstatus=='arrived'}">
                                ${o.orderstatus}
                            </c:if>

                            <c:if test="${o.orderstatus=='ordered'}">
                                <select style="width: 90px;" name="orderstatus" onchange="this.form.submit()" >
                                    <option value="${o.oid}_ordered">ordered</option>
                                    <option value="${o.oid}_shipped">shipped</option>
                                    <option value="${o.oid}_arrived">arrived</option>
                                    <option value="${o.oid}_canceled">canceled</option>
                                </select>
                            </c:if>
                            <c:if test="${o.orderstatus=='shipped'}">
                                <select style="width: 90px;" name="orderstatus" onchange="this.form.submit()" >
                                    <option value="${o.oid}_shipped">shipped</option>
                                    <option value="${o.oid}_arrived">arrived</option>
                                </select>
                            </c:if>

                        </form></td>
                </tr>
            </c:forEach>
        </table>    
    </body>
</html>
