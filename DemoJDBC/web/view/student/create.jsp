<%-- 
    Document   : create
    Created on : Dec 9, 2020, 10:03:21 AM
    Author     : sonnt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="create" method="POST">
            Id: <input type="text" name="id"/> <br/>
            Name: <input type="text" name="name"/> <br/>
            Gender: <input type="radio" checked="checked" name="gender" value="male"/> Male
            <input type="radio" name="gender" value="female"/> Male
            Dob: <input type="date" name="dob"/> <br/>
            Department:
            <select name="did" >
                <c:forEach items="${requestScope.depts}" var="d">
                    <option value="${d.id}">${d.name}</option>
                </c:forEach>
            </select>
            <br/>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
