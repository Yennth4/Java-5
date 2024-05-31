<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
<form action="" method="get" style="border-style: groove;padding: 10px">
    <p><h4>SEARCH LOP HOC</h4></p>
    <p>Tên lớp học: <input type="text"></p>
    <p>Địa chỉ lớp học: <input type="text"></p>
    <p>
        <button>Search</button>
    </p>
</form>
<br>
<form action="/lop-hoc/add" method="post">
    <p><h4>THEM LOP HOC</h4></p>
    <p>ID lớp: <input type="text" name="id"></p>
    <p>Tên lớp: <input type="text" name="name"></p>
    <p>
        <button type="submit">Add</button>
    </p>
</form>
<p>
<h3>DANH SACH LOP HOC</h3></p>
<table border="1">
    <tr>
        <td>ID lớp học</td>
        <td>Tên lớp học</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${listLH}" varStatus="i" var="lh">
        <tr>
            <td>${lh.id}</td>
            <td>${lh.name}</td>
            <td>

                <a href="/lop-hoc/edit/${lh.id}">
                    <button>Edit</button>
                </a> <a href="/lop-hoc/remove/${lh.id}">
                <button>Remove</button>
            </a>
            </td>
        </tr>
    </c:forEach>
</table>
<form action="/lop-hoc/sinh-vien/add" method="post">
    <p><h4>THEM SINH VIEN</h4></p>
    <p>ID sinh vien: <input type="text" name="id"></p>
    <p>MSSV: <input type="text" name="mssv"></p>
    <p>Tên sinh vien: <input type="text" name="name"></p>
    <p>Dia chi: <input type="text" name="diaChi"></p>
    <p>Ma lop:
        <select name="">
            <option disabled selected>Ma lop</option>
            <c:forEach items="${listLH}" var="lh">
                <option value="${lh.id}" ${lh.id == sinhVien.lopHoc.id ? 'selected' : ''}>${lh.name}</option>
            </c:forEach>
        </select>
    </p>
    <p>
        <button type="submit">Add</button>
    </p>
</form>

<table border="1">
    <p>
    <h3>DANH SACH SINH VIEN</h3></p>
    <tr>
        <td>ID</td>
        <td>MSSV</td>
        <td>Tên</td>
        <td>Dia chi</td>
        <td>Ma lop</td>
        <td>Tên lop</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${listSV}" varStatus="i" var="sv">
        <tr>
            <td>${sv.id}</td>
            <td>${sv.mssv}</td>
            <td>${sv.name}</td>
            <td>${sv.diaChi}</td>
            <td>${sv.lopHoc.id}</td>
            <td>${sv.lopHoc.name}</td>
            <td>
                <a href="/lop-hoc/edit/${sv.id}">
                    <button>Edit</button>
                </a>
                <a href="/lop-hoc/sinh-vien/remove/${sv.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>