<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<html>
<head>
    <title>Giang vien</title>
</head>
<body>

<table class="table table-hover">

    <h3>Thong tin giang vien</h3>
    <form action="hien-thi">
        Tên hoặc id: <input name="keyword"/>
        <button type="submit" class="btn btn-info">Search</button>
    </form> <br/>

    <a href="/giang-vien/view-add" class="btn btn-primary">Add Teacher</a>
    <thead>
    <tr>
        <th>ID</th>
        <th>MSGV</th>
        <th>Tên</th>
        <th>Tuổi</th>
        <th>Giới tính</th>
        <th>Địa chỉ</th>
        <th colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${listGV}" var="gv" varStatus="i">
            <tr>
                <td>${gv.id}</td>
                <td>${gv.ma}</td>
                <td>${gv.ten}</td>
                <td>${gv.tuoi}</td>
                <td>${gv.gioiTinh}</td>
                <td>${gv.diaChi}</td>
                <td>
                    <a href="/giang-vien/detail/${gv.id}">
                        <button>Detail</button>
                    </a>
                    <a href="/giang-vien/view-update/${gv.id}">
                        <button>Update</button>
                    </a>
                    <a href="/giang-vien/remove/${gv.id}">
                        <button>Delete</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
