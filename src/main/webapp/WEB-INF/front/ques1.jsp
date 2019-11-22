<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no,">
    <link href="static/css/163css.css" rel="stylesheet" type="text/css">
    <link href="static/css/ques1.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="static/js/zepto_min.js"></script>
    <script type="text/javascript" src="static/js/touchslider.js"></script>
</head>
<body>
<div id="container">
    <div class="imgBox">
        <img class="img-slide img1" src="static/images/ques/ques1.png" alt="1">
        <img class="img-slide img2" src="static/images/ques/ques2.png" alt="2">
        <img class="img-slide img3" src="static/images/ques/ques3.png" alt="3">
    </div>
    <div id="personal-info">
        <div style="background-color: #f3f3ff;">
            <div class="center">
                <div class="code">
                    <div class="form-num">编号2019 - ABCP -</div>
                    <input class="form-code" maxlength="1">
                    <div class="dash"> -</div>
                    <input class="form-code" type="text" maxlength="1">
                    <input class="form-code" type="text" maxlength="1">
                    <input class="form-code" type="text" maxlength="1">
                    <input class="form-code" type="text" maxlength="1">
                </div>
                <div class="danger-group">
                    <span>高危人群 :</span>
                    <input name="isdanger" type="radio" value="yes"/>是
                    <input name="isdanger" type="radio" value="no"/>否
                </div>
            </div>
        </div>
        <div id="personal-info-detail">
            <div style="height: 12px"></div>
            <ul class="info">
                <li>调查对象姓名: <input  type="text" name="name"
                                   value=""></li>
                <hr>
                <li>性别: <input  type="text" name="sex" value="">
                </li>
                <hr>
                <li>年龄: <input  type="text" name="age"
                               onkeyup="this.value=this.value.replace(/\D/g,'')"></li>
                <hr>
                <li style="height:56px;"><span style="height: 67px">住址:</span> <textarea id="address" cols="2" rows="3" ></textarea>
                </li>
                <hr>
                <li>家庭电话: <input type="text" name="mobile"
                                 onkeyup="this.value=this.value.replace(/\D/g,'')"></li>
                <hr>
                <li>身份证号码: <input type="text" name="id"
                                  onkeyup="value=value.replace(/[^\d|chun]/g,'')"></li>
                <hr>
                <li>手机号码: <input type="text" name="phone"
                                 onkeyup="this.value=this.value.replace(/\D/g,'')"></li>
                <hr>
            </ul>
        </div>
        <div id="marriage-status">
            <div class="ninty">
                <h3>婚姻状况</h3>
                <input name="marriage" type="radio" value="married">已婚
                <input name="marriage" type="radio" value="single">未婚
                <input name="marriage" type="radio" value="devoiced">离婚
                <input name="marriage" type="radio" value="widow">丧偶
            </div>
            <hr>
            <div class="ninty">
                <h3>文化 程度</h3>
                <input name="education" type="radio" value="illiteracy">文盲
                <input name="education" type="radio" value="primary">小学　
                <input name="education" type="radio" value="middle">中专、中学
                <input name="education" type="radio" value="university">大学、大专
                <input name="education" type="radio" value="graduate">研究生
            </div>
            <hr>
            <div class="ninty">
                <h3>职　 　业</h3>
                <input name="profession" type="radio" value="farmer">农民
                <input name="profession" type="radio" value="worker">工人
                <input name="profession" type="radio" value="franchise">个体户
                <input name="profession" type="radio" value="skill">各类专业技术人员
                <input name="profession" type="radio" value="others">其它
            </div>
            <hr>
           <%-- <div>
                <h3>您家有几口人, 平均年收入大约为多少元?</h3>
                <p style="display: flex;line-height: 30px">
                    <input type="number" style="width: 20%">
                    <label>/人</label>
                    <input type="text" style="width: 40%">
                    <label>/元年</label>
                </p>
            </div>--%>
        </div>
    </div>
    <div class="dark"></div>
    <div class="box-163css">
        <div class="dark"></div>
        <ul id="pagenavi1" class="page">
            <li>
                <a href="#js011.html" class="active">
                    <img class="image1" src="static/images/ques/dachang-1-back.png">
                </a>
            </li>
            <li>
                <a href="#js.html">
                    <img class="image2" src="static/images/ques/dachang-2-front.png">
                </a>
            </li>
            <li>
                <a href="#js09.html">
                    <img class="image3" src="static/images/ques/dachang-3-front.png">
                </a>
            </li>
        </ul>
        <div id="slider1" class="swipe">
            <ul class="box01_list">
                <li class="li_list">
                    <div class="news_list">

                        <div style="height: 12px;background-color: #efefef"></div>

                        <h2>说明：请选择相应的栏目或填写内容</h2>
                        <hr>
                        <div class="ninty">
                            <h3>一、本人有无慢性腹泻史</h3>
                            <input name="fuxie" type="radio" value="yes">有
                            <input name="fuxie" type="radio" value="no">无
                            <hr>
                            <h3>二、本人有无慢性便秘史</h3>
                            <input name="bianmi" type="radio" value="yes">有
                            <input name="bianmi" type="radio" value="no">无
                            <hr>
                            <h3>三、本人有无粘液和(或)血便史</h3>
                            <input name="xuebian" type="radio" value="yes">有
                            <input name="xuebian" type="radio" value="no">无
                            <hr>
                            <h3>四、本人有无慢性阑尾炎或阑尾切除史</h3>
                            <input name="nanwei" type="radio" value="yes">有
                            <input name="nanwei" type="radio" value="no">无
                            <hr>
                            <h3>五、本人有无慢性胆囊炎或胆囊切除史</h3>
                            <input name="dannanwei" type="radio" value="yes">有
                            <input name="dannanwei" type="radio" value="no">无
                            <hr>
                            <h3>六、近二十年来本人有无不良生活事件史</h3>
                            <input name="abuslife" type="radio" value="yes">有
                            <input name="abuslife" type="radio" value="no">无
                            <h3>如有, 请选择</h3>
                            <input name="have-abuslife" type="radio" value="devoiced">离婚
                            <input name="have-abuslife" type="radio" value="widow">配偶死亡
                            <input name="have-abuslife" type="radio" value="fam-meb-dead">一级亲属死亡
                            <input name="have-abuslife" type="radio" value="child-offduty">子女下岗
                            <input name="have-abuslife" type="radio" value="others">其它
                            <hr>
                            <h3>七、本人有无癌症史</h3>
                            <input name="abuslife" type="radio" value="yes">有
                            <input name="abuslife" type="radio" value="no">无
                            <div style="clear: both;height: 12px"></div>
                            <div class="what-cancer">
                                <div>如有，请具体描述什么癌: <input
                                        style="width: 50%; border:none;border-bottom-style: solid;border-bottom-width: 1px; text-align: center;outline: none"
                                        type="text"
                                        name="cancer" value="">
                                </div>
                                <div>发病时几岁:<input
                                        style="width: 60%; border:none;border-bottom-style: solid;border-bottom-width: 1px;text-align: center;outline: none"
                                        type="text"
                                        name="cancer-age" value="">
                                </div>
                                <div>诊断医院: <input
                                        style="width: 60%; border:none;border-bottom-style: solid;border-bottom-width: 1px;text-align: center;outline: none"
                                        type="text"
                                        name="cancer-hospital" value="">
                                </div>
                            </div>
                            <hr>
                            <h3>八、本人有无肠息肉史</h3>
                            <input name="changxirou" type="radio" value="yes">有
                            <input name="changxirou" type="radio" value="no">无
                            <hr>
                            <h3>九、 一级亲属(父、母、兄弟姐妹、子女)肠癌史</h3>
                            <div class="what-cancer">
                                谁: <input class="who" type="text" name="colon-cancer-who" value="">
                                发病时几岁：<input type="text" name="colon-cancer-age" value="">
                                在世与否：<input type="text" name="colon-cancer-alive" value="">
                            </div>
                            <div class="what-cancer">
                                谁: <input class="who" type="text" name="colon-cancer-who" value="">
                                发病时几岁：<input type="text" name="colon-cancer-age" value="">
                                在世与否：<input type="text" name="colon-cancer-alive" value="">
                            </div>
                            <div class="what-cancer">
                                谁: <input class="who" type="text" name="colon-cancer-who" value="">
                                发病时几岁：<input type="text" name="colon-cancer-age" value="">
                                在世与否：<input type="text" name="colon-cancer-alive" value="">
                            </div>
                            <hr>

                            <div class="survey">
                                <div>
                                    调查员签名: <input type="text" name="survey-person" value="">
                                </div>
                                <div style="height: 17px;"></div>
                                <div>
                                    调查日期: <input type="text" name="survey-date" value="">
                                </div>
                            </div>
                        </div>
                        <div style="height: 34px;"></div>
                        <div class="note">
                            <div>
                                <div style="height: 7px;"></div>
                                <div>备注：</div>
                                <div>1.慢性腹泻指近2年来腹泻累计持续超过3个月，每次发作持续时间在1周以上。</div>
                                <div>2.慢性便秘指近2年来便秘每年在2个月以上。3.不良生活事件史须发生在近20年内，并在事件发生后对调查对象造成较大精神创伤或痛苦。</div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="li_list">
                    <div class="news_list">
                        <div style="height: 12px;background-color: #efefef"></div>

                        <h2>说明：请选择相应的栏目或填写内容</h2>
                        <hr>
                        <div>
                            <p>1 您家有几口人?</p>
                            <p>
                                <input id='people1' type="radio" name='people' />
                                <label for="people1">A.1人 </label>
                            </p>
                            <p>
                                <input id='people2' type="radio" name='people' />
                                <label for="people2">B.2人</label>
                            </p>
                            <p>
                                <input id="people3" type="radio" name="people">
                                <label for="people3">C.3人</label>
                            </p>
                            <p style="border-bottom: 1px solid #ccc">
                                <input id="people4" type="radio" name="people">
                                <label for="people4">D.4人</label>
                            </p>
                        </div>
                        <div>
                            <p>2 您的饮用水主要来源于:</p>
                            <p>
                                <input id='your1' type="radio" name='your' />
                                <label for="your1">A.池塘水 </label>
                            </p>
                            <p>
                                <input id='your2' type="radio" name='your' />
                                <label for="your2">B.浜水</label>
                            </p>
                            <p>
                                <input id="your3" type="radio" name="your">
                                <label for="your3">C.河水</label>
                            </p>
                            <p>
                                <input id="your4" type="radio" name="your">
                                <label for="your4">D.井水</label>
                            </p>
                            <p style="border-bottom: 1px solid #ccc">
                                <input id="your5" type="radio" name="your">
                                <label for="your5">E.自来水</label>
                            </p>

                        </div>
                        <div style="width: 100%">
                            <p>3 状况吸烟:</p>
                            <p>
                                <input id='Smoking1' type="radio" name='Smoking' />
                                <label for="Smoking1">A.否 </label>
                                <input id='Smoking2' type="radio" name='Smoking' />
                                <label for="Smoking2">B.是</label>
                            </p>
                            <p>3.1香烟:</p>
                            <p>
                                <input id='yan1' type="radio" name='yan' />
                                <label for="yan1">A.0-5年 </label>
                                <input id='yan2' type="radio" name='yan' />
                                <label for="yan2">B.6-10</label>
                            </p>
                            <p>
                                <input id='yan3' type="radio" name='yan' />
                                <label for="yan3">C.11-15年 </label>
                                <input id='yan4' type="radio" name='yan' />
                                <label for="yan4">D.16-20年</label>
                            </p>
                            <p>
                                <input id='yan5' type="radio" name='yan' />
                                <label for="yan5">E.21-25年 </label>
                                <input id='yan6' type="radio" name='yan' />
                                <label for="yan6">F.25年以上</label>
                            </p>
                            <p style="border-bottom: 1px solid #ccc">每五年一个阶段</p>
                            <p>3.2戒烟:</p>
                            <p>
                                <input id='jieyan1' type="radio" name='jieyan' />
                                <label for="jieyan1">A.0-5年 </label>
                                <input id='jieyan2' type="radio" name='jieyan' />
                                <label for="jieyan2">B.6-10</label>
                            </p>
                            <p>
                                <input id='jieyan3' type="radio" name='jieyan' />
                                <label for="jieyan3">C.11-15年 </label>
                                <input id='jieyan4' type="radio" name='jieyan' />
                                <label for="jieyan4">D.16-20年</label>
                            </p>
                            <p style="border-bottom: 1px solid #ccc">
                                <input id='jieyan5' type="radio" name='jieyan' />
                                <label for="jieyan5">E.21-25年 </label>
                                <input id='jieyan6' type="radio" name='jieyan' />
                                <label for="jieyan6">F.25年以上</label>
                            </p>

                        </div>
                        <div>
                            <p>4 饮酒情况:</p>
                            <p style="border-bottom: 1px solid #ccc">
                                <input id='beer1' type="radio" name='beer' />
                                <label for="beer1">A.否 </label>
                                <input id='beer2' type="radio" name='beer' />
                                <label for="beer2">B.是</label>
                            </p>
                            <p> 什么酒呢？</p>
                            <p>
                                <input id='colorbeer1' type="radio" name='colorbeer' />
                                <label for="colorbeer1">A.啤酒 </label>
                                <input id='colorbeer2' type="radio" name='colorbeer' />
                                <label for="colorbeer2">B.白酒</label>
                            </p>
                            <p style="border-bottom: 1px solid #ccc">
                                <input id='colorbeer3' type="radio" name='colorbeer' />
                                <label for="colorbeer3">C.红酒 </label>
                                <input id='colorbeer4' type="radio" name='colorbeer' />
                                <label for="colorbeer4">D.黄酒</label>
                                <input id='colorbeer5' type="radio" name='colorbeer' />
                                <label for="colorbeer5">E.米酒</label>
                            </p>
                            <p>
                                <input id='jiu1' type="radio" name='jiu' />
                                <label for="jiu1">A.0-5年 </label>
                                <input id='jiu2' type="radio" name='jiu' />
                                <label for="jiu2">B.6-10</label>
                            </p>
                            <p>
                                <input id='jiu3' type="radio" name='jiu' />
                                <label for="jiu3">C.11-15年 </label>
                                <input id='jiu4' type="radio" name='jiu' />
                                <label for="jiu4">D.16-20年</label>
                            </p>
                            <p style="border-bottom: 1px solid #ccc">
                                <input id='jiu5' type="radio" name='jiu' />
                                <label for="jiu5">E.21-25年 </label>
                                <input id='jiu6' type="radio" name='jiu' />
                                <label for="jiu6">F.25年以上</label>
                            </p>
                        </div>
                        <div>
                            <p>5 饮茶情况:</p>
                            <p style="border-bottom: 1px solid #ccc">
                                <input id='tea1' type="radio" name='tea' />
                                <label for="tea1">A.否 </label>
                                <input id='tea2' type="radio" name='tea' />
                                <label for="tea2">B.是</label>
                            </p>
                            <p> 什么茶呢？</p>
                            <p>
                                <input id='colortea1' type="radio" name='colortea' />
                                <label for="colortea1">A.绿茶 </label>
                                <input id='colortea2' type="radio" name='colortea' />
                                <label for="colortea2">B.红茶</label>
                            </p>
                            <p style="border-bottom: 1px solid #ccc">
                                <input id='colortea3' type="radio" name='colortea' />
                                <label for="colortea3">C.花茶 </label>
                                <input id='colortea4' type="radio" name='colortea' />
                                <label for="colortea4">D.其他</label>
                            </p>
                            <p>
                                <input id='cha1' type="radio" name='cha' />
                                <label for="cha1">A.0-5年 </label>
                                <input id='cha2' type="radio" name='cha' />
                                <label for="cha2">B.6-10</label>
                            </p>
                            <p>
                                <input id='cha3' type="radio" name='cha' />
                                <label for="cha3">C.11-15年 </label>
                                <input id='cha4' type="radio" name='cha' />
                                <label for="cha4">D.16-20年</label>
                            </p>
                            <p style="border-bottom: 1px solid #ccc">
                                <input id='cha5' type="radio" name='cha' />
                                <label for="cha5">E.21-25年 </label>
                                <input id='cha6' type="radio" name='cha' />
                                <label for="cha6">F.25年以上</label>
                            </p>
                            <%--<table border="1" width="100%" style="border-bottom: 1px solid #ccc;text-align: center">--%>
                            <%--<tr>--%>
                            <%--<th style="width: 60px">类型</th>--%>
                            <%--<th style="width: 40px">是/否</th>--%>
                            <%--<th style="width: 60px">每天饮多少</th>--%>
                            <%--<th style="width: 60px;">共多少年</th>--%>
                            <%--</tr>--%>
                            <%--<tr><td style="width: 60px">啤酒</td><td><input type="number" style="width: 100%"></td><td>毫升/天</td><td style="text-align: center"><input type="number" style="width: 50%">年</td></tr>--%>
                            <%--<tr><td style="width: 60px">白酒</td><td><input type="number" style="width: 100%"></td><td>两/天</td><td style="text-align: center"><input type="number" style="width: 50%">年</td></tr>--%>
                            <%--<tr><td style="width: 60px">黄酒</td><td><input type="number" style="width: 100%"></td><td>两/天</td><td style="text-align: center"><input type="number" style="width: 50%">年</td></tr>--%>
                            <%--<tr><td style="width: 60px">米酒</td><td><input type="number" style="width: 100%"></td><td>两/天</td><td style="text-align: center"><input type="number" style="width: 50%">年</td></tr>--%>
                            <%--</table>--%>
                        </div>

                        <div>
                            <p>6.饮食习惯（指近5年）</p>
                            <table border="1" width="100%" style="text-align: center;border-bottom: 1px solid #ccc">
                                <tr>
                                    <th>食物名称</th>
                                    <th><1次/周</th>
                                    <th>2-3次/周</th>
                                    <th>4-5次/周</th>
                                    <th>6-7次/周</th>
                                </tr>
                                <tr>
                                    <td style="width: 20%">新鲜蔬菜</td>
                                    <td style="width: 19.5%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 19.5%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 19.5%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 19.5%"><input type="number" style="width: 100%"></td>
                                </tr>
                                <tr>
                                    <td style="width: 19.5%">新鲜水果</td>
                                    <td style="width: 19.5%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 19.5%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 19.5%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 19.5%"><input type="number" style="width: 100%"></td>
                                </tr>
                                <tr>
                                    <td style="width: 20%">肉蛋奶类</td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                </tr>
                                <tr>
                                    <td style="width: 20%">腌制食品</td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                </tr>
                                <tr>
                                    <td style="width: 20%">油炸熏制食品</td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                    <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                </tr>
                            </table>
                        </div>
                        <div>
                            <p>7 肠道疾病史:</p>
                            <p style="border-bottom: 1px solid #ccc">
                                <input id='gut1' type="radio" name='gut' />
                                <label for="gut1">A.否 </label>
                                <input id='gut2' type="radio" name='gut' />
                                <label for="gut2">B.是</label>
                            </p>
                            <table border="1" style="border-bottom: 1px solid #ccc;text-align: center">
                                <tr>
                                    <th>疾病名称</th>
                                    <th colspan="1">是/否</th>
                                    <th>诊断时年龄</th>
                                </tr>
                                <tr>
                                    <td>慢性结肠炎</td>
                                    <td><input type="text" style="width: 100%"></td>
                                    <td><input type="number" style="width: 70%">岁</td>
                                </tr>
                                <tr>
                                    <td>慢性溃疡性结肠炎</td>
                                    <td><input type="text" style="width: 100%"></td>
                                    <td><input type="number" style="width: 70%">岁</td>
                                </tr>
                                <tr>
                                    <td>肠息肉</td>
                                    <td><input type="text" style="width: 100%"></td>
                                    <td><input type="number" style="width: 70%">岁</td>
                                </tr>
                                <tr>
                                    <td>慢性阑尾炎</td>
                                    <td><input type="text" style="width: 100%"></td>
                                    <td><input type="number" style="width: 70%">岁</td>
                                </tr>
                                <tr>
                                    <td>其他（请注明）</td>
                                    <td><input type="text" style="width: 100%"></td>
                                    <td><input type="number" style="width: 70%">岁</td>
                                </tr>
                            </table>
                        </div>
                        <div>
                            <p>8 家族史（您家中有没有人得过肿瘤):</p>
                            <p>
                                <input id='tumor1' type="radio" name='tumor' />
                                <label for="tumor1">A.否 </label>
                                <input id='tumor2' type="radio" name='tumor' />
                                <label for="tumor2">B.是</label>
                            </p>
                            <table border="1" style="border-bottom: 1px solid #ccc;text-align: center">
                                <tr><th>亲属关系</th><th>肿瘤名称</th><th>人数</th></tr>
                                <tr>
                                    <td><input type="text"></td>
                                    <td><input type="text" style="width: 100%"></td>
                                    <td><input type="number" style="width: 100%;"></td>
                                </tr>
                                <tr>
                                    <td><input type="text"></td>
                                    <td><input type="text" style="width: 100%"></td>
                                    <td><input type="number" style="width: 100%;"></td>
                                </tr>
                                <tr>
                                    <td><input type="text"></td>
                                    <td><input type="text" style="width: 100%"></td>
                                    <td><input type="number" style="width: 100%;"></td>
                                </tr>
                                <tr>
                                    <td><input type="text"></td>
                                    <td><input type="text" style="width: 100%"></td>
                                    <td><input type="number" style="width: 100%;"></td>
                                </tr>
                                <tr>
                                    <td>体格检查结果：</td>
                                    <td colspan="2"><input type="text" style="width: 100%;"></td>
                                </tr>

                            </table>
                            <table border="1" width="100%" style="text-align: center">
                                <tr>
                                    <th>身高（Cm）</th>
                                    <th>体重（Kg）</th>
                                    <th>脉搏(次/分)</th>
                                    <th>血压</th>
                                </tr>
                                <tr>
                                    <td style="width: 24%"><input type="text" style="width: 100%"></td>
                                    <td style="width: 24%"><input type="text" style="width: 100%"></td>
                                    <td style="width: 24%"><input type="text" style="width: 100%"></td>
                                    <td style="width: 24%"><input type="text" style="width: 100%"></td>
                                </tr>

                            </table>
                        </div>

                    </div>
                    <div class="news_list">
                        <div id="foot">
                            <div style="width: 90%;margin: auto">
                                <h3>调查表说明</h3>
                                <div>1.姓名：要求统一使用身份证上姓名。身份证号填写18位或者15位。</div>
                                <div>
                                    <p>2.人口及收入：</p>
                                    首先询问调查对象现在家里有几口人，填写在相应空格内。每一空格填写一个数字，人口不足10人的，第一个空格用“0”补齐；然后询问全家年收入，填写在相应空格内，每一空格填写一个数字。
                                    <p>填写示例如下：</p>
                                    <p style="display: flex;line-height: 30px">
                                        <input type="number" style="width: 20%">
                                        <label>/人</label>
                                        <input type="text" style="width: 40%">
                                        <label>/元年</label>
                                    </p>
                                </div>
                                <div>
                                    3.吸烟：吸烟指每天至少吸1支，连续达半年或以上。现在吸烟，包括戒烟小于6个月；以前吸烟，包括戒烟至少6个月。
                                </div>
                                <div>4.饮茶情况：首先询问研究对象是否饮茶，其次询问饮什么类型的茶（花茶、绿茶、红茶），然后根据实际情况完成问题。</div>
                                <div>5.饮食习惯：所列食物，逐个一一调查。首先询问过去5年内是否食用该食物，然后询问食用次数。</div>
                                <div>
                                    <p>6.家族史：</p>
                                    <p>家中有无肿瘤患者:</p>
                                    <p>
                                        <input type="radio" name="tof">
                                        <label>A.否</label>
                                        <input type="radio" name="tof">
                                        <label>B.有</label>
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="li_list">
                    <%--早期预防问卷--%>
                    <div id="early">
                        <h3>第一部分(癌症综合知识)</h3>
                        <div>
                            <p>1.1您知道我国常见的癌症有哪些?(可多选)</p>
                            <p>
                                <input id='check-1' type="checkbox" name='check-1' checked='checked' />
                                <label for="check-1">A.肺癌,  肝癌,  胃癌,  食管癌 </label>
                            </p>
                            <p>
                                <input id='check-2' type="checkbox" name='check-1' />
                                <label for="check-2">B.结、直肠癌</label>
                            </p>
                            <p>
                                <input id="check-3" type="checkbox" name="check-1">
                                <label for="check-3">C.乳腺癌、宫颈癌</label>
                            </p>
                            <p>
                                <input id="check-4" type="checkbox" name="check-1">
                                <label for="check-4">D.乳腺癌、宫颈癌</label>
                            </p>
                        </div>
                        <div>
                            <p>1.2 70年代以来我国患癌症的人数</p>
                            <p>
                                <input id='year1' type="radio" name='check-1' />
                                <label for="year1">A.越来越多 </label>
                            </p>
                            <p>
                                <input id='year2' type="radio" name='check-1' />
                                <label for="year2">B.越来越少</label>
                            </p>
                            <p>
                                <input id="year3" type="radio" name="check-1">
                                <label for="year3">C.没有多大变化</label>
                            </p>
                            <p>
                                <input id="year4" type="radio" name="check-1">
                                <label for="year4">D.不太了解</label>
                            </p>
                        </div>
                        <div>
                            <p>1.3 您知道我国癌症的主要危险因素有哪些?(可多选)</p>
                            <p>
                                <input id="konw1" type="checkbox" name='konw1' />
                                <label for="konw1">A.吸烟, 饮酒 </label>
                            </p>
                            <p>
                                <input id="konw2" type="checkbox" name='konw2' />
                                <label for="konw2">B.各种感染因素</label>
                            </p>
                            <p>
                                <input id="konw3" type="checkbox" name="konw3">
                                <label for="konw3">C.不合理的饮食习惯</label>
                            </p>
                            <p>
                                <input id="konw4" type="checkbox" name="konw4">
                                <label for="konw4">D.职业危害</label>
                            </p>
                        </div>
                        <div>
                            <p>1.4 下列哪些预防措施可以减少癌症的发生?(可多选)</p>
                            <p>
                                <input id="word1" type="checkbox" name='word1' />
                                <label for="word1">A.戒烟, 少饮酒 </label>
                            </p>
                            <p>
                                <input id="word2" type="checkbox" name='word2' />
                                <label for="word2">B.乙肝疫苗的接种</label>
                            </p>
                            <p>
                                <input id="word3" type="checkbox" name="word3">
                                <label for="word3">C.合理膳食和适当的锻炼</label>
                            </p>
                            <p>
                                <input id="word4" type="checkbox" name="word4">
                                <label for="word4">D.消除职业危害</label>
                            </p>
                        </div>
                        <div>
                            <div>1.5 相当一部分癌症有警示症状，只要保持警惕，及时就诊，就可以早期发现，您认为下列哪些症状应该及时去医院检查？（可多选）</div>

                            <p>
                                <input id="keep1" type="checkbox" name='keep1' />
                                <label for="keep1">A.肿块， 疼痛 </label>
                            </p>
                            <p>
                                <input id="keep2" type="checkbox" name='keep2' />
                                <label for="keep2">B.不明原因的出血</label>
                            </p>
                            <p>
                                <input id="keep3" type="checkbox" name="keep3">
                                <label for="keep3">C.不明原因的上腹不适</label>
                            </p>
                            <p>
                                <input id="keep4" type="checkbox" name="keep4">
                                <label for="keep4">D.大便习惯改变或功能障碍</label>
                            </p>
                            <p>
                                <label>其他（请注明）</label>
                                <input>
                            </p>
                        </div>
                        <div>
                            <p>1.6 您知道“有效的预防措施至少可以减少1/3的癌症”吗？</p>
                            <p>
                                <input id="less1" type="radio" name='less' />
                                <label for="less1">A.不知道 </label>
                            </p>
                            <p>
                                <input id="less2" type="radio" name='less' />
                                <label for="less2">B.听了宣传后才知道</label>
                            </p>
                            <p>
                                <input id="less3" type="radio" name="less">
                                <label for="less3">C.本来就知道</label>
                            </p>
                        </div>
                        <div>
                            <p>1.7 您知道“早期发现、早期诊断、早期治疗可根治1/3的癌症”吗？</p>
                            <p>
                                <input id="effective1" type="radio" name='effective1' />
                                <label for="effective1">A.不知道 </label>
                            </p>
                            <p>
                                <input id="effective2" type="radio" name='effective2' />
                                <label for="effective2">B.听了宣传后才知道</label>
                            </p>
                            <p>
                                <input id="effective3" type="radio" name="effective3">
                                <label for="effective3">C.本来就知道</label>
                            </p>
                        </div>
                        <h3>第二部分（大肠癌防治知识）</h3>
                        <div>
                            <p>2.1 您认为大肠癌能治好吗？</p>
                            <p>
                                <input id="good1" type="radio" name='good' />
                                <label for="good1">A.不能  </label>
                            </p>
                            <p>
                                <input id="good2" type="radio" name='good' />
                                <label for="good2">B.不太了解</label>
                            </p>
                            <p>
                                <input id="good3" type="radio" name="good">
                                <label for="good3">C.能</label>
                            </p>
                            <p>
                                <input id="good4" type="radio" name="good">
                                <label for="good4">C.早期能治好</label>
                            </p>
                        </div>
                        <div>
                            <p>2.2 您知道大肠癌的早期阶段吗?</p>
                            <p>
                                <input id="stage1" type="radio" name='stage' />
                                <label for="stage1">A.不能  </label>
                            </p>
                            <p>
                                <input id="stage2" type="radio" name='stage' />
                                <label for="stage2">B.听了宣传后才知道</label>
                            </p>
                            <p>
                                <input id="stage3" type="radio" name="stage">
                                <label for="stage3">C.本来我就知道</label>
                            </p>
                        </div>
                        <div>
                            <p>2.3 您知道早期大肠癌治疗后应能活多少年?</p>
                            <p>
                                <input id="should1" type="radio" name='should' />
                                <label for="should1">A.一年左右  </label>
                            </p>
                            <p>
                                <input id="should2" type="radio" name='should' />
                                <label for="should2">B.五年左右</label>
                            </p>
                            <p>
                                <input id="should3" type="radio" name="should">
                                <label for="should3">C.大于十年</label>
                            </p>
                        </div>
                        <div>
                            <p>2.4 下列哪些方法可以早期发现大肠癌? (可多选)</p>
                            <p>
                                <input id="find1" type="checkbox" name='find1' />
                                <label for="find1">A.大便化验 </label>
                            </p>
                            <p>
                                <input id="find2" type="checkbox" name='find2' />
                                <label for="find2">B.X-线检查</label>
                            </p>
                            <p>
                                <input id="find3" type="checkbox" name="find3">
                                <label for="find3">C.肠镜检查</label>
                            </p>
                            <p>
                                <input id="find4" type="checkbox" name="find4">
                                <label for="find4">D.其他方法</label>
                            </p>
                        </div>
                        <div>
                            <p>2.5 您认为不参加普查的主要是因为?(可多选)</p>
                            <p>
                                <input id="join1" type="checkbox" name='join1' />
                                <label for="join1">A.不知道检查的好处 </label>
                            </p>
                            <p>
                                <input id="join2" type="checkbox" name='join2' />
                                <label for="find2">B.做肠镜难受</label>
                            </p>
                            <p>
                                <input id="join3" type="checkbox" name="join3">
                                <label for="find3">C.查出后有心理负担</label>
                            </p>
                            <p>
                                <input id="join4" type="checkbox" name="join4">
                                <label for="join4">D.查出大肠癌治疗不好</label>
                            </p>
                            <p>
                                <input id="join5" type="checkbox" name="join5">
                                <label for="join5">E.没有症状，所以不愿检查</label>
                            </p>
                            <p>
                                <input id="join6" type="checkbox" name="join6">
                                <label for="join6">F.害怕上当受骗</label>
                            </p>
                            <p>
                                <input id="join7" type="checkbox" name="join7">
                                <label for="join7">G.工作忙，没时间</label>
                            </p>
                        </div>
                        <div>
                            <p>2.6 下列哪些方法可以治疗早期大肠癌?(可多选)</p>
                            <p>
                                <input id="can1" type="checkbox" name='can1' />
                                <label for="can1">A.手术治疗 </label>
                            </p>
                            <p>
                                <input id="can2" type="checkbox" name='can2' />
                                <label for="can2">B.不开刀肠镜直视下切除治疗</label>
                            </p>
                            <p>
                                <input id="can3" type="checkbox" name="can3">
                                <label for="can3">C.放射治疗 (照光)</label>
                            </p>
                            <p>
                                <input id="can4" type="checkbox" name="can4">
                                <label for="can4">D.其他</label>
                            </p>
                        </div>
                        <div>
                            <p>2.7 合理饮食、粗细粮搭配等能预防大肠癌吗?</p>
                            <p>
                                <input id="sure1" type="radio" name='sure' />
                                <label for="sure1">A.能  </label>
                            </p>
                            <p>
                                <input id="sure2" type="radio" name='sure' />
                                <label for="sure2">B.不能</label>
                            </p>
                        </div>
                        <div>
                            <p>2.8 经常吃新鲜水果、蔬菜、含粗纤维食物能预防大肠癌吗？</p>
                            <p>
                                <input id="fruit1" type="radio" name='fruit' />
                                <label for="fruit1">A.能  </label>
                            </p>
                            <p>
                                <input id="fruit2" type="radio" name='fruit' />
                                <label for="fruit2">B.不能</label>
                            </p>
                        </div>
                        <div>
                            <p>2.9 养成良好的大便习惯，能预防大肠癌吗?</p>
                            <p>
                                <input id="better1" type="radio" name='better' />
                                <label for="better1">A.能  </label>
                            </p>
                            <p>
                                <input id="better2" type="radio" name='better' />
                                <label for="better2">B.不能</label>
                            </p>
                        </div>
                        <div>
                            <p>2.10 经常饮用不洁水容易得大肠癌吗?</p>
                            <p>
                                <input id="water1" type="radio" name='water' />
                                <label for="better1">A.能  </label>
                            </p>
                            <p>
                                <input id="water2" type="radio" name='water' />
                                <label for="better2">B.不能</label>
                            </p>
                        </div>
                        <div>
                            <p>2.11 您认为大便带血或腹泻、便秘交替您会到医院去就诊吗?</p>
                            <p>
                                <input id="blood1" type="radio" name='blood' />
                                <label for="blood1">A.会  </label>
                            </p>
                            <p>
                                <input id="blood2" type="radio" name='blood' />
                                <label for="blood2">B.不会</label>
                            </p>
                        </div>
                        <div>
                            <p>2.12 您知道家属中有大肠腺瘤病（息肉）或大肠癌的人应积极参加普查吗?</p>
                            <p>
                                <input id="family1" type="radio" name='family' />
                                <label for="family1">A.知道  </label>
                            </p>
                            <p>
                                <input id="family2" type="radio" name='family' />
                                <label for="family2">B.不知道</label>
                            </p>
                        </div>


                    </div>
                    <div class="news_list">
                        <div id="foot">
                            <div style="width: 90%;margin: auto">
                                <h3>调查表说明</h3>
                                <div>1.姓名：要求统一使用身份证上姓名。身份证号填写18位或者15位。</div>
                                <div>
                                    <p>2.人口及收入：</p>
                                    首先询问调查对象现在家里有几口人，填写在相应空格内。每一空格填写一个数字，人口不足10人的，第一个空格用“0”补齐；然后询问全家年收入，填写在相应空格内，每一空格填写一个数字。
                                    <p>填写示例如下：</p>
                                    <p style="display: flex;line-height: 30px">
                                        <input type="number" style="width: 20%">
                                        <label>/人</label>
                                        <input type="text" style="width: 40%">
                                        <label>/元年</label>
                                    </p>
                                </div>
                                <div>
                                    3.吸烟：吸烟指每天至少吸1支，连续达半年或以上。现在吸烟，包括戒烟小于6个月；以前吸烟，包括戒烟至少6个月。
                                </div>
                                <div>4.饮茶情况：首先询问研究对象是否饮茶，其次询问饮什么类型的茶（花茶、绿茶、红茶），然后根据实际情况完成问题。</div>
                                <div>5.饮食习惯：所列食物，逐个一一调查。首先询问过去5年内是否食用该食物，然后询问食用次数。</div>
                                <div>
                                    <p>6.家族史：</p>
                                    <p>家中有无肿瘤患者:</p>
                                    <p>
                                        <input type="radio" name="tof">
                                        <label>A.否</label>
                                        <input type="radio" name="tof">
                                        <label>B.有</label>
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>

    </div>

</div>
<script type="text/javascript">
    var index = 0;

    //改变图片
    function ChangeImg() {
        index++;
        var a = document.getElementsByClassName("img-slide");
        if (index >= a.length) index = 0;
        for (var i = 0; i < a.length; i++) {
            a[i].style.display = 'none';
        }
        a[index].style.display = 'block';
    }

    //设置定时器，每隔两秒切换一张图片
    setInterval(ChangeImg, 3000);
</script>

<script>
    $(function () {
        $(".form-code").onkeyup(this.value.replace(/[^\d|chun]/g, ''));
    })
</script>

<script>
    $(function () {
        $(".image1").click(function () {
            //1.当点击的时候，变成有颜色的
            $(this).attr("src", "static/images/ques/dachang-1-back.png")
            //2，其它的图片变成灰色
            $(".image3").attr("src", "static/images/ques/dachang-3-front.png")
            $(".image2").attr("src", "static/images/ques/dachang-2-front.png")
        });
        $(".image2").click(function () {
            //1.当点击的时候，变成有颜色的
            $(this).attr("src", "static/images/ques/dachang-2-back.png")
            //2，其它的图片变成灰色
            $(".image1").attr("src", "static/images/ques/dachang-1-front.png")
            $(".image3").attr("src", "static/images/ques/dachang-3-front.png")
        });
        $(".image3").click(function () {
            //1.当点击的时候，变成有颜色的
            $(this).attr("src", "static/images/ques/dachang-3-back.png")
            //2，其它的图片变成灰色
            $(".image1").attr("src", "static/images/ques/dachang-1-front.png")
            $(".image2").attr("src", "static/images/ques/dachang-2-front.png")
        });
    });
</script>
<script type="text/javascript">
    for (n = 1; n < 3; n++) {
        var page = 'pagenavi' + n;
        var mslide = 'slider' + n;
        var mtitle = 'emtitle' + n;

        arrdiv = 'arrdiv' + n;

        var as = document.getElementById(page).getElementsByTagName('a');

        var tt = new TouchSlider({
            id: mslide,
            'auto': '-1',
            fx: 'ease-out',
            direction: 'left',
            speed: 600,
            timeout: 5000,
            'before': function (index) {

                var as = document.getElementById(this.page).getElementsByTagName('a');

                as[this.p].className = '';

                as[index].className = 'active';

                this.p = index;

                var txt = as[index].innerText;

                $("#" + this.page).parent().find('.emtitle').text(txt);

                var txturl = as[index].getAttribute('href');

                var turl = txturl.split('#');

                $("#" + this.page).parent().find('.go_btn').attr('href', turl[1]);

            }
        });

        tt.page = page;

        tt.p = 0;

        //console.dir(tt); console.dir(tt.__proto__);

        for (var i = 0; i < as.length; i++) {

            (function () {
                var j = i;
                as[j].tt = tt;

                as[j].onclick = function () {

                    this.tt.slide(j);

                    return false;

                }

            })();

        }

    }

</script>
</body>
</html>
