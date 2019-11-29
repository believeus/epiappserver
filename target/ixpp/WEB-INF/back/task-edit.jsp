<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
	<!--[if lt IE 9]>
	<script type="text/javascript" src="static/h-ui.admin/lib/html5shiv.js"></script>
	<script type="text/javascript" src="static/h-ui.admin/lib/respond.min.js"></script>
	<![endif]--><link rel="stylesheet" type="text/css" href="static/h-ui.admin/static/h-ui/css/H-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/static/h-ui.admin/css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/lib/Hui-iconfont/1.0.8/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/static/h-ui.admin/skin/default/skin.css" id="skin" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/static/h-ui.admin/css/style.css" />
	<!--[if IE 6]>
	<script type="text/javascript" src="static/h-ui.admin/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>Add User</title>
</head>
<body>
<article class="page-container">
	<form action="/admin/task/updateAddress.jhtml" method="post" class="form form-horizontal" id="form-address-update">
		<div style="width: 100%;height: 200px;">
			<style>table tr td{font-size: 16px;padding: 5px;border: 1px solid grey;}</style>
			<table  style="border: 1px dashed grey;font-size: 14px;">
				<thead>Receiving address</thead>
				<tbody>
					<input type="hidden" style="width: 100%;height: 25px;" name="id" value="${address.id}">
					<input type="hidden" style="width: 100%;height: 25px;" name="uuid" value="${address.uuid}">
                    <tr><td>username:</td><td><input style="width: 100%;height: 25px;" name="recipient"   value="${address.recipient}"></td></tr>
                    <tr><td>phone:</td><td><input style="width: 100%;height: 25px;" name="phone" value="${address.phone}"></td></tr>
                    <tr><td>postalcode:</td><td><input style="width: 100%;height: 25px;"  name="postalcode" value="${address.postalcode}"></td></tr>
                    <tr><td>Address detail:</td><td><input style="width: 100%;height: 25px;"  name="detail" value="${address.detail}"></td></tr>
                    <tr><td>city:</td><td><input style="width: 100%;height: 25px;"  name="city" value="${address.city}"></td></tr>
                    <tr><td>country:</td><td><input style="width: 100%;height: 25px;"  name="country" value="${address.country}"></td></tr>
					<tr><td></td><td><div class="row cl">
						<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
							<input class="btn btn-primary radius" type="button" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
						</div>
					</div></td></tr>
                </tbody>
			</table>
		</div>

	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="static/h-ui.admin/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui.admin/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="static/h-ui.admin/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="static/h-ui.admin/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="static/h-ui.admin/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="static/h-ui.admin/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});

	$("[type=button]").click(function(event){
		var _oThis=$(event.currentTarget).parents("tbody");
		var data={};
		data.id=_oThis.find("[name=id]").val();
		data.uuid=_oThis.find("[name=uuid]").val();
		data.recipient=_oThis.find("[name=recipient]").val();
		data.phone=_oThis.find("[name=phone]").val();
		data.postalcode=_oThis.find("[name=postalcode]").val();
		data.detail=_oThis.find("[name=detail]").val();
		data.city=_oThis.find("[name=city]").val();
		data.country=_oThis.find("[name=country]").val();
		console.info(data);
		$.post("/admin/task/updateAddress.jhtml",data,function(){
			var index = parent.layer.getFrameIndex(window.name);
			parent.$('.btn-refresh').click();
			parent.layer.close(index);
		});
	});
});
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>