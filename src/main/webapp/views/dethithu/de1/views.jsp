<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>De thi 1</title>
</head>
<body>
<form action="/dich-vu-su-dung/addDichVu" method="post">
    <p><h3>Them dich vu</h3></p>
    <p>Loai dich vu: <input name="loaiDichVuId"></p>
    <p>Ma: <input name="ma"></p>
    <p>Ten: <input name="ten"></p>
    <p>Don vi tinh: <input name="donViTinh"></p>
    <p>Don gia: <input name="donGia"></p>
    <p>Mo ta: <input name="moTa"></p>
    <p>Trang thai:
        <input type="radio" name="trangThai" value="1" checked> On
        <input type="radio" name="trangThai" value="0"> Off
    </p>
    <p>Ngay tao: <input type="date" name="ngayTao"></p>
    <p>Ngay chinh sua: <input type="date" name="ngayChinhSua"></p>
    <p><button type="submit">Add</button></p>
</form>

    <table border="1">
        <p><h3>DANH SACH DICH VU</h3></p>
        <thead>
            <th>STT</th>
            <th>Loai dich vu id</th>
            <th>Ma</th>
            <th>Ten</th>
            <th>Don vi tinh</th>
            <th>Don gia</th>
            <th>Mo ta</th>
            <th>Trang thai</th>
            <th>Ngay tao</th>
            <th>Ngay chinh sua</th>
            <th>Action</th>
        </thead>
        <tbody>
            <c:forEach items="${listDichVu}" var="dichVu" varStatus="i">
                <tr>
                    <td>${i.index + 1}</td>
                    <td>${dichVu.loaiDichVuId}</td>
                    <td>${dichVu.ma}</td>
                    <td>${dichVu.ten}</td>
                    <td>${dichVu.donViTinh}</td>
                    <td>${dichVu.donGia}</td>
                    <td>${dichVu.moTa}</td>
                    <td>${dichVu.trangThai == 1 ? "On" :  "Off"}</td>
                    <td>${dichVu.ngayTao}</td>
                    <td>${dichVu.ngayChinhSua}</td>
                    <td>
                        <a href="/dich-vu-su-dung/removeDichVu/${dichVu.id}"><button>Edit</button></a>
                        <a href="/dich-vu-su-dung/detailDichVu/${dichVu.id}"><button>Detail</button></a>
                        <a href="/dich-vu-su-dung/viewUpdateDichVu/${dichVu.id}"><button>Remove</button></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <table border="1">
        <p><h3>DANH SACH DICH VU SU DUNG</h3></p>
        <thead>
            <th>STT</th>
            <th>Dich vu</th>
            <th>Chi tiet hoa don id</th>
            <th>Ma</th>
            <th>Ten</th>
            <th>So luong</th>
            <th>Ghi chu</th>
            <th>Trang thai</th>
            <th>Ngay tao</th>
            <th>Ngay chinh sua</th>
            <th>Action</th>
        </thead>
        <tbody>
            <c:forEach items="${listDichVuSuDung}" var="dichVuSuDung" varStatus="i">
                <tr>
                    <td>${i.index + 1}</td>
                    <td>${dichVuSuDung.dichVu.ten}</td>
                    <td>${dichVuSuDung.chiTietHoaDonId}</td>
                    <td>${dichVuSuDung.ma}</td>
                    <td>${dichVuSuDung.ten}</td>
                    <td>${dichVuSuDung.soLuong}</td>
                    <td>${dichVuSuDung.ghiChu}</td>
                    <td>${dichVuSuDung.trangThai == 1 ? "On" :  "Off"}</td>
                    <td>${dichVuSuDung.ngayTao}</td>
                    <td>${dichVuSuDung.ngayChinhSua}</td>
                    <td>
                        <a href="/dich-vu-su-dung/removeDichVuSuDung/${dichVuSuDung.id}"><button>Edit</button></a>
                        <a href="/dich-vu-su-dung/detailDichVuSuDung/${dichVuSuDung.id}"><button>Detail</button></a>
                        <a href="/dich-vu-su-dung/viewUpdateDichVuSuDung/${dichVuSuDung.id}"><button>Remove</button></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>