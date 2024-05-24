<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/giangvien/hien-thi" method="get">
    <h3>Tìm kiếm</h3>
    <div>
        <div style="width: 50px">
            <label>Tên</label>
        </div>
        <input name="tenLook" value="${tenLook}">
    </div>
    <div>
        <div style="width: 50px">
            <label>Tuổi</label>
        </div>
        <input name="tuiMin" value="${tuiMin}" placeholder="Tuổi min">
        <input name="tuiMax" value="${tuiMax}" placeholder="Tuổi max">
    </div>
    <div style="margin-top: 20px">
        <button type="submit">Tìm</button>
    </div>
</form>
<form>
    <h3>Detail</h3>
    <div style="display: flex">
        <div style="display: flex">
            <div style="width: 80px">
                <label>Mã</label>
            </div>
            <input value="${gvien.ma}" readonly>
        </div>
        <div style="display: flex; margin-left: 10px">
            <div style="width: 80px">
                <label>Tên</label>
            </div>
            <input value="${gvien.ten}" readonly>
        </div>
    </div>
    <div style="display: flex">
        <div style="display: flex">
            <div style="width: 80px">
                <label>Tuổi</label>
            </div>
            <input value="${gvien.tuoi}" readonly>
        </div>
        <div style="display: flex; margin-left: 10px">
            <div style="width: 80px">
                <label>Địa chỉ</label>
            </div>
            <input value="${gvien.diaChi}" readonly>
        </div>
    </div>
</form>
<div>
    <a href="/giangvien/create"><button>Thêm</button></a>
</div>
<table>
    <thead>
        <tr>
            <th>Mã</th>
            <th>Tên</th>
            <th>Tuổi</th>
            <th>Địa chỉ</th>
            <th>Thao tác</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${list}" var="gv">
            <tr>
                <td>${gv.ma}</td>
                <td>${gv.ten}</td>
                <td>${gv.tuoi}</td>
                <td>${gv.diaChi}</td>
                <td>
                    <a href="/giangvien/remove/${gv.ma}"><button>Xóa</button></a>
                    <a href="/giangvien/detail/${gv.ma}"><button>Detail</button></a>
                    <a href="/giangvien/formud/${gv.ma}"><button>Update</button></a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>