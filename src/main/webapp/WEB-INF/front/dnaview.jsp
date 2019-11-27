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
    <div style="width: 100%;height:auto; margin: auto ">
        <img src="static/images/ques/rep1.png" style="width: 100%;height: 100%">
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">People age at different rates. Some “look” and “feel” older
                than their chronological ages while other look younger than their chronological ages.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 56px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Our biological ages are better parameters of our health well being and life span than our chronological
                ages.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 88px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                If we think about our cells as minicomputers, we can look at DNA as the hard ware,
                genetics as the operating system and DNA methylation and other epigenetic factors
                as the software that programs the genome.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                A paradigm shift in the search for biological age markers occurred with the discovery
                of the “epigenetic clock” by Horvath, which is based on measurement of DNA methylation
                status at hundreds of strategic positions in DNA. This “epigenetic clock” is a
                measure of our biological ages.

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                In most people the“chronological age” measured by the epigenetic clock and the“chronological
                age”measured by the calendar are very similar.
                The correlation between the two measures across the population is close to 0.9 when 1 is a perfect
                correlation.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                However in some people the “epigenetic age” is different from the “chronological
                age”. Sometimes the “epigenetic clock” moves faster than the “chronological clock”.
                We consider a difference that is larger than the standard deviation (or the normal
                distribution in the population) as a significant change.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Studies suggest that accelerated “epigenetic clock” might be associated with
                increased risks for several age-related chronic diseases such as cardiovascular
                disease and cancer. ( https://www.ncbi.nlm.nih.gov/pubmed/?term=epigenetic+-clock+disease
                ). This is however still an open field and more studies are needed.
            </div>
        </div>
    </div>
    <div style="background-color: #b3b3b3;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%">
        <div style="width: 90%;margin: 0 auto;">
            <div style="width: 100%;clear: both;height: 166px">
                <div style="width: 65%;float: left">
                    What is the <span style="font-size: 22px;color: #1b6fae;">epiAging Test?</span><br> <span
                        style="color: #1b6fae;"> What does it mean?</span>
                    <div style="height: 23px;width: 100%"></div>
                    <div class="outer" style="clear: both;width: 100%;height: 99px">
                        <div class="circle-outer">
                            <div class="grey-circle" style="height:45%;width: 67%;"></div>
                        </div>
                        <div class="para">
                            After extensive data mining, we have discovered a single
                            age-related CG methylation region that was sufficient to
                            accurately predict biological age using saliva.
                        </div>
                    </div>
                </div>
                <div style="width: 35%;float: left"><img src="static/images/ques/rep2.png"
                                                         style="width: 100%;height: 100%">
                </div>
            </div>

            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    We prepare DNA from your saliva and then measure the level of DNA methylation in
                    several positions in a fragment of your genome using next generation sequencing
                    and bisulfite mapping. Your states of DNA methylation are inserted into a mathematical
                    equation that calculates the “epigenetic age” as a function of the level of DNA
                    methylation.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 136px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    We consider it as a “red flag” when your “epigenetic age” deviates from your
                    “chronological age” by one standard deviation. Standard deviation provides an idea
                    about the distribution of difference from the mean in the normal population, which
                    at this point of analysis is around 5 years. At this stage, if your “epigenetic age” is 5
                    years older than your “chronological age” you might consider the result as a “red
                    flag”. As more tests are accumulated we will get a more accurate value of the
                    “normal distribution”.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Although it is still not clear how one can decelerate his “epigenetic clock”, lifestyle
                    changes recommended by most national medical associations are perhaps a starting
                    point. An older “epigenetic age” is a “red flag” which hints that it is time to make
                    some lifestyle changes.
                </div>
            </div>
            <div style="width: 100%;height: auto">
                <div class="outer" style="clear: both;width: 65%;">
                    <div class="circle-outer">
                        <div class="grey-circle" style="height:45%;width: 67%;"></div>
                    </div>
                    <div class="para">
                        A red "flag" might prompt you to act on your lifestyle or consult your physician for a
                        check up.
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
                <div style="width: 35%;float: left"><img src="static/images/ques/rep4.png"
                                                         style="width: 100%;height: 100%"></div>
                <div style="width: 60%;margin-left: 5%; float: left">
                    What can i do if my <span
                        style="font-size: 22px;color: #1b6fae;">"epigenetic Age is Older"</span>
                    <div style="height: 23px;width: 100%"></div>

                </div>

            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    "Epigenetics" is different from "genetics" in a
                    substantial way that epigenetics is potentially reversible by dietary interventions and life
                    style changes. So, it might be possible to reverse the“epigenetic clock”.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Preliminary studies show that dietary changes can cause deceleration of epigenetic
                    clock in certain people, however this is still an open question.
                    ( https://www.ncbi.nlm.nih.gov/pubmed/30350398)
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Lifestyle changes including exercise and dietary habits have been recommended by
                    national medical associations for some time, however, we need more data about the
                    most advisable changes and they should be personalized.
                </div>
            </div>
            <div style="width: 100%;">
                <div class="outer" style="width: 60%;float: left; height: 189px">
                    <div class="circle-outer">
                        <div class="grey-circle"></div>
                    </div>
                    <div class="para">
                        A way for us to learn about advisable
                        lifestyle changes is sharing our experiences
                        with others and analyzing the impact of
                        differences in lifestyle in a large population.
                        This is now possible using sharing technologies such as Apps as well as artificial
                        intelligence that could determine how different
                        inputs such as “lifestyle” habits affect an outcome--the “epigenetic clock”.
                    </div>
                </div>
                <div style="width: 40%;float: left">
                    <img src="static/images/ques/rep5.png" style="width: 100%;height: 100%">
                </div>
            </div>
        </div>
    </div>
    <div style="background-color: #b3b3b3;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;height:auto; margin: auto ">
        <img src="static/images/ques/rep6.png" style="width: 100%;height: 100%">
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 77px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Our App links you to information on recommended lifestyle behaviors by important
                US national medical association as well as possible nutritional supplements such as
                SAMe, vitamin A, D and C.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 56px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Our biological ages are better parameters of our health well being and life span than our
                chronological
                ages.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 88px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                These links are updated regularly and we suggest that you keep updating by examining the links
                periodically. These recommendations are based on what “science”
                knows today, they are not perfect. With more data and more analysis science is
                improving.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Our first report is based on the lifestyle data that you have entered which shows how
                far your lifestyle parameters deviate from consensus recommendations. You might
                decide to make changes based on this first report.

            </div>
        </div>
    </div>
    <div style="background-color: #b3b3b3;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;height:auto; margin: auto ">
        <img src="static/images/ques/rep7.png" style="width: 100%;height: 100%">
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div style="width: 80%;height: 88px; margin: 0 auto;text-align: center">A dynamic long-term partnership to
            achive <span style="color: #1b6fae;font-size: 22px">“Healthy Aging”</span>
        </div>

        <div class="outer" style="clear: both; width: 100%; height:88px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                You will update your life style data as regularly as you wish. You might update all
                questions, some or none. However, we believe that accurate reporting will allow us to
                provide you with a better analysis.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 56px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                We suggest that in 6 months or maximally a year you submit your saliva to a second test.

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 88px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Your data will be anonymized. Your data and data from many other anonymous users
                will be analyzed by artificial intelligence to develop a “model”, which measures the
                impact of life style changes on “epigenetic clock”.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Once more data is accumulated, the “model” will examine your life style data and
                results of the test will be shared with you.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                We will analyze your “epigenetic age” and report on the progress and the lifestyle changes that you have
                made.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Possible routes for change will be offered based on our “model” and your data.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                We hope that together we will be able to coevolve your well being and our “epiAging”
                learning environment.
            </div>
        </div>
    </div>
    <div style="background-color: #b3b3b3;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;">
        <div style="width: 90%;height: auto; margin: 0 auto">
            <div style="background-color: #f3f6fa;width: 100%;height: 289px;border-radius: 10px">
                <div style="width: 100%;height: 12px"></div>
                <div style="width: 100%;height: 177px;">
                    <div style="width: 33%;height: 177px; float: left">
                        <div style="height: 34px;width: 30%;margin: auto;">
                            <img src="static/images/ques/rep-cho.png" style="width: 100%;height: 100%">
                        </div>
                        <div style="width: 100%;height: 12px"></div>
                        <div style="height: 30%;text-align: center">Your /Chronological Age/</div>
                        <div style="width: 100%;height: 12px"></div>
                        <div style="height: 30%;text-align: center;color: #439e9d;font-size: 34px;font-weight: bold">
                            34.6
                        </div>
                    </div>
                    <div style="width: 33%;height: 159px; float: left">
                        <img src="static/images/ques/rep-man.png" style="width: 100%;height: 100%">
                    </div>
                    <div style="width: 33%;height: 177px; float: left">
                        <div style="height: 34px;width: 30%;margin: auto;">
                            <img src="static/images/ques/rep-bio.png" style="width: 100%;height: 100%">
                        </div>
                        <div style="width: 100%;height: 12px"></div>
                        <div style="height: 30%;text-align: center">Your /Biological Age/</div>
                        <div style="width: 100%;height: 12px"></div>
                        <div style="height: 30%;text-align: center;color: #f15929;font-size: 34px;font-weight: bold">
                            31.6
                        </div>
                    </div>
                </div>
                <hr>
                <div style="width: 90%;margin: 0 auto;">
                    <div style="width: 100%;">
                        <div style="width: 7%;float: left;margin-right: 2%"><img src="static/images/ques/smail.png"
                                                                 style="width: 100%;height: 100%"></div>
                        <div style="width: 91%;float: left">Your biological age is 5 years lower than your chronological age.</div>
                    </div>
                    <div style="width: 100%;">
                        <div style="width: 7%;float: left;margin-right: 2%"><img src="static/images/ques/sad.png"
                                                                 style="width: 100%;height: 100%"></div>
                        <div style="width: 91%;float: left">Your biological age is 5 years heighter than your chronological age.</div>
                    </div>
                </div>
            </div>

        </div>
    </div>

<div style="width: 100%;height: 34px;clear: both"></div>
    <div style="width: 100%;margin: 0px auto;">
        <div id="main" style="width: 100%;height:400px;margin: 0px auto;"></div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div style="width: 100%;">
            <div style="width: 6%;float: left"><img src="static/images/ques/rep-green.png"
                                                    style="width: 100%;height: 100%"></div>
            <div style="width: 91%;float: left">Your biological age is lower than your chronological age.</div>
            <div style="width: 100%;height:23px;clear: both"></div>
            <div style="width: 6%;float: left"><img src="static/images/ques/rep-red.png"
                                                    style="width: 100%;height: 100%"></div>
            <div style="width: 91%;float: left">Your biological age is heighter than your chronological age.</div>
        </div>
        <div style="width: 100%;height:23px;clear: both"></div>
        <div style="width: 100%;">
            <div style="width: 6%;float: left"><div style="width: 63%;height: 12px;border-radius: 30px;background-color: #008000"></div></div>
            <div style="width: 91%;float: left">People whose biological age is heighter than chronological age</div>
        </div>
        <div style="width: 100%;height: 23px;clear: both"></div>
        <div style="width: 100%;">
            <div style="width: 6%;float: left"><div style="width: 63%;height: 12px;border-radius: 30px;background-color: #ff3333"></div></div>
            <div style="width: 91%;float: left">People whose Biological age is lower than Chronological age</div>
        </div>
    </div>
    <div style="width: 100%;height: 34px;clear: both"></div>
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

</div>
</body>
</html>
