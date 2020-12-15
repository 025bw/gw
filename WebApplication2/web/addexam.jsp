<%-- 
    Document   : addexam
    Created on : Dec 15, 2020, 10:29:36 AM
    Author     : z
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
        <form action="AddExam" method="POST">
            Id: <input type="text" name="id" value="${requestScope.student.id}"/> <br/>
            Name: <input type="text" name="name" value="${requestScope.student.name}"/> <br/>
            Gender: <input type="radio"
                           <c:if test="${requestScope.student.gender}">
                           checked="checked" 
                           </c:if>
                           name="gender" value="male"/> Male
            <input type="radio" 
                    ${requestScope.student.gender?"":"checked=\"checked\""}
            name="gender" value="female"/> Female <br/>
            Dob: <input type="date" name="dob" value="${requestScope.student.dob}"/> <br/>
            
            
            Exam: <input type="text" name="eid"/> <br/>
            Subject:
            <select name="sid" >
                <c:forEach items="${requestScope.subs}" var="sub">
                    <option value="${sub.sid}">${sub.subject}</option>
                </c:forEach>
            </select>
            <br/>
            Mark: <input type="text" name="mark"/> <br/>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
