<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/20/2022
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="table table-dark" style="border: 1px solid">
    <thead>
    <tr>
        <th scope="col">Description Product</th>
        <th scope="col">Price</th>
        <th scope="col">Discount</th>
        <th scope="col">Discount Price</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td >${description}</td>
        <td>${price}</td>
        <td>${discount}</td>
        <td>${discount_price}</td>
    </tr>

    </tbody>
</table>
</body>
</html>
