<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login-form</title>
</head>
<body>

<form action="/ket-qua" method="post">
    <div class="container">
        <label><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="uname">
        <br>
        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="pwd">
        <br>
        <button type="submit">Login</button>
    </div>
</form>
</body>
</html>