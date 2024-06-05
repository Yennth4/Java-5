<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>B11</title>
</head>
<body>
<form action="/B11/tk/add" method="post">
    <h3>TAI KHOAN NGAN HANG</h3></p>
    <p>Ma : <input name="ma"></p>
    <p>Ten tai khoan : <input name="hoTen"></p>
    <p>So tai khoan : <input name="soTaiKhoan"></p>
    <p>Ten ngan hang : <input name="tenNganHang"></p>
    <p>Ten chi nhanh : <input name="tenChiNhanh"></p>
    <p>Dia chi : <input name="diaChi"></p>
    <p>Ghi chu : <input name="ghiChu"></p>
    <p>Trang thai :
        <input type="radio" name="trangThai" value="1" checked> On
        <input type="radio" name="trangThai" value="0"> Off
    </p>
    <p>
        <button type="submit">Add</button>
    </p>
</form>


<%--UPDATE CO SO--%>
<form action="/B11/co-so/add" method="post">
    <h3>CO SO</h3></p>
    <p>Ma : <input name="ma" value="${cs.ma}"></p>
    <p>Ten tai khoan ngan hang :
        <select name="tk" >
            <c:forEach items="${listTKNH}" var="tk">
                <option value="${tk.ma}" >${tk.hoTen}</option>
<%--              ${tk.ma == cs.tk.hoTen ? 'selected' : ''}  --%>
            </c:forEach>
        </select>
    </p>
    <p>Ten co so : <input name="ten" value="${cs.ten}"></p>
    <p>So dien thoai : <input name="soDienThoai" value="${cs.soDienThoai}"></p>
    <p>Ghi chu : <input name="ghiChu" value="${cs.ghiChu}"></p>
    <p>Trang thai :
        <input type="radio" name="trangThai" value="1" ${cs.trangThai == 1 ? 'checked' : ''}> On
        <input type="radio" name="trangThai" value="0" ${cs.trangThai == 0 ? 'checked' : ''}> Off
    </p>
    <p>
        <button type="submit">Add</button>
    </p>
</form>

<%--DANH SACH CO SO--%>
<table border="1">
    <h3>DANH SACH CO SO</h3></p>
    <tr>
        <td>ID</td>
        <td>Tai khoan ngan hang</td>
        <td>Ma</td>
        <td>Ten co so</td>
        <td>So dien thoai</td>
        <td>Ghi chu</td>
        <td>Trang thai</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${listCoSo}" var="cs">
        <tr>
            <td>${cs.id}</td>
            <td>${cs.tk.hoTen}</td>
            <td>${cs.ma}</td>
            <td>${cs.ten}</td>
            <td>${cs.soDienThoai}</td>
            <td>${cs.ghiChu}</td>
            <td>${cs.trangThai == 1 ? "On" : "Off"}</td>
            <td>
                <a href="/B11/co-so/viewUpdate/${cs.id}">
                    <button>Edit</button>
                </a>
                <a href="/B11/co-so/remove/${cs.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<table border="1">
    <h3>DANH SACH TAI KHOAN NGAN HANG</h3></p>
    <tr>
        <td>ID</td>
        <td>Ma</td>
        <td>Tên tai khoan</td>
        <td>So tai khoan</td>
        <td>Tên ngan hang</td>
        <td>Tên chi nhanh</td>
        <td>Dia chi</td>
        <td>Ghi chu</td>
        <td>Trang thai</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${listTKNH}" var="tk">
        <tr>
            <td>${tk.id}</td>
            <td>${tk.ma}</td>
            <td>${tk.hoTen}</td>
            <td>${tk.soTaiKhoan}</td>
            <td>${tk.tenNganHang}</td>
            <td>${tk.tenChiNhanh}</td>
            <td>${tk.diaChi}</td>
            <td>${tk.ghiChu}</td>
            <td>${tk.trangThai == 1 ? "On" : "Off"}</td>
            <td>
                <a href="/B11/tk/viewUpdate/${tk.id}">
                    <button>Edit</button>
                </a>
                <a href="/B11/tk/remove/${tk.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>