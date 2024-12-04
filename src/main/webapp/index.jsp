
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1><%= "May tinh" %>
</h1>
<form action="calculator.jsp" method="get">
    <label>Nhap so thu nhat:</label>
    <input type="number" name="num1" min="0">
    <br>
    <label>Nhap so thu hai:</label>
    <input type="number" name="num2" min="0">
    <br>
    <select id="select" name="select">
        <option value="add"> +</option>
        <option value="subtract"> -</option>
        <option value="multiply"> *</option>
        <option value="divide"> /</option>
    </select>
    <input type="submit" value="Tinh">
</form>
</body>
</html>