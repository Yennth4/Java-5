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
<table class="table table-border table-hover table-trible"><br>
    <form action="/giang-vien/B5/hien-thi" method="get">
        <h4>Tim kiem thong tin giang vien</h4>
        <p>Ten: <input name="searchTen" value="${param.searchTen}"></p>
        <p>Tuoi: </p>
        <p>Min: <input name="minAge" value="${param.minAge}"></p>
        <p>Max: <input name="maxAge" value="${param.maxAge}"></p>
        <p>
            <button type="submit">Search</button>
        </p>
    </form>
    <br><br>
    <%--@elvariable id="b5_GiangVien" type=""--%>
    <form:form action="/giang-vien/B5/add" modelAttribute="b5_GiangVien" method="post">
        <h3>Thong tin giang vien</h3>
        <p>Ma GV: <form:input path="maGV" value="${gv1.maGV}"/>
            <form:errors path="maGV" cssStyle="color: red"/>
        </p>
        <p>Ho ten: <form:input path="ten" value="${gv1.ten}"/>
            <form:errors path="ten" cssStyle="color: red"/>
        </p>
        <p>Tuoi: <form:input path="tuoi" value="${gv1.tuoi}"/>
            <form:errors path="tuoi" cssStyle="color: red"/>
        </p>
        <p>Que quan: <form:input path="queQuan" value="${gv1.queQuan}"/>
            <form:errors path="queQuan" cssStyle="color: red"/>
        </p>
        <p>
            <form:button type="submit" onclick="return confirm('Ban co muon add khong ?') ? alert('Add thanh cong') : false;">Add</form:button>
            <form:button type="submit">Update</form:button>
        </p>
    </form:form>
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
                <a href="/giang-vien/B5/detail/${gv.maGV}"
                   onclick="return confirm('Ban co muon detail ID ${gv.maGV} khong ?') ? alert('Detail thanh cong ID ${gv.maGV}') : false;">
                    <button type="button">Detail</button>
                </a>
                <a href="/giang-vien/B5/view-update/${gv.maGV}">
                    <button type="button">Edit</button>
                </a>
                <a href="/giang-vien/B5/remove/${gv.maGV}"
                   onclick="return confirm('Ban co muon xoa ID ${gv.maGV} khong ?') ? alert('Xoa thanh cong ID ${gv.maGV}') : false;">
                    <button type="button">Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>