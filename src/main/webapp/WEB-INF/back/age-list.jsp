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
	<script type="text/javascript" src="static/h-ui.admin/lib/jquery/1.9.1/jquery.min.js"></script>

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
<title>Age manager</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> index <span class="c-gray en">&gt;</span> Age center <span class="c-gray en">&gt;</span> Age manager <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
<%--	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="member_add('add','/admin/age/addView.jhtml','','510')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> Add</a></span> </div>--%>
	<div style="width: 500px;height: 40px;margin: auto">
		<span style="color: #00CC99;font-size: 16px;font-weight: 700">barcode:</span>
		<input type="text" id="txtbarcode" style="width: 300px;height: 36px"/>
		<input type="button" value="search" id="btnSearch" onclick="seardnakit()" style="border-radius: 10%;background: #00a0e9;height:40px;width: 100px;color: white;font-size: 24px" />
	</div>
	<div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<thead>
			<tr class="text-c">
				<th width="30">chronological age</th>
				<th width="30">EpiAge</th>
				<th width="80">barcode</th>
				<th width="80">accuracy</th>
				<th width="50">status</th>
				<th width="50">labevent</th>
				<th width="80">email</th>
				<th width="100">createTime</th>
				<th width="100">uploadTime</th>
                <th width="50">notify</th>
				<th width="50">edit</th>
			</tr>
		</thead>
		<tbody id="tody">
			<c:forEach items="${databox}" var="task">
				<tr  class="text-c">
					<td><input style='width: 50px' name="naturally" data-id="${task.id}" value="${task.naturally}" style="border: none" readonly="readonly"></td>
					<td><input style='width: 50px' name="biological" data-id="${task.id}" id="${task.id}" value="${task.biological}" style="border: none" readonly="readonly"></td>
					<td>${task.barcode}</td>
					<td><input style='width: 50px' name="accuracy" data-id="${task.id}" value="${task.accuracy}" style="border: none" readonly="readonly"></td>
					<td>
						<select  data-id="${task.id}" >
							<c:choose>
								<c:when test="${task.status eq 'in-transit'}">
									<option data-id="${task.id}" selected="selected" value="in-transit">In-Transit</option>
                                    <option  data-id="${task.id}"  value="processing">Processing</option>
                                    <option data-id="${task.id}"   value="pending" >Received</option>
									<option  data-id="${task.id}"  value="ready">Test Completed </option>
								</c:when>
								<c:when test="${task.status eq 'pending'}">
									<option data-id="${task.id}"value="in-transit" >In-Transit</option>
                                    <option  data-id="${task.id}"  value="processing">Processing</option>
									<option data-id="${task.id}" selected="selected" value="pending" >Received</option>
									<option  data-id="${task.id}"  value="ready">Test Completed </option>
								</c:when>
								<c:when test="${task.status eq 'processing'}">
									<option data-id="${task.id}" value="in-transit" >In-Transit</option>
                                    <option  data-id="${task.id}" selected="selected"  value="processing">Processing</option>
									<option data-id="${task.id}"  value="pending" >Received</option>
									<option  data-id="${task.id}"  value="ready">Test Completed </option>
								</c:when>
								<c:otherwise>
									<option data-id="${task.id}" value="in-transit" >In-Transit</option>
                                    <option  data-id="${task.id}"   value="processing">Processing</option>
									<option data-id="${task.id}"  value="pending" >Received</option>
									<option  data-id="${task.id}" selected="selected"  value="ready">Test Completed </option>
								</c:otherwise>
							</c:choose>
						</select>
					</td>
					<td><input style='width: 110px' name="labevent" data-id="${task.id}" value="${task.labevent}" style="border: none" readonly="readonly"></td>
					<td>${task.email}</td>
					<c:choose>
						<c:when test="${task.createTime eq 0}"><td></td></c:when>
						<c:otherwise><td><date:date value="${task.createTime}" pattern="yyyy-MM-dd hh:mm:ss"></date:date></td></c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${task.uploadTime eq 0}"><td></td></c:when>
						<c:otherwise><td><date:date value="${task.uploadTime}" pattern="yyyy-MM-dd hh:mm:ss"></date:date></td></c:otherwise>
					</c:choose>
                    <td>
                        <c:choose>
                            <c:when test="${task.allow == 1}">
                                <a  href="javascript:;" onclick="emailView('Email Notify','/user/report/${task.uuid}/${task.barcode}/emailView.jhtml','','510')" class="ml-5" style="text-decoration:none;color: green">Notification</a>
                            </c:when>
                            <c:otherwise>
                                <span style="color: red"></span>
                            </c:otherwise>
                        </c:choose>

                    </td>
					<td class="td-manage">
                        <a title="删除" href="javascript:;" onclick="member_del(this,'${task.id}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
                    </td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

		<script>
			/*
            点击搜索，查询barcode 返回List<>
            * */
			function seardnakit() {
				var url="/admin/age/bybarcode.jhtml?barcode="+$("#txtbarcode").val();
				$.post(url,function (data) {
						var udata = JSON.parse(data);
                        var html=new Array();
						for (var i = 0; i < udata.length; i++) {
						    html.push("<table class='table table-border table-bordered table-hover table-bg table-sort'>")
                            html.push("<tr class='text-c'>")
                            html.push("<td><input style='width: 50px' name='naturally' data-id='"+udata[i].id+"' style='border: none' value='"+udata[i].naturally+"\' readonly=\"readonly\"> "+"</td>")
							html.push("<td><input style='width: 50px' name='biological' data-id='"+udata[i].id+"' style='border: none' value='"+udata[i].biological+"\' readonly=\"readonly\"> "+"</td>")
							html.push("<td>"+udata[i].barcode+"</td>")
                            html.push("<td><input style='width: 50px' name='accuracy' data-id='"+udata[i].id+"' style='border: none' value='"+udata[i].accuracy+"\' readonly=\"readonly\"> "+"</td>")
                            html.push("<td>")
                            html.push("<select data-id='"+udata[i].id+"'>")
                            html.push("<option ".concat("data-id=\"").concat(udata[i].id).concat("\"").concat("value='ready'").concat(udata[i].status=="ready"?"selected=selected":"").concat(" >").concat("Test Completed").concat("</option>"))
                            html.push("<option ".concat("data-id=\"").concat(udata[i].id).concat("\"").concat("value='pending'").concat(udata[i].status=="pending"?"selected=selected":"").concat(" >").concat("Received").concat("</option>"))
                            html.push("<option ".concat("data-id=\"").concat(udata[i].id).concat("\"").concat("value='processing'").concat(udata[i].status=="processing"?"selected=selected":"").concat(" >").concat("Processing").concat("</option>"))
							html.push("<option ".concat("data-id=\"").concat(udata[i].id).concat("\"").concat("value='in-transit'").concat(udata[i].status=="in-transit"?"selected=selected":"").concat(" >").concat("In-Transit").concat("</option>"))
							html.push("</select>")
                            html.push("</td>")

							html.push("<td><input style='width: 110px' name='labevent' data-id='"+udata[i].id+"' style='border: none' value='"+udata[i].labevent+"\' readonly=\"readonly\"> "+"</td>")

                           if(udata[i].email){html.push("<td>"+udata[i].email+"</td>")}else{ html.push("<td></td>")}
                            html.push("<td><input name='createtime' style='border: none;width: 120px' value='"+new Date(udata[i].createTime).toLocaleString()+"'></td>")
                            html.push("<td><input name='uploadtime' style='border: none;width: 120px' value='"+new Date(udata[i].uploadTime).toLocaleString()+"'></td>")
                            html.push("<td>") //${task.allow == 1}
                            html.push("<a href='javascript:;'".concat(" onclick=").concat(udata[i].allow==1?"emailView('Email-Nofify','/user/report/"+udata[i].uuid+"/"+udata[i].barcode+"/emailView.jhtml','','510')":"").concat(" class='ml-5'").concat(" style='text-decoration:none;color: green'>").concat(udata[i].allow==1?"Notification":"").concat("</a>"))
                            html.push("</td>")
                            html.push("<td class='td-manage' ><a title='删除' href='javascript:;'onclick=\"+member_del(this,"+udata[i].id+")\"+ class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6e2;</i></a>"+"</td>")
							html.push("</tr>")
                            html.push("</table>")
						}
						$("#tody").html(html.join(""));
				})
			}
		</script>

		<script>
			$(function(){
                $("body").on("keydown dblclick change","input[name=naturally],input[name=biological],input[name=accuracy],select",function(event){
                    var _oThis = $(event.currentTarget);
                    switch (event.type) {
                        case "dblclick":
                            _oThis.removeAttr("readonly");
                            _oThis.css("border","1px solid blue");
                            break;
                        default:
                            //只监听enter按键
                            if(event.which == "13"||event.type=="change") {
                                var naturally = _oThis.parents("tr").find("[name=naturally]").val();
                                var biological = _oThis.parents("tr").find("[name=biological]").val();
								var accuracy = _oThis.parents("tr").find("[name=accuracy]").val();
                                var status = _oThis.parents("tr").find("option:selected").val();
                                var data = {}
								console.info(status)
                                data.id = _oThis.attr("data-id");
                                data.v = naturally + "@" + biological+"@"+status+"@"+accuracy;
                                console.info(data)
                                console.log("naturally"+naturally+"...bio:"+biological);
                                if(biological=='0.0'&status =='ready'){
                                    alert('When epiage is empty, the status cannot be changed to ready！');
                                    window.location.reload();
                                }else {
                                    $.post("admin/age/update.jhtml", data, function () {
                                        _oThis.attr("readonly", "readonly");
                                        _oThis.css("border", "none");
                                        _oThis.parents("tr").find("[name=labevent]").val(status =='ready'?"Completed":status =='processing'?"SEQUENCING":status =='pending'?"PARCEL_RECEIVED":"POST_FROM_LAB");
                                    });
                                }

                            }
                            break;
                    }

                });


			});
		</script>
	</div>
</div>
<!--_footer 作为公共模版分离出去-->

<script type="text/javascript" src="static/h-ui.admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui.admin/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="static/h-ui.admin/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<%--<script type="text/javascript" src="static/h-ui.admin/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>--%>
<script type="text/javascript" src="static/h-ui.admin/lib/laypage/1.2/laypage.js"></script>
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
function emailView(title,url,id,w,h){
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
	layer.confirm('确认要删除吗？',function(index){
		$.post("/admin/age/del.jhtml?id="+id,function(msg){
			$(obj).parents("tr").remove();
			layer.msg('已删除!',{icon:1,time:1000});
		});
	});
}


</script>
</body>
</html>