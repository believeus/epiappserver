<%@ page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title></title>
    <script src="static/js/jquery-2.1.0.min.js"></script>
    <script src="static/js/echarts-gl.min.js"></script>
    <link href="static/css/dnaview.css" rel="stylesheet">
</head>
<body style="margin: 0;padding: 0">
<div style="width: 100%;">
    <div style="width: 100%;height:567px; margin: auto;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep1.png" style="width: 100%;height: 100%;">
        </div>
    </div>
    <div style="height: 34px;width: 100%;clear: both"></div>
    <div id="main"style="width: 100%;height:300px;margin: 0px auto;position: relative" ></div>
    <div style="width: 100%;height:389px">

        <div style="width: 90%;height: auto; margin: 0 auto">
            <div style="background-color: #f3f6fa;width: 100%;height: 389px;border-radius: 10px">
                <div style="width: 100%;height: 12px"></div>
                <div style="width: 100%;height: 60%;">
                    <div style="width: 34%;height: 50%; float: left">
                        <div style="height:30%;width: 30%;margin: auto; ">
                            <img src="static/images/ques/rep-cho.png" style="width: 100%;height: 100%">
                        </div>
                        <div style="width: 100%;height: 10%"></div>
                        <div style="height: 33%;text-align: center;font-size:10px">您的/實際年齡</div>
                        <div style="width: 100%;height: 13%"></div>
                        <div style="height: 30%;text-align: center;color: #439e9d;font-size: 26px;font-weight: bold" id="natura">
                            ${userage}
                        </div>
                        <div style="width: 100%;height: 100%;">
                            <div style="width: 100%;height: 10%"></div>
                            <div style="height: 15%;text-align: center;font-size:10px">您的預期</div>
                            <div style="height: 15%;text-align: center;font-size:10px">/實際年齡/</div>
                            <div style="width: 100%;height: 15%"></div>
                            <div style="height: 20%;text-align: center;color: #439e9d;font-size: 26px;font-weight: bold" id="expect">

                            </div>
                        </div>
                    </div>
                    <div style="width: 31%;height:80%; float: left">
                        <img src="static/images/ques/rep-man.png" style="width: 100%;height: 100%">
                    </div>
                    <div style="width: 33%;height: 50%; float: left">
                        <div style="height: 30%;width: 30%;margin: auto;">
                            <img src="static/images/ques/rep-bio.png" style="width: 100%;height: 100%">
                        </div>
                        <div style="width: 100%;height: 10%"></div>
                        <div style="height: 30%;text-align: center;font-size:10px">你的/生物年齡/</div>
                        <div style="width: 100%;height: 10%"></div>
                        <div style="height: 30%;text-align: center;color: #f15929;font-size: 34px;font-weight: bold" id="bio">
                            ${data.biological}
                        </div>
                    </div>
                </div>
                <hr>
                <div style="width: 90%;margin: 0 auto;padding-top: 5%">
                    <div id="smail" style="width: 100%;height:45px">
                        <div style="width: 8%;margin-right: 2%; float: left">
                            <img src="static/images/ques/smail.png"style="width: 100%;height: 100%">
                        </div>
                        <div style="width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d">
                            您的表觀遺傳學年齡比您的實際年齡低<Span class="Pobre"></Span>年</div>
                    </div>

                </div>
            </div>

        </div>
    </div>

    <div style="width: 100%;height: 34px;clear: both"></div>
    <div style="width: 100%;margin: 0px auto;">
        <div id="top-pic" style="width: 100%;height:300px;margin: 0px auto;position: relative">
            <div style="position: absolute;">
                <img src="static/images/ques/rep12.jpg" style="width: 100%;height: 100%;">
            </div>
            <div style="position: absolute;top: 70%;text-align: right;width: 96%;font-family: Arial;color: #0968aa;">
                <div style="font-size: 24px">你幾歲?</div>
                <div style="color: #828181;font-size: 16px">為什麼您的</div>
                <div style="font-size: 24px">“表觀遺傳年齡”很重要?</div>
            </div>
        </div>
    </div>
    <div style="width: 100%;height: 20px;clear: both"></div>

    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 66px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">每人均有不同的衰老進程。有人看似/感覺自己比真實年齡蒼老，有人則看起來比真實年齡年輕。
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 50px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                我們的生物學年齡比我們的實際年齡更能反映我們的健康狀況和壽命。
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                假設DNA是負責運行我們身體運行的硬件。基因序列就是作業系統。DNA甲基化與其他表觀遺傳要素就是負責編寫基因組。
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 82px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                隨著Horvath量度過百個於DNA中的定位發現的了“表觀遺傳時鐘”，生物年齡標記的研究發生了範式轉移。
                “表觀遺傳時鐘”是研究生物年齡的一種量度指標。

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 86px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                部份人中，由錶觀遺傳時鐘量測的“錶觀遺傳年齡”和由行事曆量測的“實際年齡”非常相似。
                當1是一個完美的相關性時，這兩個名額在人群中的相關性接近於0.9。
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 100px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                然而部分人的生物年齡會與實際年齡不乎：有可能”表觀遺傳時鐘”會比“實齡時鐘”走得更快。
                我們認為當上述兩者之差距超出標準差（或實驗人口的常態分佈）代表一種著顯著的轉變。
            </div>
        </div>

        <div class="outer" style="clear: both;width: 100%;height: 160px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                研究表明，加速的“錶觀遺傳時鐘”可能與一些與年齡相關的慢性疾病（如心血管疾病和晚期癌症）的風險新增有關。 (鏈接: https://www.ncbi.nlm.nih.gov/pubmed/?term=epigenetic+clock+disease).
                然而這主張仍然處於開放討論階段；需要更多深入研究
            </div>
        </div>
    </div>
    <div style="background-color: #F0F0F0;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%">
        <div style="width: 90%;margin: 0 auto;">
            <div style="width: 100%;clear: both;height: 150px">
                <div style="width: 65%;float: left;font-size: 18px;">
                    什麼是 <span style="font-size: 24px;color: #1b6fae;">生物學年齡檢測?</span><br> <span
                        style="color: #1b6fae;"> 這是什麼意思呢?</span>
                    <div style="height: 40px;width: 100%"></div>

                </div>
                <div style="width: 35%;float: left"><img src="static/images/ques/rep2.png"
                                                         style="width: 100%;height: 100%">
                </div>
            </div>

            <div class="outer" style="clear: both;width: 100%;height: 70px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    透過廣泛的數據挖掘之後，我們發現了一個與年齡相關的CG甲基化區域，足以通過唾液預測生物年齡。
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 90px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    由你的唾液樣本，我們會於不同的基因組以次世代定序及亞硫酸鹽定序量度你的DNA甲基化水平。
                    你的DNA甲基化水平會經由數學公式計算出你的”表觀遺傳”年齡
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 140px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    當你的表觀遺傳年齡與實際年齡出現分歧，這可能是由你身體發出的警號。透過研究所得數據的標準差，
                    我們分析出總測試人口樣本中平均年齡的誤差分配為 +/- 5 歲。假如你的表觀遺傳年齡較實際年齡大5年，
                    這可視作你身體發出的警號。透過累積更多研究數據，我們相信能得出一套更準確的常態分佈。
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 90px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    縱使現時尚未明確確定如何能夠減慢某人的”表觀遺傳時鐘”，不少全球各地的醫藥組織均建議可由改變生活模式方面入手。
                    當生物年齡過度老化，這代表著某人有需要作出生活模式的改變。
                </div>
            </div>
            <div style="width: 100%;height: auto">
                <div class="outer" style="clear: both;width: 65%;">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px;line-height: 18px">
                        這種“红色”警號有助你及時改變生活習慣或向醫生提出咨詢
                    </div>
                </div>
                <div style="width: 35%;float: right">
                    <img src="static/images/ques/rep3.png" style="width:100%;height: 100%;">
                </div>
            </div>
        </div>
    </div>
    <div style="background-color: #b3b3b3;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%">
        <div style="width: 90%;margin: 0 auto;">
            <div style="width: 100%;clear: both;height: 123px">
                <div style="width: 100%;margin-left: 5%; float: left;font-size: 16px">
                    假若我的表觀遺傳年齡 <span
                        style="font-size: 18px;color: #1b6fae;font-weight: bold">出現"衰老"該怎麼辦?</span>
                    <div style="width: 40%;float: left"><img src="static/images/ques/rep4.png"
                                                             style="width: 100%;height: 100%"></div>
                </div>
            </div>
            <div style="width: 100%;color: white;height: 30px"></div>
            <div class="outer" style="clear: both;width: 100%;height: 50px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    與遺傳學的主張相反，“表觀遺傳學”認為飲食習慣與生活模式的改變是可以逆轉生物時鐘。
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height:90px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;">
                    初步研究表明，飲食改變可能導致某些人的生物時鐘減慢。這仍處於開放討論階段。(https://www.ncbi.nlm.nih.gov/pubme<p style="margin: auto">d/30350398)</p>

                </div>

            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    生活模式的改變包括運動和飲食習慣的改變。雖然已被國家醫學協會推薦了一段時間，但是我們需要更多關於較高效的改變的數據；
                    這些改變應該經過個性化設計的。
                </div>
            </div>
            <div style="width: 100%; height: 200px">
                <div class="outer" style="width: 60%;float: left; height: 100px">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px">
                        有無數用戶與我們分享經驗，我們才能夠向測試人仕改善咨詢質素；同時持續分析生活模式改變所帶來的影響。
                        透過共享科技(如應用程式和人工智能) ，我們可以查出不同生活習慣會如何影響生物時鐘。
                    </div>
                </div>
                <div style="width: 36%;float: left;margin-top: 50px">
                    <img src="static/images/ques/rep5.png" style="width: 100%;height: 100%">
                </div>
            </div>
        </div>
    </div>
    <div style="width: 100%;height:350px; margin: auto 0;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep6-1.png" style="width: 100%;height: 100%;">
        </div>
        <div style="position: absolute;top: 68%;left: 4%;text-align: center;width: 96%;font-family: Arial;color: #0968aa;">
            <div style="font-size: 24px">個性化和</div>
            <div style="font-size: 24px;">系統定位</div>
            <div style="color: #828181;font-size: 16px">為了您的健康而設計的智能應用程序</div>
        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 90px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                我們的應用程式會把由美國國家醫學協會推薦的生活模式資訊及建議經超鏈結提供及閣下；
                同時會推介相關營養補充品例如 SAMe, 維他命A, D 及C。
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 90px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                這些資料會經常更新；我們建議用家定時參考鏈結的內容。這些建議是基於“科學”今天所知道的。
                雖然並不完美，隨著更多的數據和更多的分析，我們的科學也在改進提升。
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 70px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                我們的報告首先會顯示閣下的生活方式參數與建議參數的分別。你能參考第一份報告的分析結果決定進行怎樣的改變。
            </div>
        </div>
    </div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;height:300px; margin: auto 0;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep7.png" style="width: 100%;height: 100%;">
        </div>
        <div style="position: absolute;top: 72%;left: 4%;text-align: center;width: 96%;font-family: Arial;color: #0968aa;">
            <div style="color: #828181;font-size: 16px">與我們携手合作，獲得長久</div>
            <div style="font-size: 24px">"健康的年齡"</div>

        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both;width: 100%; height:48px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                我們建議你能持之以恆的更新你的生活模式數據。
            </div>
        </div>
        <div class="outer" style="clear: both; width: 100%; height:90px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                你能自行選擇資料更新的時間和頻率；再按需要更新某部分/全部問卷內容。
                當然，我們認為生物年齡檢測只有持續地研究生活方式、環境和健康管理系統,為您提供更好的分析。
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 46px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                我們建議6個月或最多1年內閣下要進行另一次唾液樣本測試。

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 90px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                閣下提供的數據及個人身份會保持機密。所有用家提供的數據會以匿名狀態交由人工智能進行分析以發展一套模型；
                用作量度改變生活習慣對生物時鐘的影響。
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 48px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                當累積到足夠研究數據，模型便會分析閣下提供的數據；並與你分享研究結果。
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 46px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                我們會進一步分析你的生物年齡及生活模式轉變的進度。

            </div>
        </div>
        <div class="outer" style="width: 100%; height: 30px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;width: 53%">
                基於研究模型的分析與閣下提供的數據，我們會建議可能的生活模式改變方向。
            </div>
            <div style="width: 36%;float: right">
                <img src="static/images/ques/rep13.png" style="width: 100%;height: 100%">
            </div>
        </div>
        <div class="outer" style="width: 100%; height: 80px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;width: 53%">
                我們希望能夠一同的改善閣下的健康的同時，一同令epiAging學習環境更進一步。
            </div>
        </div>

    </div>
    <div style="width: 100%;height: 200px"></div>

    <script type="text/javascript">
        $(function () {
            var ntrLtBioData = []
            var ntrGtBioData = []
            for (var i in ${ntrLtBioUsers}) {
                ntrLtBioData.push([window.parseFloat(${ntrLtBioUsers}[i].naturally).toFixed(2), window.parseFloat(${ntrLtBioUsers}[i].biological).toFixed(2)])
            }
            for (var i in ${ntrGtBioUsers}) {
                ntrGtBioData.push([window.parseFloat(${ntrGtBioUsers}[i].naturally).toFixed(2), window.parseFloat(${ntrGtBioUsers}[i].biological).toFixed(2)])
            }
            var option = {
                legend: {
                    data: ['Chronological Age<Biological Age', 'Chronological Age>Biological Age']
                },
                xAxis: [{
                    name: 'Chronological Age',
                    type: 'value',
                    nameLocation: 'middle',
                    nameGap: 20,
                    scale: true,
                    nameTextStyle: {color: "#0071BC"},
                    axisLabel: {
                        formatter: '{value}'
                    }
                }],
                yAxis: [{
                    name: 'Biological Age',
                    nameLocation: 'middle',
                    nameGap: 22,
                    nameRotate: 90,
                    type: 'value',
                    scale: true,
                    nameTextStyle: {color: "#0071BC"},
                    axisLabel: {
                        formatter: '{value}'
                    }
                }],
                series: [
                    {
                        name: 'Chronological Age<Biological Age',
                        type: 'scatter',
                        //圆点的颜色为红色
                        itemStyle: {
                            normal: {
                                color: 'red'
                            }
                        },
                        //自然年龄<生物学年龄
                        data: ntrLtBioData,
                        markPoint: {
                            data: [
                                {
                                    name: 'Biological Age',
                                    value: window.parseFloat(${data.biological}).toFixed(2),
                                    xAxis: window.parseFloat(${data.naturally}).toFixed(2),
                                    yAxis: window.parseFloat(${data.biological}).toFixed(2)
                                }
                            ]
                        },
                    },
                    {
                        name: 'Chronological Age>Biological Age',
                        type: 'scatter',
                        //圆点的颜色为绿色
                        itemStyle: {
                            normal: {
                                color: 'green'
                            }
                        },
                        //自然年龄>生物学年龄
                        data: ntrGtBioData,
                        markPoint: {
                            data: [
                                {
                                    name: 'Biological Age',
                                    value: window.parseFloat(${data.biological}).toFixed(2),
                                    xAxis: window.parseFloat(${data.naturally}).toFixed(2),
                                    yAxis: window.parseFloat(${data.biological}).toFixed(2)
                                }
                            ]
                        },
                    }]
            }
            // 使用刚指定的配置项和数据显示图表。
            echarts.init(document.getElementById("main")).setOption(option);

        })

    </script>
    <script>
        $(function () {
            var uage=parseInt(${userage})
            //您的预估真实年龄
            var epiAge = parseFloat($("#bio").text());
            var natura = parseFloat($("#natura").text());
            //var sqrt_value=Math.sqrt(2.6876+0.0288*-(epiAge+7.5806));
            var expectedage=((-1.6394+Math.sqrt(2.6876+0.0288*-(epiAge+7.5806)))/-0.0144).toFixed(2)
            //alert(sqrt_value);
            //console.info("你输入的生物学年龄为："+epiAge+" 您的预估真实年龄为："+parseFloat(expectedage));
            $("#expect").html(expectedage)


            var real1="<div id=\"smail\" style=\"width: 100%;height:45px\" >\n" +
                "                    <div style=\"width: 8%;margin-right: 2%; float: left\">\n" +
                "                        <img src=\"static/images/ques/smail.png\"style=\"width: 100%;height: 100%\">\n" +
                "                    </div>\n" +
                "                    <div style=\"width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d\">您的表觀遺傳學年齡比您的實際年齡低 <Span class=\"Pobre\"></Span>\n" +
                "                      歲</div>\n" +
                "                </div>"
            var real2="<div id=\"smail\" style=\"width: 100%;height:45px\" >\n" +
                "                    <div style=\"width: 8%;margin-right: 2%; float: left\">\n" +
                "                        <img src=\"static/images/ques/sad.png\"style=\"width: 100%;height: 100%\">\n" +
                "                    </div>\n" +
                "                    <div style=\"width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d\">您的表觀遺傳學年齡比您的實際年齡高<Span class=\"Pobre\"></Span>\n" +
                "                       歲</div>\n" +
                "                </div>"

            var test1="<div id=\"smail\" style=\"width: 100%;height:45px\" >\n" +
                "                    <div style=\"width: 8%;margin-right: 2%; float: left\">\n" +
                "                        <img src=\"static/images/ques/smail.png\"style=\"width: 100%;height: 100%\">\n" +
                "                    </div>\n" +
                "                    <div style=\"width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d\">您的表觀遺傳學年齡比您的預期實際年齡低<Span class=\"Pobre\"></Span>\n" +
                "                       歲</div>\n" +
                "                </div>"
            var test2="<div id=\"smail\" style=\"width: 100%;height:45px\" >\n" +
                "                    <div style=\"width: 8%;margin-right: 2%; float: left\">\n" +
                "                        <img src=\"static/images/ques/sad.png\"style=\"width: 100%;height: 100%\">\n" +
                "                    </div>\n" +
                "                    <div style=\"width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d\">您的表觀遺傳學年齡比您的實際年齡高<Span class=\"Pobre\"></Span>\n" +
                "                        歲</div>\n" +
                "                </div>"

            if (uage==0) {
                if(epiAge<expectedage){
                    $("#smail").html(test1)
                }else{
                    $("#smail").html(test2)
                }
                $(".Pobre").html(Math.abs(expectedage-epiAge).toFixed(2))
            }else {
                if(epiAge<uage){
                    $("#smail").html(real1)
                }else {
                    $("#smail").html(real2)
                }
                $(".Pobre").html(Math.abs(uage-epiAge).toFixed(2))
            }
        })
    </script>


</div>
</body>
</html>