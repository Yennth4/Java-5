<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update thuc vat</title>
</head>
<body>
    <form action="/thuc-vat/B6/update" method="post">
        <h4>Chinh sua thuc vat</h4>
        <p>ID : <input name="id" value="${tv1.id}"></p>
        <p>Ten : <input name="ten" value="${tv1.ten}"></p>
        <p>Tuoi : <input name="tuoi" value="${tv1.tuoi}"></p>
        <p>Loai cay : <input name="loaiCay" value="${tv1.loaiCay}"></p>
        <p>Gioi tinh :
            <input type="radio" name="gioiTinh" value="true" ${tv.gioiTinh ? 'checked' : ''}> Duc
            <input type="radio" name="gioiTinh" value="false" ${!tv.gioiTinh ? 'checked' : ''}> Cai
        </p>
        <p>Khu vuc : <input name="khuVuc" value="${tv1.khuVuc}"></p>
        <p><button type="submit">Update</button></p>
    </form>
</body>
</html>