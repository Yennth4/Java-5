<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thuc vat B6</title>
</head>
<body>
<form action="">
    <p>Ten : <input name="ten"></p>
    <p>Tuoi : </p>
    <p>Min : <input name="tuoiMin"></p>
    <p>Max : <input name="tuoiMax"></p>
    <p><button type="submit" class="btn btn-primary">Search</button></p>
</form>
<form action="/thuc-vat/B6/add" method="post">
    <h4>Them thuc vat</h4>
    <p>ID : <input name="id" value="${tv1.id}"></p>
    <p>Ten : <input name="ten" value="${tv1.ten}"></p>
    <p>Tuoi : <input name="tuoi" value="${tv1.tuoi}"></p>
    <p>Loai cay : <input name="loaiCay" value="${tv1.loaiCay}"></p>
    <p>Gioi tinh :
        <input type="radio" name="gioiTinh" value="true" ${tv.gioiTinh ? 'checked' : ''}> Duc
        <input type="radio" name="gioiTinh" value="false" ${!tv.gioiTinh ? 'checked' : ''}> Cai
    </p>
    <p>Khu vuc : <input name="khuVuc" value="${tv1.khuVuc}"></p>
    <p><button type="submit" class="btn btn-success">Add</button></p>
</form>
<table class="table table-striped table-bordered table-hover">
    <h4>Thong tin thuc vat</h4>
    <thead>
        <th>STT</th>
        <th>ID</th>
        <th>Ten</th>
        <th>Tuoi</th>
        <th>Loai cay</th>
        <th>Gioi tinh</th>
        <th>Khu vuc</th>
        <th>Action</th>
    </thead>
    <tbody>
        <c:forEach items="${listTV}" var="tv" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${tv.id}</td>
                <td>${tv.ten}</td>
                <td>${tv.tuoi}</td>
                <td>${tv.loaiCay}</td>
                <td>${tv.gioiTinh ? "Duc" : "Cai"}</td>
                <td>${tv.khuVuc}</td>
                <td>
                    <a href="/thuc-vat/B6/detail/${tv.id}" class="btn btn-warning">Detail</a>
                    <a href="/thuc-vat/B6/view-update/${tv.id}" class="btn btn-secondary">Edit</a>
                    <a href="/thuc-vat/B6/delete/${tv.id}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>