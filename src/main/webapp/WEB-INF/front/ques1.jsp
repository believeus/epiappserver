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
                    <input  class="form-code"maxlength="1" >
                    <div class="dash"> - </div>
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
                <li>调查对象姓名: <input  style=" border:none;text-align: center;outline: none"  type="text" name="name" value=""></li>
                <hr>
                <li>性别: <input  style=" border:none;text-align: center;outline: none"  type="text" name="name" value=""></li>
                <hr>
                <li>年龄: <input  style=" border:none;text-align: center;outline: none"  type="text" name="name" value=""></li>
                <hr>
                <li>住址: <input  style=" border:none;text-align: center;outline: none"  type="text" name="name" value=""></li>
                <hr>
                <li>家庭电话: <input  style=" border:none;text-align: center;outline: none"  type="text" name="name" value=""></li>
                <hr>
                <li>身份证号码: <input  style=" border:none;text-align: center;outline: none"  type="text" name="name" value=""></li>
                <hr>
                <li>手机号码: <input  style=" border:none;text-align: center;outline: none"  type="text" name="name" value=""></li>
                <hr>
                <li></li>
            </ul>
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
                    <div class="pic_list"><img src="images/img05.jpg"><span><a href="#">赵本山那英曾联袂演台剧兄妹</a></span>
                    </div>
                    <div class="news_list">
                        <p><span class="s_arrow"></span><a href="#">曝湖人惊天交易:造跑轰三人组</a></p>


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
    var index=0;
    //改变图片
    function ChangeImg() {
        index++;
        var a=document.getElementsByClassName("img-slide");
        if(index>=a.length) index=0;
        for(var i=0;i<a.length;i++){
            a[i].style.display='none';
    }
        a[index].style.display='block';
    }
    //设置定时器，每隔两秒切换一张图片
    setInterval(ChangeImg,3000);
</script>

<script>
    $(function () {
        $(".form-code").onkeyup(this.value.replace(/[^\d|chun]/g,''));
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
