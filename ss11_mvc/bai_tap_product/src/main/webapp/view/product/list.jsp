<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/27/2022
  Time: 8:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Display Product</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>

        table td{
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/products?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Producer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["productList"]}' var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.producer}</td>
            <td align="center"><a href="/products?action=edit&id=${product.getId()}"><i style="text-align: center" class="fa-solid fa-pen"></i></a></td>
            <td align="center"><a href="/products?action=delete&id=${product.getId()}"><i style="text-align: center" class="fa-solid fa-trash-can"></i></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
