<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>CHI TIET SAN PHAM</title>
</head>
<body>
<p>
<h3>CHI TIET SAN PHAM</h3></p>
<form action="/chiTietSanPham/add" method="post">
    <p>San pham:
        <select name="sanPham">
            <c:forEach items="${listSanPham}" var="sp">
                <option value="${sp.id}">${sp.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Mau sac:
        <select name="mauSac">
            <c:forEach items="${listMauSac}" var="mauSac">
                <option value="${mauSac.id}">${mauSac.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Dong san pham:
        <select name="dongSanPham">
            <c:forEach items="${listDongSanPham}" var="dongSanPham">
                <option value="${dongSanPham.id}">${dongSanPham.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Nam bao hanh: <input name="namBaoHanh"></p>
    <p>Mo ta: <input name="moTa"></p>
    <p>So luong ton: <input name="soLuongTon"></p>
    <p>Gia nhap: <input name="giaNhap"></p>
    <p>Gia ban: <input name="giaBan"></p>
    <p>
        <button type="submit">ADD</button>
    </p>
</form>
</body>
</html>