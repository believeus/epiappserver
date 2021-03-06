<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="date" uri="http://epidial.com/jstl/date" %>
<!DOCTYPE HTML>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="Bookmark" href="/favicon.ico">
    <link rel="Shortcut Icon" href="/favicon.ico"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="static/h-ui.admin/lib/html5shiv.js"></script>
    <script type="text/javascript" src="static/h-ui.admin/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/lib/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/static/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/static/h-ui.admin/css/style.css"/>
    <!--[if IE 6]>
    <script type="text/javascript" src="static/h-ui.admin/lib/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title></title>
</head>
<body>
<article class="page-container">
    <form action="admin/age/save.jhtml" method="post" class="form form-horizontal" id="form-member-add">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>barcode：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" required="required" placeholder="" id="barcode"
                       name="barcode">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>Naturally age：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input  class="input-text" placeholder="34.2" required="required" name="naturally" id="naturally">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>Biological age：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input  class="input-text" placeholder="45.3" required="required" name="biological" id="biological">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">status：</label>
            <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				   <select name="status" class="fastbannerform__country" style="width: 100%;height: 35px;"
                           id="status">
                            <option  value="pending" title="pending">pending</option>
                            <option value="processing" title="processing">processing</option>
                            <option value="finished" title="finished">finished</option>
                        </select>
				</span></div>
        </div>

        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;submit&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="static/h-ui.admin/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui.admin/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="static/h-ui.admin/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="static/h-ui.admin/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="static/h-ui.admin/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="static/h-ui.admin/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
    $(function () {
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-member-add").validate({
            rules: {
                username: {
                    required: true,
                    minlength: 2,
                    maxlength: 16
                },
                valid: {
                    required: true,
                },
                email: {
                    required: true,
                    email: true,
                },
            },
            onkeyup: false,
            focusCleanup: true,
            success: "valid",
            submitHandler: function (form) {
                var data={}
                data.barcode=$("#barcode").val()
                data.naturally=$("#naturally").val()
                data.biological=$("#biological").val()
                data.status= $("#status").find('option:selected').val()
                console.info(data)
                $.post("admin/age/save.jhtml",data,function(msg){
                    if(msg=="success"){
                        var index = parent.layer.getFrameIndex(window.name);
                        //parent.$('#btn-refresh').click();
                        parent.location.reload();
                        parent.layer.close(index);
                    }else {
                        alert("Barcode does not exist")
                    }
                })

            }
        });
    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>