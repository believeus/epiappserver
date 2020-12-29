<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
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
<script src="static/js/jquery-2.1.0.min.js" type="text/javascript"></script>
<title>user manager</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> index <span class="c-gray en">&gt;</span> user center <span class="c-gray en">&gt;</span> user manager <a id="btn-refresh" class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div style="width: 500px;height: 40px;margin: auto">
		<span style="color: #00CC99;font-size: 16px;font-weight: 700">email:</span>
		<input type="text" id="txtemail" style="width: 300px;height: 36px"/>
		<input type="button" value="search" id="btnSearch" onclick="seardemail()" style="border-radius: 10%;background: #00a0e9;height:40px;width: 100px;color: white;font-size: 24px" />
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="member_add('添加用户','/admin/user/addview.jhtml','','510')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> Add user</a></span> </div>
	<div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<thead>
			<tr class="text-c">
				<th width="120">ID</th>
				<th width="100">username</th>
				<th width="120">email</th>
				<th width="70">mail status</th>
				<th width="120">register time</th>
				<th width="120">last Login time</th>
				<th width="50">operation</th>
			</tr>
		</thead>
		<tbody id="tody">
			<c:forEach items="${users}" var="user">
				<tr name="item" data-id="${user.id}" class="text-c">
					<td>${user.uuid}</td>
					<td><u style="cursor:pointer" class="text-primary" onclick="member_show('${user.nickname}','member-show.html','${user.mail}','360','400')">${user.nickname}</u></td>
					<td>${user.mail}</td>
					<c:choose>
						<c:when test="${user.valid==0}">
							<td class="td-status"><span class="label label-error radius">inactivated</span></td>
						</c:when>
						<c:otherwise>
							<td class="td-status"><span class="label label-success radius">activation</span></td>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${user.register eq 0}"><td></td></c:when>
						<c:otherwise><td><date:date value="${user.register}" pattern="yyyy-MM-dd hh:mm:ss"></date:date></td></c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${user.lastLogin eq 0}"><td></td></c:when>
						<c:otherwise><td><date:date value="${user.lastLogin}" pattern="yyyy-MM-dd hh:mm:ss"></date:date></td></c:otherwise>
					</c:choose>
					<td class="td-manage"><a title="删除" href="javascript:;" onclick="member_del(this,'${user.id}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>

				<%--<td class="td-manage"><a title="edit" href="javascript:;" onclick="member_edit('edit','/admin/user/edit.jhtml?mail=${user.mail}','4','','510')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>  </td>--%>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	</div>
	<p align="center"> 当前页数:[${page.dang}/${page.zong}]
		<c:if test="${page.currPageNo > 1}">
			<a href="admin/user/view.jhtml?idx=0">首页</a>&nbsp;
			<a href="admin/user/view.jhtml?idx=${page.currPageNo - 10}">上一页</a>
		</c:if>
		<c:if test="${page.currPageNo+10 <page.totalPageCount+1}">
			<a href="admin/user/view.jhtml?idx=${page.currPageNo + 10}">下一页</a>
			<a href="admin/user/view.jhtml?idx=${page.mypage}">末页</a>
		</c:if></p>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="static/h-ui.admin/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui.admin/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="static/h-ui.admin/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<%--<script type="text/javascript" src="static/h-ui.admin/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>--%>
<script type="text/javascript" src="static/h-ui.admin/lib/laypage/1.2/laypage.js"></script>
<script>
	$(function(){
		$("body").on("keydown dblclick","input",function(event){
			var _oThis=$(event.currentTarget).removeAttr("readonly").css("border","1px solid blue").parents("tr[name=item]");
			if(event.which == "13") {
				var data={};
				data.id=_oThis.attr("data-id");
				data.discount=_oThis.find("[name=discount]").val();
				data.invite=_oThis.find("[name=invite]").val();
				data.times=_oThis.find("[name=times]").val();
				data.password=_oThis.find("[name=password]").val();
				$.post("/admin/user/update.jhtml",data,function(){
					$(event.currentTarget).attr("readonly","readonly").css("border","none");
				});
			}

		});
	});
</script>
<script type="text/javascript">
/*$(function(){
	$('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
		]
	});

});*/
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
				$(obj).remove();
				layer.msg('已停用!',{icon: 5,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});
	});
}

/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
				$(obj).remove();
				layer.msg('已启用!',{icon: 6,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});
	});
}
/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*密码-修改*/
function change_password(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*用户-删除*/
function member_del(obj,id){
	console.info(obj);
	layer.confirm('确认要删除吗？',function(index){
		$.post("/admin/user/del.jhtml?id="+id,function(msg){
			$(obj).parents("tr").remove();
			layer.msg('已删除!',{icon:1,time:1000});
		});

	});
}
</script>
<script>

	/*
	点击搜索，查询barcode 返回List<>
	* */
	function seardemail() {

		var url="/admin/user/mail?email="+$("#txtemail").val();
		$.ajax({
			type: 'POST',
			url: url,
			datatype:JSON,
			success:function (data) {
				var users = JSON.parse(data);
                var html=new Array();
                if(users){
					html.push("<table class='table table-border table-bordered table-hover table-bg table-sort'>")
					html.push("<tr name='item' class='text-c' data-id=\""+users.id+"\">");
					html.push("<td>"+users.uuid+"</td>");
					html.push("<td><input name='username' style='cursor:pointer;border: none' value='\""+users.nickname+"\'> "+"</td>");
					html.push("<td><input name='email' style='cursor:pointer;border: none' value='\""+users.mail+"\'> "+"</td>")
					if(users.valid==0){
						html.push("<td class=\"td-status\"><span class=\"label label-error radius\">inactivated</span></td>")
					}else {
						html.push("<td class=\"td-status\"><span class=\"label label-success radius\">activation</span></td>")
					}
					html.push("<td><input name='register' style='border: none' value='"+new Date(users.register).toLocaleString()+"'></td>")
					html.push("<td><input name='register' style='border: none' value='"+new Date(users.lastLogin).toLocaleString()+"'></td>")
					html.push("<td class='td-manage'><a title='删除' href='javascript:;'onclick=\"member_del(this,"+users.id+")\"+ class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6e2;</i></a>"+"</td>")
					html.push("</tr>")
                }
					$("#tody").html(html.join(""));


			}

		})
	}
</script>
</body>
</html>