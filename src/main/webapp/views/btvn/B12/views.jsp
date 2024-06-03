<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>B12</title>
</head>
<body>
<table border="1">
    <h3>DANH SACH NHAN VIEN</h3></p>
    <tr>
        <td>STT</td>
        <td>Ma</td>
        <td>Ten</td>
        <td>Ten Dem</td>
        <td>Ho</td>
        <td>Gioi Tinh</td>
        <td>Ngay Sinh</td>
        <td>So dien thoai</td>
        <td>Mat Khau</td>
        <td>Trang thai</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${listNhanVien}" var="nv">
        <tr>
            <td>${nv.id}</td>
            <td>${nv.ma}</td>
            <td>${nv.ten}</td>
            <td>${nv.tenDem}</td>
            <td>${nv.ho}</td>
            <td>${nv.gioiTinh}</td>
            <td>${nv.ngaySinh}</td>
            <td>${nv.sdt}</td>
            <td>${nv.matKhau}</td>
            <td>${nv.trangThai == 1 ? "On" : "Off"}</td>
            <td>
                <a href="/B12/nhan-vien/view-update/${nv.id}">
                    <button>Edit</button>
                </a>
                <a href="/B12/nhan-vien/remove/${nv.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

<%-- DANH SACH CHUC VU--%>
<table border="1">
    <h3>DANH SACH CHUC VU</h3></p>
    <tr>
        <td>STT</td>
        <td>Ma</td>
        <td>Ten</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${listChucVu}" var="cv">
        <tr>
            <td>${cv.id}</td>
            <td>${cv.ma}</td>
            <td>${cv.ten}</td>
            <td>
                <a href="/B12/chuc-vu/view-update/${cv.id}">
                    <button>Edit</button>
                </a>
                <a href="/B12/chuc-vu/remove/${cv.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

<%-- DANH SACH CUA HANG--%>
<table border="1">
    <h3>DANH SACH CUA HANG</h3></p>
    <tr>
        <td>STT</td>
        <td>Ma</td>
        <td>Ten</td>
        <td>Dia Chi</td>
        <td>Thanh Pho</td>
        <td>Quoc Gia</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${listCuaHang}" var="ch">
        <tr>
            <td>${ch.id}</td>
            <td>${ch.ma}</td>
            <td>${ch.ten}</td>
            <td>${ch.diaChi}</td>
            <td>${ch.thanhPho}</td>
            <td>${ch.quocGia}</td>
            <td>
                <a href="/B12/cua-hang/view-update/${ch.id}">
                    <button>Edit</button>
                </a>
                <a href="/B12/cua-hang/remove/${ch.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>