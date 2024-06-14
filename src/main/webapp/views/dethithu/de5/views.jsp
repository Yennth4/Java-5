<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <title>De 5 - Chuc vu</title>
</head>
<body>
<form action="/chuc-vu/add" method="post">
    <p><h3>QUAN LY CHUC VU</h3></p>
    <p>Id: <input name="id" value="${de5ChucVu.id}" readonly></p>
    <p>Ten: <input name="ten" value="${de5ChucVu.ten}"></p>
    <p>Ngay bat dau: <input type="datetime-local" name="ngayBatDau" value="${de5ChucVu.ngayBatDau}"></p>
    <p>Den ngay: <input type="datetime-local" name="denNgay" value="${de5ChucVu.denNgay}"></p>
    <p>Ghi chu: <input name="ghiChu" value="${de5ChucVu.ghiChu}"></p>
    <p>Trang thai:
        <input type="radio" name="trangThai" value="1" ${de5ChucVu.trangThai == "1" ? "checked" : ""}> Hoat dong
        <input type="radio" name="trangThai" value="0" ${de5ChucVu.trangThai == "0" ? "checked" : ""}> Khong hoat dong
    </p>
    <p>Phong ban:
        <select name="de5PhongBan">
            <c:forEach items="${listPhongBan}" var="de5PhongBan">
                <option value="${de5PhongBan.id}" ${de5PhongBan.id == de5ChucVu.de5PhongBan.id ? 'selected' : ''}>${de5PhongBan.ten}</option>
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
    <c:forEach items="${listChucVu}" var="de5ChucVu" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${de5ChucVu.ten}</td>
            <td>${de5ChucVu.ngayBatDau}</td>
            <td>${de5ChucVu.denNgay}</td>
            <td>${de5ChucVu.ghiChu}</td>
            <td>${de5ChucVu.trangThai == "1" ? "Dang hoat dong" : "Khong hoat dong"}</td>
            <td>${de5ChucVu.de5PhongBan.ten}</td>
            <td>
                <a href="/chuc-vu/detail/${de5ChucVu.id}">
                    <button>Detail</button>
                </a>
                <a href="/chuc-vu/remove/${de5ChucVu.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

<%--QUAN LY PHONG BAN--%>
<form action="/chuc-vu/add1" method="post">
    <p><h3>QUAN LY PHONG BAN</h3></p>
    <p>Id: <input name="id" value="${de5PhongBan.id}" readonly></p>
    <p>Ten: <input name="ten" value="${de5PhongBan.ten}"></p>
    <p><button type="submit">Add</button></p>
</form>

<table border="1">
    <tr>
        <th>STT</th>
        <th>Ten</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${listPhongBan}" var="de5PhongBan" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${de5PhongBan.ten}</td>
            <td>
                <a href="/chuc-vu/detail1/${de5PhongBan.id}">
                    <button>Detail</button>
                </a>
                <a href="/chuc-vu/remove1/${de5PhongBan.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>