<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Giang Vien B5</title>
</head>
<body>
<table class="table table-hover table-border">
    <form action="">
        <h4>Tim kiem thong tin giang vien</h4>
        <p>Ten: <input name="searchTen"></p>
        <p>Tuoi: </p>
        <p>Min: <input name="searchMin"></p>
        <p>Max: <input name="searchMax"></p>
        <p>
            <button type="button">Search</button>
        </p>
    </form>
    <br><br>
    <form action="/giang-vien/B5/add" method="post">
        <h3>Thong tin giang vien</h3>
        <p>Ma GV: <input name="maGV" value="${gv1.maGV}"></p>
        <p>Ho ten: <input name="ten" value="${gv1.ten}"></p>
        <p>Tuoi: <input name="tuoi" value="${gv1.tuoi}"></p>
        <p>Que quan: <input name="queQuan" value="${gv1.queQuan}"></p>
        <p>
            <button type="submit">Add</button>
            <button type="submit">Update</button>
        </p>
    </form>
    <thead>
        <th>STT</th>
        <th>Ma GV</th>
        <th>Ten</th>
        <th>Tuoi</th>
        <th>Que quan</th>
        <th>Action</th>
    </thead>
    <tbody>
        <c:forEach items="${giangVien}" var="gv" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${gv.maGV}</td>
                <td>${gv.ten}</td>
                <td>${gv.tuoi}</td>
                <td>${gv.queQuan}</td>
                <td>
                    <a href="/giang-vien/B5/detail/${gv.maGV}"><button type="button">Detail</button></a>
                    <a href="/giang-vien/B5/update/${gv.maGV}"><button type="button">Edit</button></a>
                    <a href="/giang-vien/B5/remove/${gv.maGV}"><button type="button">Delete</button></a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>