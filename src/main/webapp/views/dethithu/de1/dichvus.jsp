<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>De 1 - Dich vu</title>
</head>
<body>
<%--@elvariable id="dichVu" type=""--%>
<form:form modelAttribute="dichVu" action="/dich-vu/add" method="post">
    <p><h3>QUAN LY DICH VU</h3></p>
    <p>
        Id : <input name="id" value="${dichVu.id}" readonly>
    </p>

    <p>
        Ten dich vu: <form:input path="ten" placeholder="Nhap ten dich vu" value="${dichVu.ten}"/>
        <form:errors cssStyle="color:red;" path="ten" />
    </p>

    <p>Ten loai dich vu:
        <select name="loaiDichVu">
            <c:forEach items="${listLoaiDichVu}" var="l">
                <option value="${l.id}" ${l.id == dichVu.loaiDichVu.id ? 'selected' : '' }>${l.ten}</option>
            </c:forEach>
        </select>
    </p>

    <p>
        Don vi tien: <form:input path="donViTien" placeholder="Nhap don vi tien" value="${dichVu.donViTien}"/>
        <form:errors cssStyle="color:red;" path="donViTien"/>
    </p>

    <p>
        Don gia: <form:input path="donGia" placeholder="Nhap don gia" value="${dichVu.donGia}"/>
        <form:errors cssStyle="color:red;" path="donGia"/>
    </p>
    <p><button type="submit">Add</button></p>
</form:form>

<table border="1">
    <thead>
        <th>STT</th>
        <th>Ten</th>
        <th>Loai dich vu</th>
        <th>Don vi tien</th>
        <th>Don gia</th>
        <th>Action</th>
    </thead>
    <tbody>
        <c:forEach items="${listDichVu}" var="dv" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${dv.ten}</td>
                <td>${dv.loaiDichVu.ten}</td>
                <td>${dv.donViTien}</td>
                <td>${dv.donGia}</td>
                <td>
                    <a href="/dich-vu/detail/${dv.id}"><button>Detail</button></a>
                    <a href="/dich-vu/remove/${dv.id}"><button>Remove</button></a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<%--LOAI DICH VU--%>
<form action="/dich-vu/add1" method="post">
    <p><h3>DANH SACH LOAI DICH VU</h3></p>
    <p>Id : <input name="id" value="${loaiDichVu.id}" readonly></p>
    <p>Ten : <input name="ten" value="${loaiDichVu.ten}"></p>
    <p>Mo ta : <input name="moTa" value="${loaiDichVu.moTa}"></p>
    <p>Trang thai : <input name="trangThai" value="${loaiDichVu.trangThai}"></p>
    <p><button type="submit">Add</button></p>
</form>
<table border="1">
    <thead>
        <th>STT</th>
        <th>Ten</th>
        <th>Mo ta</th>
        <th>Trang thai</th>
        <th>Action</th>
    </thead>
    <tbody>
        <c:forEach items="${listLoaiDichVu}" var="ldv" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${ldv.ten}</td>
                <td>${ldv.moTa}</td>
                <td>${ldv.trangThai}</td>
                <td>
                    <a href="/dich-vu/detail1/${ldv.id}"><button>Detail</button></a>
                    <a href="/dich-vu/remove1/${ldv.id}"><button>Remove</button></a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>