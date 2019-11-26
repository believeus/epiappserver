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
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no">
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

    <div style="background-color: #f3f3ff;">
        <div class="center">
            <div class="code">
                <div class="form-num">编号2020 - ABCP -</div>
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
    <div id="personal-info">
        <div id="personal-info-detail">
            <div style="height: 12px"></div>
            <ul class="info">
                <script>
                    $(function () {
                        //监听input鼠标离开事件
                        $("input[type=text]").blur(function () {
                            //获取input输入的值$(this).val(),赋值个input标签的value属性
                            $(this).attr("value", $(this).val())
                        })
                        $("textarea").blur(function () {
                            //获取input输入的值$(this).val(),赋值个input标签的value属性
                            $(this).text($(this).val())
                        })
                        $("tr>td>input").blur(function () {
                            //获取表格中的值
                            $(this).attr("value", $(this).val())
                        })
                        $("input[type=radio]").change(function () {
                            $(this).siblings().removeAttr("checked")
                            $(this).attr("checked", "checked")
                        })
                        $("input[type=checkbox]").change(function () {
                            //如果原来的属性是checked,那么移除checked
                            //console.info(typeof $(this).is(":checked")+":"+$(this).is(":checked"))
                            $(this).attr("checked", $(this).is(":checked") ? true : false)


                        })

                    })

                </script>
                <li>调查对象姓名: <input type="text" name="nickname" value=""></li>
                <hr>
                <li>性别: <input type="text" name="sex" value="">
                </li>
                <hr>
                <li>年龄: <input type="number" name="age"
                               onkeyup="this.value=this.value.replace(/\D/g,'')"></li>
                <hr>
                <li style="height:56px;"><span style="height: 67px">住址:</span> <textarea id="address" cols="2"
                                                                                         rows="3"></textarea>
                </li>
                <hr>
                <li>家庭电话: <input type="text" name="mobile"
                                 onkeyup="this.value=this.value.replace(/\D/g,'')"></li>
                <hr>
                <li>身份证号码: <input type="text" name="id"
                                  onkeyup="value=value.replace(/[^\d|chun]/g,'')"></li>
                <hr>
                <li>手机号码: <input type="number" name="phone"
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
                    <div id="first">
                        <div style="height: 12px;background-color: #efefef"></div>

                        <h2>说明：请选择相应的栏目或填写内容</h2>
                        <hr>
                        <div class="ninty">
                            <div>
                                <h3>一、本人有无慢性腹泻史</h3>
                                <input name="fuxie" type="radio" value="yes">有
                                <input name="fuxie" type="radio" value="no">无
                                <hr>
                            </div>
                            <div>
                                <h3>二、本人有无慢性便秘史</h3>
                                <input name="bianmi" type="radio" value="yes">有
                                <input name="bianmi" type="radio" value="no">无
                                <hr>
                            </div>
                            <div>
                                <h3>三、本人有无粘液和(或)血便史</h3>
                                <input name="xuebian" type="radio" value="yes">有
                                <input name="xuebian" type="radio" value="no">无
                                <hr>
                            </div>
                            <div>
                                <h3>四、本人有无慢性阑尾炎或阑尾切除史</h3>
                                <input name="nanwei" type="radio" value="yes">有
                                <input name="nanwei" type="radio" value="no">无
                                <hr>
                            </div>
                            <div>
                                <h3>五、本人有无慢性胆囊炎或胆囊切除史</h3>
                                <input name="dannanwei" type="radio" value="yes">有
                                <input name="dannanwei" type="radio" value="no">无
                                <hr>
                            </div>
                            <div>
                                <h3>六、近二十年来本人有无不良生活事件史</h3>
                                <input name="abuslife" type="radio" value="yes">有
                                <input name="abuslife" type="radio" value="no">无
                            </div>
                            <div>
                                <h3>如有, 请选择</h3>
                                <input name="have-abuslife" type="radio" value="devoiced">离婚
                                <input name="have-abuslife" type="radio" value="widow">配偶死亡
                                <input name="have-abuslife" type="radio" value="fam-meb-dead">一级亲属死亡
                                <input name="have-abuslife" type="radio" value="child-offduty">子女下岗
                                <input name="have-abuslife" type="radio" value="others">其它
                                <hr>
                            </div>
                            <div>
                                <h3>七、本人有无癌症史</h3>
                                <input name="abuslife" type="radio" value="yes">有
                                <input name="abuslife" type="radio" value="no">无
                            </div>
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
                            <div>
                                <h3>八、本人有无肠息肉史</h3>
                                <input name="changxirou" type="radio" value="yes">有
                                <input name="changxirou" type="radio" value="no">无
                                <hr>
                            </div>
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
                        <div style="height: 23px;"></div>
                        <div class="submit"
                             style="width: 80%;height: 28px;margin: 0 auto; background-color: #ea4f49;margin: 18px">
                            <button type="button" value="提交" onclick="submit()"
                                    style="color: #ffffff;font-size: 16px; width: 100%;height: 28px;background-color: #ea4f49"/>
                            提交
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
                    <div id="second">
                        <div style="height: 12px;background-color: #efefef"></div>

                        <h2>说明：请选择相应的栏目或填写内容</h2>
                        <hr>
                        <div>
                            <h3>1 您家有几口人?</h3>
                            <input type="radio" name='people' value="one-people"/>
                            <label>A.1人 </label>
                            <input type="radio" name='people' value="two-people"/>
                            <label>B.2人</label>
                            <input type="radio" name="people" value="three-people">
                            <label>C.3人</label>
                            <input type="radio" name="people" value="four-people">
                            <label>D.4人</label>
                        </div>
                        <hr>
                        <div>
                            <h3>2 您的饮用水主要来源于:</h3>
                            <input type="radio" name='your' value="pour-water"/>
                            <label>A.池塘水 </label>
                            <input type="radio" name='your' value="cold-water"/>
                            <label>B.浜水</label>
                            <input type="radio" name="your" value="river-water">
                            <label>C.河水</label>
                            <input type="radio" name="your" value="hole-water">
                            <label>D.井水</label>
                            <input type="radio" name="your" value="run-water">
                            <label>E.自来水</label>
                        </div>
                        <hr>
                        <div style="width: 100%">
                            <h3>3 状况吸烟:</h3>
                            <div>
                                <input type="radio" name='Smoking' value="yes"/>
                                <label>A.否 </label>
                                <input type="radio" name='Smoking' value="no"/>
                                <label>B.是</label>
                            </div>
                            <hr>
                            <h3>3.1 如果吸烟，共吸多少年:</h3>
                            <div>
                                <input type="radio" name='yan' value="smoke-one-five"/>
                                <label>A.0-5年 </label>
                                <input type="radio" name='yan' value="smoke-six-ten"/>
                                <label>B.6-10</label>
                                <input type="radio" name='yan' value="smoke-eleven-fifteen"/>
                                <label>C.11-15年 </label>
                                <input type="radio" name='yan' value="smoke-sixteen-twenty"/>
                                <label>D.16-20年</label>
                                <input type="radio" name='yan' value="smoke-twentyone-twentyfive"/>
                                <label>E.21-25年 </label>
                                <input type="radio" name='yan' value="smoke-more-twentyfive"/>
                                <label>F.25年以上</label>
                            </div>
                            <p>每五年一个阶段</p>
                            <hr>
                            <h3>3.2 如已戒烟，共戒烟多少年:</h3>
                            <div>
                                <input type="radio" name='quit-smoke' value="quitsmoke-one-five"/>
                                <label>A.0-5年 </label>
                                <input type="radio" name='quit-smoke' value="quitsmoke-six-ten"/>
                                <label>B.6-10</label>
                                <input type="radio" name='quit-smoke' value="quitsmoke-eleven-fifteen"/>
                                <label>C.11-15年 </label>
                                <input type="radio" name='quit-smoke' value="quitsmoke-sixteen-twenty"/>
                                <label>D.16-20年</label>
                                <input type="radio" name='quit-smoke' value="quitsmoke-twentyone-twentyfive"/>
                                <label>E.21-25年 </label>
                                <input type="radio" name='quit-smoke' value="quitsmoke-more-twentyfive"/>
                                <label>F.25年以上</label>
                            </div>

                        </div>
                        <hr>
                        <div>
                            <h3>4 饮酒情况:</h3>
                            <div>
                                <input type="radio" name='beer' value="yes"/>
                                <label>A.是 </label>
                                <input type="radio" name='beer' value="no"/>
                                <label>B.否</label>
                            </div>
                            <div style="height: 12px;width: 100%"></div>
                            <div>
                                <h3> 什么酒呢？</h3>
                                <input type="checkbox" name='beer' value="beer"/>
                                <label>A.啤酒 </label>
                                <input type="checkbox" name='white' value="white"/>
                                <label>B.白酒</label>
                                <input type="checkbox" name='red' value="red"/>
                                <label>C.红酒 </label>
                                <input type="checkbox" name='yellow' value="yellow"/>
                                <label>D.黄酒</label>
                                <input type="checkbox" name='rice' value="rice"/>
                                <label>E.米酒</label>
                            </div>
                            <div style="height: 12px;width: 100%"></div>
                            <div>
                                <h3>如果是，共饮多少年？</h3>
                                <input type="radio" name='wine' value="dring-one-five"/>
                                <label>A.0-5年 </label>
                                <input type="radio" name='wine' value="dring-six-ten"/>
                                <label>B.6-10</label>
                                <input type="radio" name='wine' value="dring-eleven-fifteen"/>
                                <label>C.11-15年 </label>
                                <input type="radio" name='wine' value="dring-sixteen-twenty"/>
                                <label>D.16-20年</label>
                                <input type="radio" name='wine' value="dring-twentyone-twentyfive"/>
                                <label>E.21-25年 </label>
                                <input type="radio" name='wine' value="dring-more-twentyfive"/>
                                <label>F.25年以上</label>
                            </div>
                        </div>
                        <hr>
                        <div>
                            <h3>5 饮茶情况:</h3>
                            <div>
                                <input type="radio" name='tea' value="tea-yes"/>
                                <label>A.是 </label>
                                <input type="radio" name='tea' value="tea-no"/>
                                <label>B.否</label>
                            </div>
                            <div style="height: 12px;width: 100%"></div>
                            <h3> 什么茶呢？</h3>
                            <div>

                                <input type="checkbox" name='greentea'value="greentea"/>
                                <label>A.绿茶 </label>
                                <input type="checkbox" name='blacktea'value="blacktea"/>
                                <label>B.红茶</label>
                                <input type="checkbox" name='flowertea'value="flowertea"/>
                                <label>C.花茶 </label>
                                <input type="checkbox" name='othertea'value="othertea"/>
                                <label>D.其他</label>
                            </div>
                            <div style="height: 12px;width: 100%"></div>
                            <div>
                                <h3>如果是，共饮多少年？</h3>
                                <input type="radio" name='tea-drink-year'value="tea-one-five"/>
                                <label >A.0-5年 </label>
                                <input  type="radio" name='tea-drink-year'value="tea-six-ten"/>
                                <label >B.6-10</label>
                                <input type="radio" name='tea-drink-year'value="tea-eleven-fifteen"/>
                                <label >C.11-15年 </label>
                                <input  type="radio" name='tea-drink-year'value="tea-sixteen-twenty"/>
                                <label >D.16-20年</label>
                                <input  type="radio" name='tea-drink-year'value="tea-twentyone-twentyfive"/>
                                <label >E.21-25年 </label>
                                <input  type="radio" name='tea-drink-year'value="tea-more-twentyfive"/>
                                <label >F.25年以上</label>
                            </div>
                            <hr>
                        </div>

                        <div>
                            <h3>6.饮食习惯（指近5年）</h3>
                            <table border="1" width="100%" style="text-align: center;">
                                <tr>
                                    <th>食物名称</th>
                                    <th>1次/周</th>
                                    <th>2-3次/周</th>
                                    <th>4-5次/周</th>
                                    <th>6-7次/周</th>
                                </tr>
                                <hr>
                                <tr>
                                    <td style="width: 20%">新鲜蔬菜</td>
                                    <td style="width: 19.5%"><input type="number"></td>
                                    <td style="width: 19.5%"><input type="number"></td>
                                    <td style="width: 19.5%"><input type="number"></td>
                                    <td style="width: 19.5%"><input type="number"></td>
                                </tr>
                                <tr>
                                    <td style="width: 19.5%">新鲜水果</td>
                                    <td style="width: 19.5%"><input type="number"></td>
                                    <td style="width: 19.5%"><input type="number"></td>
                                    <td style="width: 19.5%"><input type="number"></td>
                                    <td style="width: 19.5%"><input type="number"></td>
                                </tr>
                                <tr>
                                    <td style="width: 20%">肉蛋奶类</td>
                                    <td style="width: 20%"><input type="number"></td>
                                    <td style="width: 20%"><input type="number"></td>
                                    <td style="width: 20%"><input type="number"></td>
                                    <td style="width: 20%"><input type="number"></td>
                                </tr>
                                <tr>
                                    <td style="width: 20%">腌制食品</td>
                                    <td style="width: 20%"><input type="number"></td>
                                    <td style="width: 20%"><input type="number"></td>
                                    <td style="width: 20%"><input type="number"></td>
                                    <td style="width: 20%"><input type="number"></td>
                                </tr>
                                <tr>
                                    <td style="width: 20%">油炸熏制品</td>
                                    <td style="width: 20%"><input type="number"></td>
                                    <td style="width: 20%"><input type="number"></td>
                                    <td style="width: 20%"><input type="number"></td>
                                    <td style="width: 20%"><input type="number"></td>
                                </tr>
                            </table>
                        </div>
                        <hr>
                        <div>

                            <h3>7 肠道疾病史:</h3>
                            <div>
                                <input id='gut1' type="radio" name='gut'/>
                                <label for="gut1">A.否 </label>
                                <input id='gut2' type="radio" name='gut'/>
                                <label for="gut2">B.是</label>
                            </div>
                            <div style="height: 23px;width: 100%"></div>
                            <table border="1">
                                <tr>
                                    <th style="width: 20%;text-align: center">疾病名称</th>
                                    <th colspan="1" style="width: 20%;text-align: center">是/否</th>
                                    <th style="width: 40%">诊断时年龄</th>
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
                        <hr>
                        <div>
                            <h3>8 家族史（您家中有没有人得过肿瘤):</h3>
                            <div>
                                <input id='tumor1' type="radio" name='tumor'/>
                                <label for="tumor1">A.否 </label>
                                <input id='tumor2' type="radio" name='tumor'/>
                                <label for="tumor2">B.是</label>
                            </div>
                            <hr>
                            <table border="1">
                                <tr>
                                    <th>亲属关系</th>
                                    <th>肿瘤名称</th>
                                    <th>人数</th>
                                </tr>
                                <tr>
                                    <td><input type="text"></td>
                                    <td><input type="text"></td>
                                    <td><input type="number"></td>
                                </tr>
                                <tr>
                                    <td><input type="text"></td>
                                    <td><input type="text"></td>
                                    <td><input type="number"></td>
                                </tr>
                                <tr>
                                    <td><input type="text"></td>
                                    <td><input type="text"></td>
                                    <td><input type="number"></td>
                                </tr>
                                <tr>
                                    <td><input type="text"></td>
                                    <td><input type="text"></td>
                                    <td><input type="number"></td>
                                </tr>


                            </table>
                            <div style="width: 100%;height: 23px"></div>
                            <div>
                                <h3>体格检查结果：</h3>
                                <textarea id="body-exam" cols="2" rows="3" style="width: 100%;height: 34px"></textarea>
                            </div>
                            <table border="1" width="100%" style="text-align: center">
                                <tr>
                                    <th>身高（Cm）</th>
                                    <th>体重（Kg）</th>
                                    <th>脉搏(次/分)</th>
                                    <th>血压</th>
                                </tr>
                                <tr>
                                    <td style="width: 24%"><input type="text"></td>
                                    <td style="width: 24%"><input type="text"></td>
                                    <td style="width: 24%"><input type="text"></td>
                                    <td style="width: 24%"><input type="text"></td>
                                </tr>

                            </table>
                        </div>
                        <div style="height: 23px;"></div>
                        <div class="submit"
                             style="width: 80%;height: 28px;margin: 0 auto; background-color: #7a4ebb;margin: 18px">
                            <button type="button" value="提交" onclick="submit()"
                                    style="width: 100%;height: 28px;color: #ffffff;font-size: 16px; background-color: #7a4ebb"/>
                            提交
                        </div>
                        <div style="height: 23px;"></div>
                        <div class="foot">
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
                    <div id="third">
                        <%--早期预防问卷--%>
                        <div style="height: 12px;background-color: #efefef"></div>

                        <h2>说明：请选择相应的栏目或填写内容</h2>
                        <hr>
                        <div id="early">
                            <h3>第一部分(癌症综合知识)</h3>
                            <div>
                                <h3>1.1您知道我国常见的癌症有哪些?(可多选)</h3>
                                <div>
                                    <input type="checkbox" name='nor-cancer1'/>
                                    <label>A.肺癌, 肝癌, 胃癌, 食管癌 </label>
                                    <input type="checkbox" name='nor-cancer2'/>
                                    <label>B.结、直肠癌</label>
                                    <input type="checkbox" name="nor-cancer3">
                                    <label>C.乳腺癌、宫颈癌</label>
                                    <input type="checkbox" name="nor-cancer4">
                                    <label>D.乳腺癌、宫颈癌</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>1.2 70年代以来我国患癌症的人数</h3>
                                <div>
                                    <input type="radio" name='check-1'/>
                                    <label>A.越来越多 </label>
                                    <input type="radio" name='check-1'/>
                                    <label>B.越来越少</label>
                                    <input type="radio" name="check-1">
                                    <label>C.没有多大变化</label>
                                    <input type="radio" name="check-1">
                                    <label>D.不太了解</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>1.3 您知道我国癌症的主要危险因素有哪些?(可多选)</h3>
                                <div>
                                    <input type="checkbox" name='danger-factor1'/>
                                    <label>A.吸烟, 饮酒 </label>
                                    <input type="checkbox" name='danger-factor2'/>
                                    <label>B.各种感染因素</label>
                                    <input type="checkbox" name="danger-factor3">
                                    <label>C.不合理的饮食习惯</label>
                                    <input type="checkbox" name="danger-factor4">
                                    <label>D.职业危害</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>1.4 下列哪些预防措施可以减少癌症的发生?(可多选)</h3>
                                <div>
                                    <input type="checkbox" name='method-reduce1'/>
                                    <label>A.戒烟, 少饮酒 </label>
                                    <input type="checkbox" name='method-reduce2'/>
                                    <label>B.乙肝疫苗的接种</label>
                                    <input type="checkbox" name="method-reduce3">
                                    <label>C.合理膳食和适当的锻炼</label>
                                    <input type="checkbox" name="method-reduce4">
                                    <label>D.消除职业危害</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h4>1.5 相当一部分癌症有警示症状，只要保持警惕，及时就诊，就可以早期发现，您认为下列哪些症状应该及时去医院检查？（可多选）</h4>
                                <div>
                                    <input type="checkbox" name='goto-hospital1'/>
                                    <label>A.肿块， 疼痛 </label>
                                    <input type="checkbox" name='goto-hospital2'/>
                                    <label>B.不明原因的出血</label>
                                    <input type="checkbox" name="goto-hospital3">
                                    <label>C.不明原因的上腹不适</label>
                                    <input type="checkbox" name="goto-hospital4">
                                    <label>D.大便习惯改变或功能障碍</label>
                                </div>
                                <p>
                                    <label>其他（请注明）</label>
                                    <input>
                                </p>
                            </div>
                            <hr>
                            <div>
                                <h3>1.6 您知道“有效的预防措施至少可以减少1/3的癌症”吗？</h3>
                                <div>
                                    <input type="radio" name='less'/>
                                    <label>A.不知道 </label>
                                    <input type="radio" name='less'/>
                                    <label>B.听了宣传后才知道</label>
                                    <input type="radio" name="less">
                                    <label>C.本来就知道</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>1.7 您知道“早期发现、早期诊断、早期治疗可根治1/3的癌症”吗？</h3>
                                <div>
                                    <input type="radio" name='effective'/>
                                    <label>A.不知道 </label>
                                    <input type="radio" name='effective'/>
                                    <label>B.听了宣传后才知道</label>
                                    <input type="radio" name="effective">
                                    <label>C.本来就知道</label>
                                </div>
                            </div>
                            <hr>
                            <h2>第二部分（大肠癌防治知识）</h2>
                            <hr>
                            <div>
                                <h3>2.1 您认为大肠癌能治好吗？</h3>
                                <div>
                                    <input id="good1" type="radio" name='good'/>
                                    <label for="good1">A.不能 </label>
                                    <input id="good2" type="radio" name='good'/>
                                    <label for="good2">B.不太了解</label>
                                    <input id="good3" type="radio" name="good">
                                    <label for="good3">C.能</label>
                                    <input id="good4" type="radio" name="good">
                                    <label for="good4">D.早期能治好</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>2.2 您知道大肠癌的早期阶段吗?</h3>
                                <div>
                                    <input id="stage1" type="radio" name='stage'/>
                                    <label for="stage1">A.不能 </label>
                                    <input id="stage2" type="radio" name='stage'/>
                                    <label for="stage2">B.听了宣传后才知道</label>
                                    <input id="stage3" type="radio" name="stage">
                                    <label for="stage3">C.本来我就知道</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>2.3 您知道早期大肠癌治疗后应能活多少年?</h3>
                                <div>
                                    <input id="should1" type="radio" name='should'/>
                                    <label for="should1">A.一年左右 </label>
                                    <input id="should2" type="radio" name='should'/>
                                    <label for="should2">B.五年左右</label>
                                    <input id="should3" type="radio" name="should">
                                    <label for="should3">C.大于十年</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>2.4 下列哪些方法可以早期发现大肠癌? (可多选)</h3>
                                <div>
                                    <input type="checkbox" name='method-find-cancer1'/>
                                    <label>A.大便化验 </label>
                                    <input type="checkbox" name='method-find-cancer2'/>
                                    <label>B.X-线检查</label>
                                    <input type="checkbox" name="method-find-cancer3">
                                    <label>C.肠镜检查</label>
                                    <input type="checkbox" name="method-find-cancer4">
                                    <label>D.其他方法</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>2.5 您认为不参加普查的主要是因为?(可多选)</h3>
                                <div>
                                    <input type="checkbox" name='reson-not-att1'/>
                                    <label>A.不知道检查的好处 </label>
                                    <input type="checkbox" name='reson-not-att2'/>
                                    <label>B.做肠镜难受</label>
                                    <input type="checkbox" name="reson-not-att3">
                                    <label>C.查出后有心理负担</label>
                                    <input type="checkbox" name="reson-not-att4">
                                    <label>D.查出大肠癌治疗不好</label>
                                    <input type="checkbox" name="reson-not-att5">
                                    <label>E.没有症状，所以不愿检查</label>
                                    <input type="checkbox" name="reson-not-att6">
                                    <label>F.害怕上当受骗</label>
                                    <input type="checkbox" name="reson-not-att7">
                                    <label>G.工作忙，没时间</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>2.6 下列哪些方法可以治疗早期大肠癌?(可多选)</h3>
                                <div>
                                    <input type="checkbox" name='can-cure1'/>
                                    <label>A.手术治疗 </label>
                                    <input type="checkbox" name='can-cure2'/>
                                    <label>B.不开刀肠镜直视下切除治疗</label>
                                    <input type="checkbox" name="can-cure3">
                                    <label>C.放射治疗 (照光)</label>
                                    <input type="checkbox" name="can-cure4">
                                    <label>D.其他</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>2.7 合理饮食、粗细粮搭配等能预防大肠癌吗?</h3>
                                <div>
                                    <input id="sure1" type="radio" name='sure'/>
                                    <label for="sure1">A.能 </label>
                                    <input id="sure2" type="radio" name='sure'/>
                                    <label for="sure2">B.不能</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>2.8 经常吃新鲜水果、蔬菜、含粗纤维食物能预防大肠癌吗？</h3>
                                <div>
                                    <input id="fruit1" type="radio" name='fruit'/>
                                    <label for="fruit1">A.能 </label>
                                    <input id="fruit2" type="radio" name='fruit'/>
                                    <label for="fruit2">B.不能</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>2.9 养成良好的大便习惯，能预防大肠癌吗?</h3>
                                <div>
                                    <input id="better1" type="radio" name='better'/>
                                    <label for="better1">A.能 </label>
                                    <input id="better2" type="radio" name='better'/>
                                    <label for="better2">B.不能</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>2.10 经常饮用不洁水容易得大肠癌吗?</h3>
                                <div>
                                    <input id="water1" type="radio" name='water'/>
                                    <label for="better1">A.能 </label>
                                    <input id="water2" type="radio" name='water'/>
                                    <label for="better2">B.不能</label>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <h3>2.11 您认为大便带血或腹泻、便秘交替您会到医院去就诊吗?</h3>
                                <div>
                                    <input id="blood1" type="radio" name='blood'/>
                                    <label for="blood1">A.会 </label>
                                    <input id="blood2" type="radio" name='blood'/>
                                    <label for="blood2">B.不会</label>
                                </div>
                            </div>
                            <div>
                                <p>2.12 您知道家属中有大肠腺瘤病（息肉）或大肠癌的人应积极参加普查吗?</p>
                                <div>
                                    <input id="family1" type="radio" name='family'/>
                                    <label for="family1">A.知道 </label>
                                    <input id="family2" type="radio" name='family'/>
                                    <label for="family2">B.不知道</label>
                                </div>
                            </div>

                        </div>
                        <div style="height: 23px;"></div>
                        <div class="submit"
                             style="width: 80%;height: 28px;margin: 0 auto; background-color: #048f8a;margin: 18px">
                            <button type="button" value="提交" onclick="submit()"
                                    style="color: #ffffff;font-size:16px; width: 100%;height: 28px;background-color: #048f8a"/>
                            提交
                        </div>
                        <div style="height: 23px;width: 100%"></div>
                        <div class="foot">

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
<script>
    /*$(function () {
        $("button").onclick(alert('您的信息已提交成功'))
    })*/
    var submit = function () {
        var html = "<html>" + $("html").html() + "</html>";
        console.info(html)
        // onclick(alert('您的信息已提交成功'))
    }
</script>
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
