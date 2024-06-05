<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Document</title>
</head>
<body>
<form action="" method="get">
    Tên: <br>
    <input type="text"><br>

    <button>Search</button>
</form>
<a href="/giang-vien/view-add">
    <button>ADD</button>
</a>
<button>Giảng viên nữ</button>
<table border="1">
    <tr>
        <td>ID</td>
        <td>Mã</td>
        <td>Tên</td>
        <td>Tuổi</td>
        <td>Giới tính</td>
        <td>Địa chỉ</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${lists}" var="gv" varStatus="i">
        <tr>
            <td>${gv.id}</td>
            <td>${gv.ma}</td>
            <td>${gv.ten}</td>
            <td>${gv.tuoi}</td>
            <td>${(gv.gioiTinh) ? "Đực":"Cái"}</td>
            <td>${gv.diaChi}</td>
            <td>
                <a href="/giang-vien/detail/${gv.id}">
                    <button>Detail</button>
                </a>
                <a href="/giang-vien/view-update/${gv.id}">
                    <button>Edit</button>
                </a>
                <a href="/giang-vien/remove/${gv.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>