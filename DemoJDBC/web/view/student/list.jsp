<%-- 
    Document   : list
    Created on : Dec 8, 2020, 11:35:01 AM
    Author     : sonnt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

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
        </script>
    </head>
    <body>
        <form action="filter" method="POST">
           ID: <input type="text" value="${param.id}" name="id" /> <br/>
           Name: <input type="text" value="${param.name}" name="name" /> <br/>
           Gender: <input type="radio" 
                        <c:if test="${ param.gender == 'male'}" >
                              checked="checked" 
                            </c:if>
                        name="gender" value="male" /> Male
            <input type="radio" 
                        <c:if test="${ param.gender == 'female'}" >
                              checked="checked" 
                            </c:if> 
                        name="gender" value="female"  /> Female
            <input type="radio" 
                        <c:if test="${ param.gender == 'both' 
                                      or param.gender == '' 
                                      or param.gender eq null}" >
                              checked="checked" 
                            </c:if>      
                        name="gender" value="both" /> Both <br/>
           From: <input type="date" value="${param.from}" name="from"/> <br/>
           To: <input type="date" value="${param.to}" name="to"/> <br/>
           Department:
            <select name="did" >
                <option value="-1"> ------All------</option>
                <c:forEach items="${requestScope.depts}" var="d">
                    <option 
                        <c:if test="${d.id eq param.did}">selected="selected"</c:if>
                        value="${d.id}">${d.name}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Search"/>
        </form>
           <input type="button" value="Create"
                               onclick="sendRedirect('create')"
                               />
        <table border="1px"> 
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Dob</th>
                <th></th>
            </tr>
            <c:forEach items="${requestScope.students}" var="s" varStatus="loop">
                <tr 
                    <c:if test="${loop.index mod 2 ne 0}">
                        style="background-color: lightgray;"
                    </c:if>
                    >
                    <td>${s.id}</td>
                    <td>${s.name}</td>
                    <td>
                        <c:choose>
                            <c:when test = "${s.gender}">
                                <img src="../img/male-icon.png" alt=""/>
                            </c:when>
                            <c:otherwise>
                                <img src="../img/female-icon.png" alt=""/>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <fmt:formatDate type = "date" 
                                        value = "${s.dob}" />
                    </td>
                    <td>
                        
                        <input type="button" value="Edit" 
                               onclick="sendRedirect('edit?id=${s.id}')" />
                        <a href="delete?id=${s.id}"> Delete </a>
                    </td>
                </tr>
            </c:forEach>
        </table>    

    </body>
</html>
