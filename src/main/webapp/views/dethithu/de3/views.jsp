<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <title>De 3 - Hoa don</title>
</head>
<body>
<form action="/hoa-don/add1" method="post">
    <p><h3>QUAN LY HOA DON</h3></p>
    <p>Id: <input name="id" value="${de3HoaDon.id}" readonly></p>
    <p>Ma: <input name="ma" value="${de3HoaDon.ma}"></p>
    <p>Ghi chu: <input name="ghiChu" value="${de3HoaDon.ghiChu}"></p>
    <p>Trang thai:
        <input type="radio" name="trangThai" value="1" ${de3HoaDon.trangThai == "1" ? 'checked' : ''}> Hoat dong
        <input type="radio" name="trangThai" value="2" ${de3HoaDon.trangThai == "2" ? 'checked' : ''}> Khong hoat dong
    </p>
    <p>Khach hang:
        <select name="de3KhachHang">
            <c:forEach items="${listKhachHang}" var="kh">
                <option value="${kh.id}" ${kh.id == de3HoaDon.de3KhachHang.id ? 'selected' : ''}>${kh.ten}</option>
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
    <c:forEach items="${listHoaDon}" var="de3HoaDon" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${de3HoaDon.ma}</td>
            <td>${de3HoaDon.ghiChu}</td>
            <td>${de3HoaDon.trangThai == "1" ? "Dang hoat dong" : "Khong hoat dong"}</td>
            <td>${de3HoaDon.de3KhachHang.ten}</td>
            <td>
                <a href="/hoa-don/detail1/${de3HoaDon.id}">
                    <button>Detail</button>
                </a>
                <a href="/hoa-don/remove1/${de3HoaDon.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

<%--QUAN LY KHACH HANG--%>
<form action="/hoa-don/add" method="post">
    <p><h3>QUAN LY KHACH HANG</h3></p>
    <p>Id: <input name="id" value="${de3KhachHang.id}" readonly></p>
    <p>Ma: <input name="ma" value="${de3KhachHang.ma}"></p>
    <p>Ten: <input name="ten" value="${de3KhachHang.ten}"></p>
    <p>SDT: <input name="sdt" value="${de3KhachHang.sdt}"></p>
    <p>Dia chi: <input name="diaChi" value="${de3KhachHang.diaChi}"></p>
    <p>Gioi tinh:
        <input type="radio" name="gioiTinh" value="0" ${de3KhachHang.gioiTinh == 0 ? 'checked' : ''}> Nam
        <input type="radio" name="gioiTinh" value="1" ${de3KhachHang.gioiTinh == 1 ? 'checked' : ''}> Nu
    </p>
    <p>Trang thai: <input name="trangThai" value="${de3KhachHang.trangThai}"></p>
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
    <c:forEach items="${listKhachHang}" var="de3KhachHang" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${de3KhachHang.ma}</td>
            <td>${de3KhachHang.ten}</td>
            <td>${de3KhachHang.sdt}</td>
            <td>${de3KhachHang.diaChi}</td>
            <td>${de3KhachHang.gioiTinh == 0 ? "Nam" : "Nu"}</td>
            <td>${de3KhachHang.trangThai}</td>
            <td>
                <a href="/hoa-don/detail/${de3KhachHang.id}">
                    <button>Detail</button>
                </a>
                <a href="/hoa-don/remove/${de3KhachHang.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>