<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/23/2022
  Time: 7:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h1>Danh sách khách hàng</h1>
<table border="1" style="border-collapse:  collapse">
    <tr>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach items="${customerList}" var="customer" varStatus="status">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.birthDay}</td>
            <td>${customer.address}</td>
            <td><img src="https://cdnn1.img.vn.sputniknews.com/img/07e5/06/09/10622942_0:0:3072:2048_1440x900_80_0_1_51bd588f7bc96018fa3ec42dc219002c.jpg.webp?source-sid=rian_photo"
                    alt="cr7" width="300px" height="300px"></td>
        </tr>

    </c:forEach>
</table>

</body>
</html>
