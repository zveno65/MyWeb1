<%@ page import="java.util.List" %>
<%@ page import="ru.plotnikov.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Users</title>
</head>

<body>

<div>
    <div>
        <div>
            <h2>Users</h2>
        </div>
        <c:set var="name" value="${addName}"/>
        <c:if test="${name != null}">
            <p>User ${name} added!</p>
        </c:if>
        <c:set var="name" value="${editName}"/>
        <c:if test="${name != null}">
            <p>User ${name} edited!</p>
        </c:if>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td><c:out value="${user.getName()}"/></td>
                        <td><c:out value="${user.getAge()}"/></td>
                        <td>
                            <a href="/user?id=<c:out value="${user.getId()}"/>">Edit</a>
                        </td>
                        <td>
                            <form action="/admin/delete" method="post">
                                <input type="hidden" name="id" value="${user.getId()}">
                                <button type="submit">Delete</button>
                            </form>
<%--                            <a href="/delete?id=<c:out value="${user.getId()}"/>">Delete</a>--%>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
<%--        <%= (List<User>) request.getAttribute("users") %>--%>
    </div>
</div>

<div>
    <button onclick="location.href='/registration'">Add new user</button>
</div>
</body>
</html>