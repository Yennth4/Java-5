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
<%--@elvariable id="thucVat" type=""--%>
<form:form modelAttribute="thucVat" action="/thuc-vat/B6/add"  method="post">
    <h4>Them thuc vat</h4>
    <p>ID : <form:input path="id" value="${tv1.id}" />
        <form:errors path="id"/>
    </p>
    <p>Ten : <form:input path="ten" value="${tv1.ten}" />
        <form:errors path="ten"/>
    </p>
    <p>Tuoi : <form:input path="tuoi" value="${tv1.tuoi}" />
        <form:errors path="tuoi"/>
    </p>
    <p>Loai cay : <form:input path="loaiCay" value="${tv1.loaiCay}" />
        <form:errors path="loaiCay"/>
    </p>
    <p>Gioi tinh :
        <input type="radio" name="gioiTinh" value="true" ${tv1.gioiTinh ? 'checked' : ''}> Duc
        <input type="radio" name="gioiTinh" value="false" ${!tv1.gioiTinh ? 'checked' : ''}> Cai
        <form:errors path="gioiTinh"/>
    </p>
    <p>Khu vuc : <form:input path="khuVuc" value="${tv1.khuVuc}" />
        <form:errors path="khuVuc"/>
    </p>
    <p><form:button type="submit" class="btn btn-success"
        onclick="return confirm('Ban co muon them k') ? alert('Them thanh cong') : false;">Add</form:button></p>
</form:form>
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
                    <a href="/thuc-vat/B6/detail/${tv.id}" class="btn btn-warning" onclick="return confirm('Ban co muon hien thi chi tiet id ${tv.id} k ?') ? alert('Hien thi thanh cong id ${tv.id}') : false;">Detail</a>
                    <a href="/thuc-vat/B6/view-update/${tv.id}" class="btn btn-secondary" >Edit</a>
                    <a href="/thuc-vat/B6/delete/${tv.id}" class="btn btn-danger" onclick="return confirm('Ban co muon xoa id ${tv.id} k ?') ? alert('Xoa thanh cong id ${tv.id}') : false;">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>