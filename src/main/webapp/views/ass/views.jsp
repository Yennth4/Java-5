<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>ASSIGNMENT 2 - JAVA 5</title>
</head>
<body>
<p>
<h1>JAVA 5 - CRUD BAN HANG</h1></p>

<%--    DANH SACH SAN PHAM --%>
<table border="1">
    <p>
    <h3>DANH SACH SAN PHAM</h3></p>
    <p><a href="/sanPham/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Ma</th>
    <th>Ten</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listSanPham}" var="sp" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${sp.ma}</td>
            <td>${sp.ten}</td>
            <td>
                <a href="/sanPham/detail/${sp.id}">
                    <button>Detail</button>
                </a>
                <a href="/sanPham/view-update/${sp.id}">
                    <button>Edit</button>
                </a>
                <a href="/sanPham/remove/${sp.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%--    DANH SACH DONG SAN PHAM --%>
<table border="1">
    <p>
    <h3>DANH SACH DONG SAN PHAM</h3></p>
    <p><a href="/dongSanPham/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Ma</th>
    <th>Ten</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listDongSanPham}" var="dsp" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${dsp.ma}</td>
            <td>${dsp.ten}</td>
            <td>
                <a href="/dongSanPham/detail/${dsp.id}">
                    <button>Detail</button>
                </a>
                <a href="/dongSanPham/view-update/${dsp.id}">
                    <button>Edit</button>
                </a>
                <a href="/dongSanPham/remove/${dsp.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%--    DANH SACH MAU SAC --%>
<table border="1">
    <p>
    <h3>DANH SACH MAU SAC</h3></p>
    <p><a href="/mauSac/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Ma</th>
    <th>Ten</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listMauSac}" var="ms" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${ms.ma}</td>
            <td>${ms.ten}</td>
            <td>
                <a href="/mauSac/detail/${ms.id}">
                    <button>Detail</button>
                </a>
                <a href="/mauSac/view-update/${ms.id}">
                    <button>Edit</button>
                </a>
                <a href="/mauSac/remove/${ms.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%--    DANH SACH CHUC VU --%>
<table border="1">
    <p>
    <h3>DANH SACH CHUC VU</h3></p>
    <p><a href="/de5ChucVu/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Ma</th>
    <th>Ten</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listChucVu}" var="de5ChucVu" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${de5ChucVu.ma}</td>
            <td>${de5ChucVu.ten}</td>
            <td>
                <a href="/de5ChucVu/detail/${de5ChucVu.id}">
                    <button>Detail</button>
                </a>
                <a href="/de5ChucVu/view-update/${de5ChucVu.id}">
                    <button>Edit</button>
                </a>
                <a href="/de5ChucVu/remove/${de5ChucVu.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%--    DANH SACH CUA HANG --%>
<table border="1">
    <p>
    <h3>DANH SACH CUA HANG</h3></p>
    <p><a href="/cuaHang/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Ma</th>
    <th>Ten</th>
    <th>Dia chi</th>
    <th>Thanh pho</th>
    <th>Quoc gia</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listCuaHang}" var="cuaHang" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${cuaHang.ma}</td>
            <td>${cuaHang.ten}</td>
            <td>${cuaHang.diaChi}</td>
            <td>${cuaHang.thanhPho}</td>
            <td>${cuaHang.quocGia}</td>
            <td>
                <a href="/cuaHang/detail/${cuaHang.id}">
                    <button>Detail</button>
                </a>
                <a href="/cuaHang/view-update/${cuaHang.id}">
                    <button>Edit</button>
                </a>
                <a href="/cuaHang/remove/${cuaHang.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%--    DANH SACH KHACH HANG --%>
<table border="1">
    <p>
    <h3>DANH SACH KHACH HANG</h3></p>
    <p><a href="/de3KhachHang/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Ma</th>
    <th>Ten</th>
    <th>Ngay sinh</th>
    <th>SDT</th>
    <th>Dia chi</th>
    <th>Thanh pho</th>
    <th>Quoc gia</th>
    <th>Mat khau</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listKhachHang}" var="de3KhachHang" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${de3KhachHang.ma}</td>
            <td>${de3KhachHang.ten} ${de3KhachHang.tenDem} ${de3KhachHang.ho}</td>
            <td>${de3KhachHang.ngaySinh}</td>
            <td>${de3KhachHang.sdt}</td>
            <td>${de3KhachHang.diaChi}</td>
            <td>${de3KhachHang.thanhPho}</td>
            <td>${de3KhachHang.quocGia}</td>
            <td>${de3KhachHang.matKhau}</td>
            <td>
                <a href="/de3KhachHang/detail/${de3KhachHang.id}">
                    <button>Detail</button>
                </a>
                <a href="/de3KhachHang/view-update/${de3KhachHang.id}">
                    <button>Edit</button>
                </a>
                <a href="/de3KhachHang/remove/${de3KhachHang.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%--    DANH SACH NHAN VIEN --%>
<table border="1">
    <p>
    <h3>DANH SACH NHAN VIEN</h3></p>
    <p><a href="/nhanVien/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Ma</th>
    <th>Ten</th>
    <th>Gioi tinh</th>
    <th>Ngay sinh</th>
    <th>Dia chi</th>
    <th>SDT</th>
    <th>Mat khau</th>
    <th>Cua hang</th>
    <th>Chuc vu</th>
    <th>Trang thai</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listNhanVien}" var="nhanVien" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${nhanVien.ma}</td>
            <td>${nhanVien.ten} ${nhanVien.tenDem} ${nhanVien.ho}</td>
            <td>${nhanVien.gioiTinh}</td>
            <td>${nhanVien.ngaySinh}</td>
            <td>${nhanVien.diaChi}</td>
            <td>${nhanVien.sdt}</td>
            <td>${nhanVien.matKhau}</td>
            <td>${nhanVien.cuaHang.ten}</td>
            <td>${nhanVien.de5ChucVu.ten}</td>
            <td>${nhanVien.trangThai == 1 ? "On" : "Off"}</td>
            <td>
                <a href="/nhanVien/detail/${nhanVien.id}">
                    <button>Detail</button>
                </a>
                <a href="/nhanVien/view-update/${nhanVien.id}">
                    <button>Edit</button>
                </a>
                <a href="/nhanVien/remove/${nhanVien.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%--    DANH SACH CHI TIET SAN PHAM --%>
<table border="1">
    <p>
    <h3>DANH SACH CHI TIET SAN PHAM</h3></p>
    <p><a href="/chiTietSanPham/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>San pham</th>
    <th>Mau sac</th>
    <th>Dong san pham</th>
    <th>Nam bao hanh</th>
    <th>Mo ta</th>
    <th>So luong ton</th>
    <th>Gia nhap</th>
    <th>Gia ban</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listChiTietSanPham}" var="ctsp" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${ctsp.sanPham.ten}</td>
            <td>${ctsp.mauSac.ten}</td>
            <td>${ctsp.dongSanPham.ten}</td>
            <td>${ctsp.namBaoHanh}</td>
            <td>${ctsp.moTa}</td>
            <td>${ctsp.soLuongTon}</td>
            <td>${ctsp.giaNhap}</td>
            <td>${ctsp.giaBan}</td>
            <td>
                <a href="/chiTietSanPham/detail/${ctsp.id}">
                    <button>Detail</button>
                </a>
                <a href="/chiTietSanPham/view-update/${ctsp.id}">
                    <button>Edit</button>
                </a>
                <a href="/chiTietSanPham/remove/${ctsp.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%--    DANH SACH GIO HANG --%>
<table border="1">
    <p>
    <h3>DANH SACH GIO HANG</h3></p>
    <p><a href="/gioHang/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Ten khach hang</th>
    <th>Ten nhan vien</th>
    <th>Ma</th>
    <th>Ngay tao</th>
    <th>Ngay thanh toan</th>
    <th>Ten nguoi nhan</th>
    <th>Dia chi</th>
    <th>SDT</th>
    <th>Tinh trang</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listGioHang}" var="gioHang" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${gioHang.de3KhachHang.ten}</td>
            <td>${gioHang.nhanVien.ten}</td>
            <td>${gioHang.ma}</td>
            <td>${gioHang.ngayTao}</td>
            <td>${gioHang.ngayThanhToan} null</td>
            <td>${gioHang.tenNguoiNhan}</td>
            <td>${gioHang.diaChi}</td>
            <td>${gioHang.sdt}</td>
            <td>${gioHang.tinhTrang == 1 ? "Da thanh toan" : "Chua thanh toan"}</td>
            <td>
                <a href="/gioHang/detail/${gioHang.id}">
                    <button>Detail</button>
                </a>
                <a href="/gioHang/view-update/${gioHang.id}">
                    <button>Edit</button>
                </a>
                <a href="/gioHang/remove/${gioHang.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%--    DANH SACH HOA DON --%>
<table border="1">
    <p>
    <h3>DANH SACH HOA DON</h3></p>
    <p><a href="/de3HoaDon/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Ten khach hang</th>
    <th>Ten nhan vien</th>
    <th>Ma</th>
    <th>Ngay tao</th>
    <th>Ngay thanh toan</th>
    <th>Ngay ship</th>
    <th>Ngay nhan</th>
    <th>Tinh trang</th>
    <th>Ten nguoi nhan</th>
    <th>Dia chi</th>
    <th>SDT</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listHoaDon}" var="de3HoaDon" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${de3HoaDon.de3KhachHang.ten}</td>
            <td>${de3HoaDon.nhanVien.ten}</td>
            <td>${de3HoaDon.ma}</td>
            <td>${de3HoaDon.ngayTao}</td>
            <td>${de3HoaDon.ngayThanhToan} null</td>
            <td>${de3HoaDon.ngayShip} null</td>
            <td>${de3HoaDon.ngayNhan} null</td>
            <td>${de3HoaDon.tinhTrang == 1 ? "Da thanh toan" : "Chua thanh toan"}</td>
            <td>${de3HoaDon.tenNguoiNhan}</td>
            <td>${de3HoaDon.diaChi}</td>
            <td>${de3HoaDon.sdt}</td>
            <td>
                <a href="/de3HoaDon/detail/${de3HoaDon.id}">
                    <button>Detail</button>
                </a>
                <a href="/de3HoaDon/view-update/${de3HoaDon.id}">
                    <button>Edit</button>
                </a>
                <a href="/de3HoaDon/remove/${de3HoaDon.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%--    DANH SACH HOA DON CHI TIET --%>
<table border="1">
    <p>
    <h3>DANH SACH HOA DON CHI TIET</h3></p>
    <p><a href="/hoaDonChiTiet/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Hoa don</th>
    <th>Gio hang</th>
    <th>Chi tiet san pham</th>
    <th>So luong</th>
    <th>Don gia</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listHoaDonChiTiet}" var="hoaDonChiTiet" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${hoaDonChiTiet.de3HoaDon.ma}</td>
            <td>${hoaDonChiTiet.gioHang.ma}</td>
            <td>${hoaDonChiTiet.chiTietSanPham.id}</td>
            <td>${hoaDonChiTiet.soLuong}</td>
            <td>${hoaDonChiTiet.donGia}</td>
            <td>
                <a href="/hoaDonChiTiet/detail/${hoaDonChiTiet.id}">
                    <button>Detail</button>
                </a>
                <a href="/hoaDonChiTiet/view-update/${hoaDonChiTiet.id}">
                    <button>Edit</button>
                </a>
                <a href="/hoaDonChiTiet/remove/${hoaDonChiTiet.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%--    DANH SACH GIO HANG CHI TIET --%>
<table border="1">
    <p>
    <h3>DANH SACH GIO HANG CHI TIET</h3></p>
    <p><a href="/gioHangChiTiet/view-add">
        <button>ADD</button>
    </a></p>
    <thead>
    <th>STT</th>
    <th>Gio hang</th>
    <th>Chi tiet san pham</th>
    <th>So luong</th>
    <th>Don gia</th>
    <th>Don gia khi giam</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listGioHangChiTiet}" var="gioHangChiTiet" varStatus="i">
        <tr>
            <td>${i.index + 1}</td>
            <td>${gioHangChiTiet.gioHang.ma}</td>
            <td>${gioHangChiTiet.chiTietSanPham.id}</td>
            <td>${gioHangChiTiet.soLuong}</td>
            <td>${gioHangChiTiet.donGia}</td>
            <td>${gioHangChiTiet.donGiaKhiGiam}</td>
            <td>
                <a href="/gioHangChiTiet/detail/${gioHangChiTiet.id}">
                    <button>Detail</button>
                </a>
                <a href="/gioHangChiTiet/view-update/${gioHangChiTiet.id}">
                    <button>Edit</button>
                </a>
                <a href="/gioHangChiTiet/remove/${gioHangChiTiet.id}">
                    <button>Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>