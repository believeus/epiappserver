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
                <li>调查对象姓名: <input style=" border:none;text-align: center;outline: none" type="text" name="name"
                                   value=""></li>
                <hr>
                <li>性别: <input style=" border:none;text-align: center;outline: none" type="text" name="sex" value="">
                </li>
                <hr>
                <li>年龄: <input style=" border:none;text-align: center;outline: none" type="text" name="age"
                               onkeyup="this.value=this.value.replace(/\D/g,'')"></li>
                <hr>
                <li style="height:77px;"><span style="height: 67px">住址:</span> <textarea id="address" cols="2" rows="1"
                                                                                         style="height: 67px;width:80%;border: none"></textarea>
                </li>
                <hr>
                <li>家庭电话: <input style=" border:none;text-align: center;outline: none" type="text" name="mobile"
                                 onkeyup="this.value=this.value.replace(/\D/g,'')"></li>
                <hr>
                <li>身份证号码: <input style=" border:none;text-align: center;outline: none" type="text" name="id"
                                  onkeyup="value=value.replace(/[^\d|chun]/g,'')"></li>
                <hr>
                <li>手机号码: <input style=" border:none;text-align: center;outline: none" type="text" name="phone"
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
                <input name="education" type="radio" value="married">文盲
                <input name="education" type="radio" value="single">小学　
                <input name="education" type="radio" value="devoiced">中专、中学
                <input name="education" type="radio" value="widow">大学、大专
                <input name="education" type="radio" value="widow">研究生
                <input name="education" type="radio" value="widow">硕士及以上
            </div>
            <hr>
            <div class="ninty">
                <h3>职　 　业</h3>
                <input name="profession" type="radio" value="married">农民
                <input name="profession" type="radio" value="single">工人
                <input name="profession" type="radio" value="devoiced">个体户
                <input name="profession" type="radio" value="widow">各类专业技术人员
                <input name="profession" type="radio" value="devoiced">其它
            </div>
            <hr>
        </div>
    </div>
    <div class="dark"></div>
    <div class="box-163css">
        <div class="dark"></div>
        <ul id="pagenavi1" class="page">
            <li>
                <a href="#js011.html" class="active">
                    <img class="image1" src="static/images/ques/dachang-1-front.png">
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
                    <div class="pic_list"><span><a href="#">赵本山那英曾联袂演台剧兄妹</a></span></div>
                    <div class="news_list">
                        <p><span class="s_arrow"></span><a href="#">外交部新任女发言人被赞漂亮</a></p>
                    </div>
                </li>
                <li class="li_list">
                    <div class="pic_list"><span><a href="#">赵本山那英曾联袂演台剧兄妹</a></span></div>
                    <div class="news_list">
                        <p><span class="s_arrow"></span><a href="#">组图:跟拍情侣间的"私密"生活</a></p>
                    </div>
                </li>
                <li class="li_list">
                    <div class="pic_list"><span><a href="#">赵本山那英曾联袂演台剧兄妹</a></span></div>
                    <div class="news_list">
                        <p><span class="s_arrow"></span><a href="#">评:日"泥鳅"首相变酗酒老宅男</a></p>
                    </div>
                </li>
            </ul>
            <ul class="newslist">
                <li><span class="s_arrow"></span><a href="#">产品</a></li>
                <li><span class="s_arrow"></span><img src="images/img06.jpg"><span><a href="#">产品</a><a
                        href="#">产品</a></span>
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
