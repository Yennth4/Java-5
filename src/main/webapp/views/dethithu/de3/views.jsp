<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <title>De 3 - Hoa don</title>
</head>
<body>
<form action="/hoa-don/add1" method="post">
    <p><h3>QUAN LY HOA DON</h3></p>
    <p>Id: <input name="id" value="${hoaDon.id}" readonly></p>
    <p>Ma: <input name="ma" value="${hoaDon.ma}"></p>
    <p>Ghi chu: <input name="ghiChu" value="${hoaDon.ghiChu}"></p>
    <p>Trang thai:
        <input type="radio" name="trangThai" value="1" ${hoaDon.trangThai == "1" ? 'checked' : ''}> Hoat dong
        <input type="radio" name="trangThai" value="2" ${hoaDon.trangThai == "2" ? 'checked' : ''}> Khong hoat dong
    </p>
    <p>Khach hang:
        <select name="khachHang">
            <c:forEach items="${listKhachHang}" var="kh">
                <option value="${kh.id}" ${kh.id == hoaDon.khachHang.id ? 'selected' : ''}>${kh.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p><button type="submit">Add</button></p>
</form>
<table border="1">
    <tr>
        <th>STT</th>
        <th>Ma</th>
        <th>Ghi chu</th>
        <th>Trang thai</th>
        <th>Khach hang</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${listHoaDon}" var="hoaDon" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${hoaDon.ma}</td>
            <td>${hoaDon.ghiChu}</td>
            <td>${hoaDon.trangThai == "1" ? "Dang hoat dong" : "Khong hoat dong"}</td>
            <td>${hoaDon.khachHang.ten}</td>
            <td>
                <a href="/hoa-don/detail1/${hoaDon.id}">
                    <button>Detail</button>
                </a>
                <a href="/hoa-don/remove1/${hoaDon.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

<%--QUAN LY KHACH HANG--%>
<form action="/hoa-don/add" method="post">
    <p><h3>QUAN LY KHACH HANG</h3></p>
    <p>Id: <input name="id" value="${khachHang.id}" readonly></p>
    <p>Ma: <input name="ma" value="${khachHang.ma}"></p>
    <p>Ten: <input name="ten" value="${khachHang.ten}"></p>
    <p>SDT: <input name="sdt" value="${khachHang.sdt}"></p>
    <p>Dia chi: <input name="diaChi" value="${khachHang.diaChi}"></p>
    <p>Gioi tinh:
        <input type="radio" name="gioiTinh" value="0" ${khachHang.gioiTinh == 0 ? 'checked' : ''}> Nam
        <input type="radio" name="gioiTinh" value="1" ${khachHang.gioiTinh == 1 ? 'checked' : ''}> Nu
    </p>
    <p>Trang thai: <input name="trangThai" value="${khachHang.trangThai}"></p>
    <p><button type="submit">Add</button></p>
</form>
<table border="1">
    <tr>
        <th>STT</th>
        <th>Ma</th>
        <th>Ten</th>
        <th>SDT</th>
        <th>Dia chi</th>
        <th>Gioi tinh</th>
        <th>Trang thai</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${listKhachHang}" var="khachHang" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${khachHang.ma}</td>
            <td>${khachHang.ten}</td>
            <td>${khachHang.sdt}</td>
            <td>${khachHang.diaChi}</td>
            <td>${khachHang.gioiTinh == 0 ? "Nam" : "Nu"}</td>
            <td>${khachHang.trangThai}</td>
            <td>
                <a href="/hoa-don/detail/${khachHang.id}">
                    <button>Detail</button>
                </a>
                <a href="/hoa-don/remove/${khachHang.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>