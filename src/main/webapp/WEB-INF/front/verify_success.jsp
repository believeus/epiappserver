<%@ page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Success</title>
</head>
</head>
<body style="margin: 0;padding: 0">
<div style="width: 100%;">
    <div style="width:100%;height: 135px">
        <div style="width: 18%;height: 135px;float: left;text-align: center;overflow: hidden;display: flex;justify-content: center;align-items: center;  vertical-align: middle;margin-left: 20px;">
            <img src="static/images/top-logo1.png" style="width: 100%;height:auto;"/>
        </div>
        <div style="width: 20%;height: 135px;float: left;text-align: center;overflow: hidden;justify-content: center;display: flex;align-items: center;  vertical-align: middle;margin-left: 20px;">
        <img src="static/images/top-logo2.png" style="width: 100%;height: auto;"/>
    </div>

</div>
<div style="width:100%;height: auto;background-color: #efefef;overflow: hidden;">
    <div style="width: 100%;height: 20px;"></div>
    <div style="width: 90%;height: 80%;margin: 0 auto;background-color: #fff;overflow: hidden;">
        <div style="width: 100%;height: 100%;float: left">
            <div style="width: 100%;height: 20px;"></div>
            <div style="overflow: hidden; width: 100%;height: 120px;text-align: center;">
                <img src="static/images/var-success.png" width="100px" height="100px"/>
            </div>
            <div style="clear: both"></div>
            <div style="width: 100%;height: 35%;text-align: center;overflow: hidden;">
                <div style="font-size: 24px;color:#fc8d6b">Registration is completed. <br>You can start by logging in to
                    Epi-Age using this email address. </div>
            </div>
            <div style="width: 100%;height: 20%;text-align: center">
                <div style="width: 100%;height: 40px;">
                </div>
            </div>

        </div>
    </div>
</div>
</div>
</body>
</html>
