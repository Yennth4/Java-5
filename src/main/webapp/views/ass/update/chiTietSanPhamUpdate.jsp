<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>CHI TIET SAN PHAM</title>
</head>
<body>
<p>
<h3>CHI TIET SAN PHAM</h3></p>
<form action="/chiTietSanPham/update" method="post">
    <p>San pham:
        <select name="sanPham">
            <c:forEach items="${listSanPham}" var="sanPham">
                <option value="${sanPham.id}" ${sanPham.id == chiTietSanPham.sanPham.id ? 'selected' : ''}>${sanPham.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Mau sac:
        <select name="mauSac">
            <c:forEach items="${listMauSac}" var="mauSac">
                <option value="${mauSac.id}" ${mauSac.id == chiTietSanPham.mauSac.id ? 'selected' : ''}>${mauSac.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Dong san pham:
        <select name="dongSanPham">
            <c:forEach items="${listDongSanPham}" var="dongSanPham">
                <option value="${dongSanPham.id}" ${dongSanPham.id == chiTietSanPham.dongSanPham.id ? 'selected' : ''}>${dongSanPham.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Nam bao hanh: <input name="namBaoHanh" value="${chiTietSanPham.namBaoHanh}"></p>
    <p>Mo ta: <input name="moTa" value="${chiTietSanPham.moTa}"></p>
    <p>So luong ton: <input name="soLuongTon" value="${chiTietSanPham.soLuongTon}"></p>
    <p>Gia nhap: <input name="giaNhap" value="${chiTietSanPham.giaNhap}"></p>
    <p>Gia ban: <input name="giaBan" value="${chiTietSanPham.giaBan}"></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>