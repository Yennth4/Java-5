<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <title>De 2 - Chuc vu</title>
</head>
<body>
<p><h2>QUAN LY CHUC VU</h2></p>
<form action="/chuc-vu1/search" method="get">
    <input name="keywork" value="${keywork}" placeholder="Tìm theo tên">
    <button type="submit">Search</button>
</form>

<form action="/chuc-vu1/add" method="post">
    <p>Tên chức vụ : <input name="ten" value="${chucVu.ten}"/></p>
    <p>Ngày bắt đầu : <input type="date" name="ngayBatDau" value="${ngayBatDau}"></p>
    <p>Đến ngày : <input type="date" name="ngayDen" value="${ngayDen}"></p>
    <p>Ghi chú : <input name="ghiChu" value="${chucVu.ghiChu}"></p>
    <p>Trạng thái :
        <input type="radio" name="trangThai" value="1" ${chucVu.trangThai == 1 ? "checked" : ""} > Còn
        <input type="radio" name="trangThai" value="0" ${chucVu.trangThai != 1 ? "checked" : ""}> Hết
    </p>
    <p>Tên phòng :
        <select name="phongBan">
            <c:forEach items="${listPhongBan}" var="pb">
                <option value="${pb.id}" ${chucVu.phongBan.id == pb.id ? "selected" : ""}>${pb.tenPhong}</option>
            </c:forEach>
        </select>
    </p>
    <button type="submit">Add</button>
</form>

<table border="1">
    <p><h3>DANH SACH CHUC VU</h3></p>
    <thead>
        <tr>
            <th>Tên chức vụ</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày đến</th>
            <th>Ghi chú</th>
            <th>Trạng thái</th>
            <th>Tên phòng ban</th>
            <th>Hành động</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listChucVu}" var="cv">
            <tr>
                <td>${cv.ten}</td>
                <td>${cv.ngayBatDau}</td>
                <td>${cv.ngayDen}</td>
                <td>${cv.ghiChu}</td>
                <td>${cv.trangThai == 1 ? "Còn" : "Hết"}</td>
                <td>${cv.phongBan.tenPhong}</td>
                <td>
                    <a href="/chuc-vu1/detail/${cv.id}"><button>Detail</button></a>
                    <a href="/chuc-vu1/remove/${cv.id}"><button>Remove</button></a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>