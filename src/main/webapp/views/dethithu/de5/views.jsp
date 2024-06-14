<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <title>De 5 - Chuc vu</title>
</head>
<body>
<form action="/chuc-vu/add" method="post">
    <p><h3>QUAN LY CHUC VU</h3></p>
    <p>Id: <input name="id" value="${chucVu.id}" readonly></p>
    <p>Ten: <input name="ten" value="${chucVu.ten}"></p>
    <p>Ngay bat dau: <input type="datetime-local" name="ngayBatDau" value="${chucVu.ngayBatDau}"></p>
    <p>Den ngay: <input type="datetime-local" name="denNgay" value="${chucVu.denNgay}"></p>
    <p>Ghi chu: <input name="ghiChu" value="${chucVu.ghiChu}"></p>
    <p>Trang thai:
        <input type="radio" name="trangThai" value="1" ${chucVu.trangThai == "1" ? "checked" : ""}> Hoat dong
        <input type="radio" name="trangThai" value="0" ${chucVu.trangThai == "0" ? "checked" : ""}> Khong hoat dong
    </p>
    <p>Phong ban:
        <select name="phongBan">
            <c:forEach items="${listPhongBan}" var="phongBan">
                <option value="${phongBan.id}" ${phongBan.id == chucVu.phongBan.id ? 'selected' : ''}>${phongBan.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p><button type="submit">Add</button></p>
</form>
<table border="1">
    <tr>
        <th>STT</th>
        <th>Ten</th>
        <th>Ngay bat dau</th>
        <th>Den ngay</th>
        <th>Ghi chu</th>
        <th>Trang thai</th>
        <th>Phong ban</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${listChucVu}" var="chucVu" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${chucVu.ten}</td>
            <td>${chucVu.ngayBatDau}</td>
            <td>${chucVu.denNgay}</td>
            <td>${chucVu.ghiChu}</td>
            <td>${chucVu.trangThai == "1" ? "Dang hoat dong" : "Khong hoat dong"}</td>
            <td>${chucVu.phongBan.ten}</td>
            <td>
                <a href="/chuc-vu/detail/${chucVu.id}">
                    <button>Detail</button>
                </a>
                <a href="/chuc-vu/remove/${chucVu.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

<%--QUAN LY PHONG BAN--%>
<form action="/chuc-vu/add1" method="post">
    <p><h3>QUAN LY PHONG BAN</h3></p>
    <p>Id: <input name="id" value="${phongBan.id}" readonly></p>
    <p>Ten: <input name="ten" value="${phongBan.ten}"></p>
    <p><button type="submit">Add</button></p>
</form>

<table border="1">
    <tr>
        <th>STT</th>
        <th>Ten</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${listPhongBan}" var="phongBan" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${phongBan.ten}</td>
            <td>
                <a href="/chuc-vu/detail1/${phongBan.id}">
                    <button>Detail</button>
                </a>
                <a href="/chuc-vu/remove1/${phongBan.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>