<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>早期防治知识调查问卷</title>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no">
    <link href="static/css/ques1.css" rel="stylesheet ">
    <link href="static/css/163css.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="static/js/zepto_min.js"></script>
    <script type="text/javascript" src="static/js/touchslider.js"></script>
    <script type="text/javascript" src="static/js/jquery-1.11.0.min.js"></script>
</head>
<body style="overflow-y:scroll;">
    <div id="container">
        <div id="photo">
            <img src="static/images/ques/ques1.png"/>
            <img src="static/images/ques/ques2.png"/>
            <img src="static/images/ques/ques3.png"/>
        </div>

        <div id="dark"></div>
        <div class="box-163css">
            <ul id="pagenavi1" class="page">
                <li><a href="#js011.html" class="active">
                    <img class="img1" src="static/images/ques/ques11.png" style="height: 123px;"></a></li>
                <li><a href="#js.html">
                    <img class="img2" src="static/images/ques/ques22.png" style="height: 123px;"></a></li>
                <li><a href="#js09.html">
                    <img class="img3" src="static/images/ques/ques33.png" style="height: 123px;"></a></li>
            </ul>
            <div id="slider1" class="swipe">
                <ul class="box01_list">
                    <li class="li_list">
                        <div class="pic_list"><img src="images/img05.jpg"><span><a href="#">赵本山那英曾联袂演台剧兄妹</a></span></div>
                        <div class="news_list">
                            <p><span class="s_arrow"></span><a href="#">曝湖人惊天交易:造跑轰三人组</a></p>
                        </div>
                    </li>
                    <li class="li_list">
                        <div class="pic_list"><img src="images/img06.jpg"><span><a href="#">赵本山那英曾联袂演台剧兄妹</a></span></div>
                        <div class="news_list">
                            <p><span class="s_arrow"></span><a href="#">外交部新任女发言人被赞漂亮</a></p>
                        </div>
                    </li>
                    <li class="li_list">
                        <div class="news_list">
                            <%--早期预防问卷--%>
                            <div>
                                <p>您知道我国常见的癌症有哪些?(可多选)</p>
                                <p>
                                    <input id='check-1' type="checkbox" name='check-1' checked='checked' />
                                    <label for="check-1">肺癌,  肝癌,  胃癌,  食管癌 </label>
                                </p>
                                <p>
                                    <input id='check-2' type="checkbox" name='check-1' />
                                    <label for="check-2">结、直肠癌</label>
                                </p>
                                <p>
                                    <input id="check-3" type="checkbox" name="check-1">
                                    <label for="check-3">乳腺癌、宫颈癌</label>
                                </p>
                                <p>
                                    <input id="check-4" type="checkbox" name="check-1">
                                    <label for="check-4">乳腺癌、宫颈癌</label>
                                </p>
                            </div>

                            <div>
                                <p>您知道我国常见的癌症有哪些?(可多选)</p>
                                <p>
                                    <input id='check-1' type="checkbox" name='check-1' checked='checked' />
                                    <label for="check-1">肺癌,  肝癌,  胃癌,  食管癌 </label>
                                </p>
                                <p>
                                    <input id='check-2' type="checkbox" name='check-1' />
                                    <label for="check-2">结、直肠癌</label>
                                </p>
                                <p>
                                    <input id="check-3" type="checkbox" name="check-1">
                                    <label for="check-3">乳腺癌、宫颈癌</label>
                                </p>
                                <p>
                                    <input id="check-4" type="checkbox" name="check-1">
                                    <label for="check-4">乳腺癌、宫颈癌</label>
                                </p>
                            </div>

                            <div>
                                <p>您知道我国常见的癌症有哪些?(可多选)</p>
                                <p>
                                    <input id='check-1' type="checkbox" name='check-1' checked='checked' />
                                    <label for="check-1">肺癌,  肝癌,  胃癌,  食管癌 </label>
                                </p>
                                <p>
                                    <input id='check-2' type="checkbox" name='check-1' />
                                    <label for="check-2">结、直肠癌</label>
                                </p>
                                <p>
                                    <input id="check-3" type="checkbox" name="check-1">
                                    <label for="check-3">乳腺癌、宫颈癌</label>
                                </p>
                                <p>
                                    <input id="check-4" type="checkbox" name="check-1">
                                    <label for="check-4">乳腺癌、宫颈癌</label>
                                </p>
                            </div>

                        </div>
                    </li>
                    <li class="li_list">
                        <div class="pic_list"><img src="images/img08.jpg"><span><a href="#">赵本山那英曾联袂演台剧兄妹</a></span></div>
                        <div class="news_list">
                            <p><span class="s_arrow"></span><a href="#">评:日"泥鳅"首相变酗酒老宅男</a></p>

                        </div>
                    </li>
                </ul>
                <ul class="newslist">
                    <li><span class="s_arrow"></span><a href="#">产品</a></li>
                    <li><span class="s_arrow"></span><img src="images/img06.jpg"><span><a href="#">产品</a><a href="#">产品</a></span></li>
                </ul>
            </div>

        </div>
    </div>
    <script>
        $(function(){
            $(".img1").click(function () {
                $(".img1").attr("src", "static/images/ques/ques111.png");
            })
            $(".img2").click(function () {
                $(".img2").attr("src", "static/images/ques/ques222.png");
            })
            $(".img3").click(function () {
                $(".img3").attr("src", "static/images/ques/ques333.png");
            })
        })
    </script>
    <script type="text/javascript">
        for(n=1;n<3;n++){
            var page='pagenavi'+n;
            var mslide='slider'+n;
            var mtitle='emtitle'+n;

            arrdiv = 'arrdiv' + n;

            var as=document.getElementById(page).getElementsByTagName('a');

            var tt=new TouchSlider({id:mslide,'auto':'-1',fx:'ease-out',direction:'left',speed:600,timeout:5000,'before':function(index){

                    var as=document.getElementById(this.page).getElementsByTagName('a');

                    as[this.p].className='';

                    as[index].className='active';

                    this.p=index;

                    var txt=as[index].innerText;

                    $("#"+this.page).parent().find('.emtitle').text(txt);

                    var txturl=as[index].getAttribute('href');

                    var turl=txturl.split('#');

                    $("#"+this.page).parent().find('.go_btn').attr('href',turl[1]);

                }});

            tt.page = page;

            tt.p = 0;

            //console.dir(tt); console.dir(tt.__proto__);

            for(var i=0;i<as.length;i++){

                (function(){
                    var j=i;
                    as[j].tt = tt;

                    as[j].onclick=function(){

                        this.tt.slide(j);

                        return false;

                    }

                })();

            }

        }

    </script>

</body>
</html>
