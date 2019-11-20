<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>筛查数量化风险评估问卷</title>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no">

    <link href="static/css/ques1.css" rel="stylesheet">
</head>
<body>

<div id="container">
    <div id="photo">
        <img src="static/images/ques/ques1.png"/>
        <img src="static/images/ques/ques2.png"/>
        <img src="static/images/ques/ques3.png"/>
    </div>
</div>
</body>
</html>
