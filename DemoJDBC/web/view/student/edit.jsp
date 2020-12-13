<%-- 
    Document   : edit
    Created on : Dec 9, 2020, 10:03:26 AM
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
        <form action="edit" method="POST">
            Id: <input type="text" name="id" value="${requestScope.student.id}" /> <br/>
            Name: <input type="text" name="name" value="${requestScope.student.name}" /> <br/>
            Gender: <input type="radio"
                           <c:if test="${requestScope.student.gender}">
                           checked="checked" 
                           </c:if>
                           name="gender" value="male"/> Male
            <input type="radio" 
                    ${requestScope.student.gender?"":"checked=\"checked\""}
            name="gender" value="female"/> Female
            Dob: <input type="date" name="dob" value="${requestScope.student.dob}"/> <br/>
            Department:
            <select name="did" >
                <c:forEach items="${requestScope.depts}" var="d">
                    <option 
                        <c:if test="${d.id eq requestScope.student.dept.id}">selected="selected"</c:if>
                        value="${d.id}">${d.name}</option>
                </c:forEach>
            </select>
            <br/>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
