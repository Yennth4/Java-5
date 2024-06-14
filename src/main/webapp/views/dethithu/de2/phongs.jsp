<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>De 2 - Phong</title>
</head>
<body>
<p><h3>QUAN LY PHONG</h3></p>
<%--@elvariable id="phong" type=""--%>
<form:form modelAttribute="phong" action="/phong/add" method="post">
    <p>Id: <input name="id" value="${p.id}" readonly></p>
    <p>
        Ten: <form:input path="ten" value="${p.ten}" />
        <form:errors path="ten" cssStyle="color: red" />
    </p>
    <p>Trang thai:
        <input name="trangThai" value="conPhong" type="radio" ${p.trangThai == "conPhong" ? 'checked' : ''}> Con phong
        <input name="trangThai" value="hetPhong" type="radio" ${p.trangThai == "hetPhong" ? 'checked' : ''}> Het phong
    </p>
    <p>
        So luong: <form:input path="soLuong" value="${p.soLuong}" />
        <form:errors path="soLuong" cssStyle="color: red" />
    </p>
    <p>
        Ghi chu: <form:input path="ghiChu" value="${p.ghiChu}" />
        <form:errors path="ghiChu" cssStyle="color: red" />
    </p>
    <p>Loai phong:
        <select name="loaiPhong">
            <c:forEach items="${listLoaiPhong}" var="lp">
                <option value="${lp.id}" ${lp.id == p.loaiPhong.id ? 'selected' : ''}>${lp.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p><button type="submit">Add</button></p>
</form:form>
<table border="1">
    <thead>
        <th>STT</th>
        <th>Ten phong</th>
        <th>So luong phong</th>
        <th>Trang thai</th>
        <th>Ghi chu</th>
        <th>Loai phong</th>
        <th>Action</th>
    </thead>
    <tbody>
        <c:forEach items="${listPhong}" varStatus="i" var="p">
            <tr>
                <td>${i.index + 1}</td>
                <td>${p.ten}</td>
                <td>${p.soLuong}</td>
                <td>${p.trangThai == "conPhong" ? "Con phong" : "Het phong"}</td>
                <td>${p.ghiChu}</td>
                <td>${p.loaiPhong.ten}</td>
                <td>
                    <a href="/phong/detail/${p.id}"><button>Detail</button></a>
                    <a href="/phong/remove/${p.id}"><button>Remove</button></a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<%--DANH SACH LOAI PHONG--%>
<form action="/phong/add1" method="post">
    <p><h3>DANH SACH LOAI PHONG</h3></p>
    <p>Id: <input name="id" value="${lp.id}" readonly></p>
    <p>Ten: <input name="ten" value="${lp.ten}"></p>
    <p><button type="submit">Add</button></p>
</form>
<table border="1">
    <thead>
        <th>STT</th>
        <th>Ten loai phong</th>
        <th>Action</th>
    </thead>
    <tbody>
        <c:forEach items="${listLoaiPhong}" varStatus="i" var="lp">
            <tr>
                <td>${i.index + 1}</td>
                <td>${lp.ten}</td>
                <td>
                    <a href="/phong/detail1/${lp.id}"><button>Detail</button></a>
                    <a href="/phong/remove1/${lp.id}"><button>Remove</button></a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>