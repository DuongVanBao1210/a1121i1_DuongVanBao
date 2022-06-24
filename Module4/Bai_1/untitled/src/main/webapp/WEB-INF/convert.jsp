<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 6/24/2022
  Time: 7:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/convert" method="post">
    <input type="number" name="money" placeholder="Enter USD" value="${money}">
    <input type="submit" value="Convert">
</form>
<h2>Result: ${result} VND</h2>
</body>
</html>
