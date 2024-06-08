<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <title>B10</title>
</head>
<body>
<%--@elvariable id="b10_LoaiPhongBan" type=""--%>
<form:form modelAttribute="b10_LoaiPhongBan" action="/B10/loai-phong-ban/add" method="post">
    <p><h4>THEM LOAI PHONG BAN</h4></p>
    <p>Ma: <form:input path="ma" value="${lpb.ma}"/>
        <form:errors path="ma" cssStyle="color:red;"/>
    </p>
    <p>Ten: <form:input path="ten" value="${lpb.ten}"/>
        <form:errors path="ten" cssStyle="color:red;"/>
    </p>
    <p>So luong: <form:input path="soLuong" value="${lpb.soLuong}"/>
        <form:errors path="soLuong" cssStyle="color:red;"/>
    </p>
    <p>Ghi chu: <form:input path="ghiChu" value="${lpb.ghiChu}"/>
        <form:errors path="ghiChu" cssStyle="color:red;"/>
    </p>
    <p>Trang thai:
        <input name="trangThai" type="radio" value="1" ${lpb.trangThai == 1 ? 'checked' : ''} > On
        <input name="trangThai" type="radio" value="0" ${lpb.trangThai == 0 ? 'checked' : ''} > Off
    </p>
    <p>
        <form:button type="submit">Add</form:button>
    </p>
</form:form>
<table border="1">
    <h3>DANH SACH LOAI PHONG BAN</h3></p>
    <tr>
        <td>STT</td>
        <td>Ma</td>
        <td>Ten</td>
        <td>So luong</td>
        <td>Ghi chu</td>
        <td>Trang thai</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${listLoaiPhongBan}" var="lpb">
        <tr>
            <td>${lpb.id}</td>
            <td>${lpb.ma}</td>
            <td>${lpb.ten}</td>
            <td>${lpb.soLuong}</td>
            <td>${lpb.ghiChu}</td>
            <td>${lpb.trangThai == 1 ? "On" : "Off"}</td>
            <td>
                <a href="/B10/loai-phong-ban/view-update/${lpb.id}">
                    <button onclick="return confirm('Ban co muon sua id ' + ${lpb.id}) ? alert('Toi trang id ' + ${lpb.id}) : false">
                        Edit
                    </button>
                </a>
                <a href="/B10/loai-phong-ban/detail/${lpb.id}">
                    <button>Detail</button>
                </a>
                <a href="/B10/loai-phong-ban/remove/${lpb.id}">
                    <button onclick="return confirm('Ban co muon xoa id ' + ${lpb.id}) ? alert('Xoa thanh cong id ' + ${lpb.id}) : false">
                        Remove
                    </button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

<%--FORM PHONG BAN--%>
<form action="/B10/phong-ban/add" method="post">
    <p><h4>THEM PHONG BAN</h4></p>
    <p>ID phong ban
        <select name="loaiPhongBan">
            <c:forEach items="${listLoaiPhongBan}" var="lpb">
                <option value="${lpb.id}" ${lpb.id == pb.lpb.id ? 'selected' : ''}>${lpb.ten}</option>
            </c:forEach>
        </select>
    </p>
    <p>Ma: <input name="ma" value="${pb.ma}"></p>
    <p>Ten: <input name="ten" value="${pb.ten}"></p>
    <p>So luong phong: <input name="soLuongPhongBan" value="${pb.soLuongPhongBan}"></p>
    <p>So luong nhan vien: <input name="soLuongNhanVien" value="${pb.soLuongNhanVien}"></p>
    <p>Ghi chu: <input name="ghiChu" value="${pb.ghiChu}"></p>
    <p>Trang thai:
        <input type="radio" name="trangThai" value="1" ${pb.trangThai == 1 ? 'checked' : ''}> On
        <input type="radio" name="trangThai" value="0" ${pb.trangThai == 0 ? 'checked' : ''}> Off
    </p>
    <p><button type="submit">ADD</button></p>
</form>
<%--DANH SACH PHONG BAN--%>
<table border="1">
    <h3>DANH SACH PHONG BAN</h3></p>
    <tr>
        <td>STT</td>
        <td>ID loai phong ban</td>
        <td>Ten loai phong ban</td>
        <td>Ma</td>
        <td>Ten</td>
        <td>So luong phong ban</td>
        <td>So luong nhan vien</td>
        <td>Ghi chu</td>
        <td>Trang thai</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${listPhongBan}" var="pb">
        <tr>
            <td>${pb.id}</td>
            <td>${pb.loaiPhongBan.id}</td>
            <td>${pb.loaiPhongBan.ten}</td>
            <td>${pb.ma}</td>
            <td>${pb.ten}</td>
            <td>${pb.soLuongPhongBan}</td>
            <td>${pb.soLuongNhanVien}</td>
            <td>${pb.ghiChu}</td>
            <td>${pb.trangThai == 1 ? "On" : "Off"}</td>
            <td>
                <a href="/B10/phong-ban/view-update/${pb.id}">
                    <button>Edit</button>
                </a>
                <a href="/B10/phong-ban/detail/${pb.id}">
                    <button>Detail</button>
                </a>
                <a href="/B10/phong-ban/remove/${pb.id}">
                    <button>Remove</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>

