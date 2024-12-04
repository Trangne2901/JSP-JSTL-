<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>May tinh</title>
</head>
<body>
<%
    double num1 = Double.parseDouble(request.getParameter("num1"));
    double num2 = Double.parseDouble(request.getParameter("num2"));
    String select = request.getParameter("select");
    double result = 0;
    request.setAttribute("num1", num1);
    request.setAttribute("num2", num2);
    request.setAttribute("result", result);
    request.setAttribute("select", select);
%>
<c:choose>

    <c:when test="${select.equals('add')}">
        <c:set var="result" value="${num1+num2}"></c:set>
    </c:when>
    <c:when test="${select.equals('subtract')}">
        <c:set var="result" value="${num1-num2}"></c:set>
    </c:when>
    <c:when test="${select.equals('multiply')}">
        <c:set var="result" value="${num1*num2}"></c:set>
    </c:when>
    <c:when test="${select.equals('divide')}">
        <c:set var="result" value="${num1/num2}"></c:set>
    </c:when>

</c:choose>
Kết quả: <c:out value="${result}" />
<%--<p> ${result}</p>--%>
</body>
</html>
