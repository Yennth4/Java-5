<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>B12 - Update</title>
</head>
<body>
<form action="/B12/chuc-vu/update" method="post">
    <p><h3>UPDATE CHUC VU</h3></p>
    <p><span>Id: ${cv.id}</span></p>
    <p><span>Ma: ${cv.ma}</span></p>
    <p><span>Ten: ${cv.ten}</span></p>
    <p>
        <button type="submit">Update</button>
    </p>
</form>
</body>
</html>