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
    <link href="static/css/163cssques2.css" rel="stylesheet" type="text/css">
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
                        <div id="info">
                            <div>
                                <p>1.1 婚姻状况:</p>
                                <p>
                                    <input id='marriage1' type="radio" name='marriage' />
                                    <label for="marriage1">A.未婚 </label>
                                </p>
                                <p>
                                    <input id='marriage2' type="radio" name='marriage' />
                                    <label for="year2">B.已婚</label>
                                </p>
                                <p>
                                    <input id="marriage3" type="radio" name="marriage">
                                    <label for="marriage3">C.离婚</label>
                                </p>
                                <p>
                                    <input id="marriage4" type="radio" name="marriage">
                                    <label for="marriage4">D.丧偶</label>
                                </p>
                            </div>
                            <div>
                                <p>1.2 文化程度:</p>
                                <p>
                                    <input id='study1' type="radio" name='study' />
                                    <label for="study1">A.文盲 </label>
                                </p>
                                <p>
                                    <input id='study2' type="radio" name='study' />
                                    <label for="study2">B.小学</label>
                                </p>
                                <p>
                                    <input id="study3" type="radio" name="study">
                                    <label for="study3">C.中学</label>
                                </p>
                                <p>
                                    <input id="study4" type="radio" name="study">
                                    <label for="study4">D.大专及以上</label>
                                </p>
                            </div>
                            <div>
                                <p>1.3 您家有几口人, 平均年收入大约为多少元?</p>
                                <p style="display: flex;line-height: 30px">
                                    <input type="number" style="width: 20%">
                                    <label>/人</label>
                                    <input type="text" style="width: 40%">
                                    <label>/元年</label>
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
                                <p>
                                    <input id="your5" type="radio" name="your">
                                    <label for="your5">E.自来水</label>
                                </p>
                            </div>
                            <div>
                            <p>3 状况吸烟:</p>
                            <p>
                                <input id='Smoking1' type="radio" name='Smoking' />
                                <label for="Smoking1">A.否 </label>
                                <input id='Smoking2' type="radio" name='Smoking' />
                                <label for="Smoking2">B.是</label>
                            </p>
                            <table border="1">
                                <tr><th>类型</th><th colspan="1">是/否</th><th>共多少年</th></tr>
                                <tr><td>香烟</td><td colspan="1"><input type="number" style="width: 100%"></td><td style="text-align: center">年</td></tr>
                                <tr><td>戒烟</td><td colspan="1"><input type="number" style="width: 100%"></td><td style="text-align: center">年</td></tr>
                            </table>
                        </div>
                            <div>
                                <p>3 饮酒情况:</p>
                                <p>
                                    <input id='beer1' type="radio" name='beer' />
                                    <label for="beer1">A.否 </label>
                                    <input id='beer2' type="radio" name='beer' />
                                    <label for="beer2">B.是</label>
                                </p>
                                <table border="1" width="100%">
                                    <tr><th style="width: 60px">类型</th><th>是/否</th><th>每天饮多少</th><th>共多少年</th></tr>
                                    <tr><td style="width: 60px">啤酒</td><td><input type="number" style="width: 100%"></td><td>毫升/天</td><td style="text-align: center"><input type="number" style="width: 50%">年</td></tr>
                                    <tr><td style="width: 60px">白酒</td><td><input type="number" style="width: 100%"></td><td>两/天</td><td style="text-align: center"><input type="number" style="width: 50%">年</td></tr>
                                    <tr><td style="width: 60px">黄酒</td><td><input type="number" style="width: 100%"></td><td>两/天</td><td style="text-align: center"><input type="number" style="width: 50%">年</td></tr>
                                    <tr><td style="width: 60px">米酒</td><td><input type="number" style="width: 100%"></td><td>两/天</td><td style="text-align: center"><input type="number" style="width: 50%">年</td></tr>
                                </table>
                            </div>
                            <div>
                                <p>5 饮茶情况:</p>
                                <p>
                                    <input id='tea1' type="radio" name='tea' />
                                    <label for="tea1">A.否 </label>
                                    <input id='tea2' type="radio" name='tea' />
                                    <label for="tea2">B.是</label>
                                </p>
                                <table border="1" width="100%">
                                    <tr>
                                        <th style="width: 60px">类型</th>
                                        <th>是/否</th>
                                        <th>每月饮多少</th>
                                        <th>共多少年</th>
                                    </tr>
                                    <tr>
                                        <td style="width: 60px">花茶</td>
                                        <td><input type="number" style="width: 100%"></td>
                                        <td>两/月</td>
                                        <td style="text-align: center"><input type="number" style="width: 50%">年</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 60px">绿茶</td>
                                        <td><input type="number" style="width: 100%"></td>
                                        <td>两/月</td>
                                        <td style="text-align: center"><input type="number" style="width: 50%">年</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 60px">红茶</td>
                                        <td><input type="number" style="width: 100%"></td>
                                        <td>两/月</td>
                                        <td style="text-align: center"><input type="number" style="width: 50%">年</td>
                                    </tr>
                                </table>
                            </div>
                            <div>
                                <p>6.饮食习惯（指近5年）</p>
                                <table border="1" width="100%">
                                    <tr>
                                        <th>食物名称</th>
                                        <th><1次/周</th>
                                        <th>2-3次/周</th>
                                        <th>4-5次/周</th>
                                        <th>6-7次/周</th>
                                    </tr>
                                    <tr>
                                        <td style="width: 20%">新鲜蔬菜</td>
                                        <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                        <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                        <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                        <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 20%">新鲜水果</td>
                                        <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                        <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                        <td style="width: 20%"><input type="number" style="width: 100%"></td>
                                        <td style="width: 20%"><input type="number" style="width: 100%"></td>
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
                        </div>
                        <div class="news_list">
                            xxx
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
                <ul class="newslist">
                    <li>

                    </li>
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
