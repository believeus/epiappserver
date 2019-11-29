<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <title>Login View</title>
    <script src="static/js/jquery-2.1.0.min.js"></script>
    <link href="static/css/Eject.css" rel="stylesheet">
    <script src="static/js/Eject.js"></script>
    <script>
        $(document).text()
    </script>
</head>
<body style="margin: 0;padding: 0">
<div style="width: 100%;height: 50px;">
    <div style="width: 100%;height: 55px;clear: both;"></div>
</div>
<div style="background-image:url('static/images/bg.png');width:100%;height:667px;">
    <div style="width: 90%;height: auto;margin: 0 auto;">
        <div style="width: 100%;height: auto;font-family: arial;font-size: 20px;font-weight: 500;line-height: 80px;font-weight:600;">
            Reset your password
        </div>
        <div style="width: 100%;height: 20px;"></div>
        <form action="#" method="post">
            <input name="token" type="hidden" value="${user.token}">
            <div style="width: 100%;height: 15px;"></div>

            <div style="width: 100%;height: 15px;"></div>
            <div style="width: 90%;height: 40px;margin: 0 auto;">
                <input type="email" value="${user.mail}" readonly="readonly" required="required" type="email" placeholder="Email" name="mail" id="mail"
                       style="width: 90%;height: 40px;margin: 0 auto; border: 1px solid #C0C0C0;border-radius: 3px;font-size: 16px;font-family: arial;font-weight: 500; padding-left: 12px;"/>
            </div>
            <div style="width: 100%;height: 15px;"></div>
            <div style="width: 90%;height: 40px;margin: 0 auto;">
                <input type="password" required="required" placeholder="Create a password" name="password" id="password"
                       style="width: 90%;height: 40px;margin: 0 auto; border: 1px solid #C0C0C0;border-radius: 3px;font-size: 16px;font-family: arial;font-weight: 500; padding-left: 12px;"/>
            </div>
            <div style="width: 100%;height: 15px;"></div>
            <div style="width: 90%;height: 40px;margin: 0 auto;">
                <input type="password" required="required" placeholder="Confirm password"
                       onblur="if(this.value!=$('#password').val()){alert('Confirm password and password different')}"
                       style="width: 90%;height: 40px;margin: 0 auto; border: 1px solid #C0C0C0;border-radius: 3px;font-size: 16px;font-family: arial;font-weight: 500; padding-left: 12px;"/>
            </div>
            <div style="width: 100%;height: 15px;"></div>

            <div style="width: 100%;height: 30px;"></div>

            <div style="width: 100%;height: 5px;"></div>
            <div style="width: 90%;height: 50px;margin: 0 auto;">
                <div class="other_login" style="height: 40px;margin: 0 auto;">
                    <input type="submit" class="login_btn" value="Reset Password" style="margin: 0"></input>
                </div>
            </div>
        </form>
    </div>

    <div id="all-right" style="width: 90%;height: auto;font-family: arial;margin: 0 auto;">
        <div style="width: 100%;height: auto;font-size: 12px;text-align: center; margin: 0 auto;line-height: 50px;margin-bottom: 50px;">
            @2019 HKG epi THERAPEUTICS Ltd. All Rights Reserved
        </div>
    </div>
</div>
</div>
</div>
</body>

</html>

<script>
    $("form").submit(function (e) {
            $("input").attr("disabled", true);
            $("input[type=submit]").attr("disabled", "disabled");
            var mail = $("input[name=mail]").val();
            var password = $("input[name=password]").val();
            var token=$("input[name=token]").val();
            var data = {};
            data.password = password;
            data.mail = mail;
            data.token=token;
            $.post("user/repasswd.jhtml", data, function (data) {
                Ealt.Ealert({
                    title:'Message',
                    message:data
                });
            });

        return false;
    });
</script>
