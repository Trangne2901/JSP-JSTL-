<%@ page import="com.example.demo_customer.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>ListCustomer</title>
</head>
<body>
<%
  List<Customer> listCustomer = new ArrayList<>();
  listCustomer.add(new Customer("HuyenTrang","2005-01-29","Ha Noi","https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"));
  listCustomer.add(new Customer("NgocThom","2001-09-12","Nam Dinh","https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"));
  listCustomer.add(new Customer("TamNguyen","2005-09-10","Vinh Phuc","https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"));
  listCustomer.add(new Customer("KhanhNg","2005-11-11","Quang Tri","https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"));
  request.setAttribute("list",listCustomer);
%>
<table >
  <tr>
    <th>Ten</th>
    <th>Ngay Sinh</th>
    <th>Dia chi</th>
    <th>Anh</th>
  </tr>
  <c:forEach var="customer" items="${list}">
    <tr>
      <td> ${customer.name}</td>
      <td> ${customer.date}</td>
      <td> ${customer.address}</td>
      <td><img src="${customer.image}" style="width: 100px;height: 100px"> </td>
    </tr>
  </c:forEach>
  
</table>

</body>
</html>