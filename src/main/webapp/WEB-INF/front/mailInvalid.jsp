<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">

    <title>Login</title>


</head>
<body style="margin: 0;padding: 0">


<div style="width: 100%;height: 667px;">
    <div style="width:100%;height:100%;">
        <div style="width: 100%;height: 300px">
            <div style="width: 20%;height:100%;margin: 0 auto;">
                <img src="static/images/logo.png" style="width: 100%;height: 100%"/>
            </div>
            <div style=" width: 80%;margin: 0 auto;text-align: left;font-size: 22px;text-align: center;">
                Token is invalid, please click <strong>[forget password]</strong> again on App
            </div>
        </div>
    </div>
</div>

</body>

</html>
