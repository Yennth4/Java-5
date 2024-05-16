<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<html>
<head>
    <title>Them sinh vien</title>
</head>
<body>

<table class="table table-hover table-border">
    <h3>Thong tin sinh vien</h3>
    <form action="add-sinh-vien">
        Tên: <input name="ten"/>
        <button type="submit" class="btn btn-info">Search</button>
    </form> <br/>

    <a href="" class="btn btn-primary">Add Student</a>
    <thead>
        <tr>
            <th>STT</th>
            <th>MSSV</th>
            <th>Tên</th>
            <th>Tuổi</th>
            <th>Địa chỉ</th>
            <th>Giới tính</th>
            <th colspan="2">Action</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listSV}" var="sv" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${sv.mssv}</td>
                <td>${sv.ten}</td>
                <td>${sv.tuoi}</td>
                <td>${sv.diaChi}</td>
                <td>${sv.gioiTinh == true ? "Nam" : "Nu"}</td>
                <td>
<%--
    J4 : dung ?a = ${sv.ma} => @RequestParam de lay
    J5 : dung  /sinh-vien/detail/${sv.ma}/${sv.ten} => @PathVariable("ma1") String ma2 , @PathVariable String ten
                                             // neu ma2 trung ma1 thi ko can ("ma")

--%>
                    <a href="/sinh-vien/detail" class="btn btn-warning">Detail</a>
                    <a href="/sinh-vien/update" class="btn btn-secondary">Update</a>
                    <a href="/sinh-vien/remove/${sv.mssv}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
