<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>edit user</title>
</head>

<body>
<div>
    <div>
        <div>
            <h2>edit user</h2>
        </div>
        <c:set var="named" value="${userName}"/>
        <c:if test="${named != null}">
            <p>User ${named} edited!</p>
        </c:if>
        <form method="post">
            <label>Name:
                <input type="text" name="name" value="${name}"><br />
            </label>
            <label>Age:
                <input type="number" name="age" value="${age}"><br />
            </label>
            <button type="submit">Submit</button>
        </form>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>