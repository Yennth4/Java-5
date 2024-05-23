<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sach dong vat</title>
</head>
<body>
<h2>QUAN LY DONG VAT</h2>
<a href="/dong-vat/view-add"><button type="button" class="btn btn-success">Add</button></a>
<form action="" method="get"><br>
    <p>Search</p>
    <p><input name="tenOrMaSearch" placeholder="Ten hoac ma"></p>
    <p><input name="canNangMin" placeholder="Can nang min"></p>
    <p><input name="canNangMin" placeholder="Can nang max"></p>
    <p>
        <button type="submit" class="btn btn-primary">Search</button>
    </p>
</form>
<h3>Danh sach dong vat</h3>
<table class="table table-bordered table-hover">
    <thead>
        <th>STT</th>
        <th>Ma</th>
        <th>Ten</th>
        <th>Gioi tinh</th>
        <th>Can nang</th>
        <th>Khu vuc song</th>
        <th>Action</th>
    </thead>
    <tbody>
        <c:forEach items="${listDV}" var="dv" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${dv.ma}</td>
                <td>${dv.ten}</td>
                <td>${dv.gioiTinh ? "Duc" : "Cai"}</td>
                <td>${dv.canNang}</td>
                <td>${dv.khuVuc}</td>
                <td>
                    <a href="/dong-vat/view-update/${dv.ma}">
                        <button type="button" class="btn btn-warning">Update</button>
                    </a>
                    <a href="/dong-vat/remove/${dv.ma}">
                        <button type="button" class="btn btn-outline-danger">Remove</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>