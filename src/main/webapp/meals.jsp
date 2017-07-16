<%--
  Created by IntelliJ IDEA.
  User: DiX
  Date: 16.07.2017
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>List Meals</h2>
<table border="0.5px" width="600px">
    <thead>
    <tr>
        <th width="40px">Дата</th>
        <th width="40px">Название</th>
        <th width="40px">Калории</th>
    </tr>
    </thead>
    <tbody>
    <jsp:useBean id="mealWithExceeds" scope="request" type="java.util.List"/>
    <c:forEach items="${mealWithExceeds}" var="mWE">
        <c:if test="${mWE.exceed==true}">
        <tr bgcolor="#ffb6c1"  align="center">
            <td class="td1">${mWE.dateTime.getHour()}:${mWE.dateTime.getMinute()}</td>
            <td class="td1">${mWE.description}</td>
            <td class="td1">${mWE.calories}</td>
        </tr>
        </c:if>
        <c:if test="${mWE.exceed==false}">
            <tr bgcolor="#90ee90"  align="center">
                <td class="td1">${mWE.dateTime.getHour()}:${mWE.dateTime.getMinute()}</td>
                <td class="td1">${mWE.description}</td>
                <td class="td1">${mWE.calories}</td>
            </tr>
        </c:if>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
