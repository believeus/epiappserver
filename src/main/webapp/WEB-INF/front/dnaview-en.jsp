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
    <div style="width: 100%;height:500px; margin:0 auto;">
        <img src="static/images/ques/rep1.png" style="width: 100%;height: 100%;">
    </div>

    <div style="width: 60%;height: 80px;margin: 0 auto; text-align: center;background-color: #f1f5f6;border-radius: 5px;font-size: 24px;line-height: 80px;font-weight: bold;">Barcode | ${data.barcode}</div>
    <div style="height: 123px;width: 100%;clear: both"></div>
    <div id="main"style="width: 100%;height:300px;margin: 0px auto;position: relative" ></div>

    <div style="width: 90%;height: 200px;margin: 0 auto; text-align: left;background-color: #f1f5f6;border-radius: 15px;">
        <div style="width: 90%;margin: 0 auto">
            <div style="height: 30px;padding-top: 20px">
                <img src="static/images/ques/rep-green.png" style="float: left;width: 30px;height: 30px;padding-left: 2%">
                <img src="static/images/ques/rep-red.png" style="float: left;width: 30px;height: 30px;padding-left: 2%">
                <span style="float: left;height: 30px;width: 78%;font-size: 16px;line-height: 30px; padding-left: 2%;">Your Epigenetic Age</span>
            </div>
            <div style="height: 20px;width: 100%;clear: both"></div>
            <div style=" height: 60px;width: 100%;">
                <div style="float: left;width: 5%;height:60px; ">
                    <div style="width: 10px;height: 10px;background-color: green;border-radius: 50px;"></div>
                </div>
                <div style="float: left;width: 95%;height: 60px;font-size: 16px">The others,who were tested,whose Epigenetic age is higher than Chronological age.</div>
            </div>
            <div style=" height: 60px;width: 100%;">
                <div style="float: left;width: 5%;height: 60px; ">
                    <div style="width: 10px;height: 10px;background-color: red;border-radius: 50px;"></div>
                </div>
                <div style="float: left;width: 95%;height: 60px;font-size: 16px">The others,who were tested,whose Epigenetic age is higher than Chronological age.</div>
            </div>
        </div>
    </div>
    <div style="height: 20px;width: 100%;clear: both"></div>
    <div style="width: 90%;height: 109px;margin: 0 auto;background-color: #f1f5f6;border-radius: 15px;">
        <div style="height: 50px;margin:0 auto; width: 70%;padding-top: 20px">
            <img src="static/images/ques/olive-leaf.png" style="float: left;width: 40px;height: 40px;padding-left: 20%">
            <span style="float: left;height: 50px;width: 30%;font-size: 16px;line-height: 30px;text-align: center; font-size: 28px;font-weight: bold"id="natura">${userage}</span>
            <span style="float: left;height: 50px;width: 20%;font-size: 16px;line-height: 30px;text-align: center; font-size: 18px;">Years</span>
        </div>
        <div style="height: 40px;text-align: center;font-size: 16px;font-weight: bold;color:#000">Your Chronological Age</div>
    </div>
    <div style="height: 20px;width: 100%;clear: both"></div>
    <div style="width: 90%;height: 209px;margin: 0 auto;background-color: #f1f5f6;border-radius: 15px;">
        <div style="height: 50px;margin:0 auto; width: 70%;padding-top: 20px">
            <img src="static/images/ques/olive-leaf.png" style="float: left;width: 40px;height: 40px;padding-left: 15%">
            <div style="float: left;height: 50px;width: 40%;font-size: 16px;line-height: 30px;text-align: center; font-size: 28px;font-weight: bold"id="expect"> </div>
            <span style="float: left;height: 50px;width: 20%;font-size: 16px;line-height: 30px;text-align: center; font-size: 18px;">Years</span>
        </div>
        <div style="height: 40px;text-align: center;font-size: 16px;font-weight: bold;border-bottom: 2px dotted #cdcdcd;color:#000">Your Excepted Chronological Age</div>
        <div style="height: 40px;text-align: center;font-size: 16px;padding: 20px"> The "normal" chronological age of people with similar EpiAge results (calculated using a mathematical equation from our tests)</div>
    </div>
    <div style="height: 20px;width: 100%;clear: both"></div>
    <div style="width: 90%;height: 260px;margin: 0 auto;background-color: #f1f5f6;border-radius: 15px;">
        <div style="height: 30px;margin:0 auto; width: 90%;padding-top: 20px">
            <div style="float: left;height: 30px; width: 100%;">
                <img src="static/images/ques/dna-icon.png" style="float: left;width: 30px;height: 30px;">
            </div>
        </div>
        <div style="clear: both; height: 80px;width: 30%;margin: 0 auto;background-color: #ebeced;border-radius: 15px;text-align: center;">
            <span style="height: 80px;width: 100%;font-size: 16px;line-height: 80px; font-size: 30px;font-weight: bold;"id="bio">${data.biological}</span>
        </div>
        <div style="height: 110px;text-align: center;font-size: 18px;line-height: 80px; font-weight: bold;align-self: center">Your Epigenetic Age</div>

        <div id="smail">

        </div>
    </div>


    <div style="height: 100px;width: 100%;clear: both"></div>


    <div style="width: 100%;height: 34px;clear: both"></div>
    <div style="width: 100%;margin: 0px auto;">
        <div id="top-pic" style="width: 100%;height:389px;margin: 0px auto;position: relative">
            <div style="border-top-left-radius: 15px;border-top-right-radius: 15px">
                <img src="static/images/ques/rep12.jpg" style="width: 100%;height: 100%;border-top-left-radius: 30px;border-top-right-radius: 30px">
            </div>

            <div style="overflow: hidden; height: 123px;float: left; text-align: right;width: 96%;color: #0968aa;">
                <div style="font-size: 24px">HOW OLD ARE YOU?</div>
                <div style="color: #828181;font-size: 16px">Why is your</div>
                <div style="font-size: 24px">"Epigenetic age" important?</div>
            </div>
        </div>
    </div>
    <div style="width: 100%;height: 20px;clear: both"></div>

    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 80px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">People age at different rates. Some “look” and “feel” older
                than their chronological ages while other look younger than their chronological ages.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 64px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Our epigenetic ages are better parameters of our health well being and life span than our chronological
                ages.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 116px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                If we think about our cells as minicomputers, we can look at DNA as the hard ware,
                genetics as the operating system and DNA methylation and other epigenetic factors
                as the software that programs the genome.

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 134px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                A paradigm shift in the search for epigenetic age markers occurred with the discovery
                of the “epigenetic clock” by Horvath, which is based on measurement of DNA methylation
                status at hundreds of strategic positions in DNA. This “epigenetic clock” is a
                measure of our epigenetic ages.

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 134px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                In most people the“chronological age” measured by the epigenetic clock and the“chronological
                age”measured by the calendar are very similar.
                The correlation between the two measures across the population is close to 0.9 when 1 is a perfect
                correlation.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 150px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                However in some people the “epigenetic age” is different from the “chronological
                age”. Sometimes the “epigenetic clock” moves faster than the “chronological clock”.
                We consider a difference that is larger than the standard deviation (or the normal
                distribution in the population) as a significant change.
            </div>
        </div>

        <div class="outer" style="clear: both;width: 100%;height: 160px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Studies suggest that accelerated “epigenetic clock” might be associated with
                increased risks for several age-related chronic diseases such as cardiovascular
                disease and cancer. ( https://www.ncbi.nlm.nih.gov/pubmed/?term=epigenetic+-clock+disease
                ). This is however still an open field and more studies are needed.
            </div>
        </div>
    </div>
    <div style="background-color: #F0F0F0;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%">
        <div style="width: 90%;margin: 0 auto;">
            <div style="width: 100%;clear: both;height: 150px">
                <div style="width: 65%;float: left;font-size: 18px;">
                    What is the <span style="font-size: 24px;color: #1b6fae;">epiAging Test?</span><br> <span
                        style="color: #1b6fae;"> What does it mean?</span>
                    <div style="height: 40px;width: 100%"></div>

                </div>
                <div style="width: 35%;float: left"><img src="static/images/ques/rep2.png"
                                                         style="width: 100%;height: 100%">
                </div>
            </div>

            <div class="outer" style="clear: both;width: 100%;height: 100px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    After extensive data mining, we have discovered a single
                    age-related CG methylation region that was sufficient to
                    accurately predict epigenetic age using saliva.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 175px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    We prepare DNA from your saliva and then measure the level of DNA methylation in
                    several positions in a fragment of your genome using next generation sequencing
                    and bisulfite mapping. Your states of DNA methylation are inserted into a mathematical
                    equation that calculates the “epigenetic age” as a function of the level of DNA
                    methylation.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 266px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    We consider it as a “red flag” when your “epigenetic age” deviates from your
                    “chronological age” by one standard deviation. Standard deviation provides an idea
                    about the distribution of difference from the mean in the normal population, which
                    at this point of analysis is around 5 years. At this stage, if your “epigenetic age” is 5
                    years older than your “chronological age” you might consider the result as a “red
                    flag”. As more tests are accumulated we will get a more accurate value of the
                    “normal distribution”.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 140px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Although it is still not clear how one can decelerate his “epigenetic clock”, lifestyle
                    changes recommended by most national medical associations are perhaps a starting
                    point. An older “epigenetic age” is a “red flag” which hints that it is time to make
                    some lifestyle changes.
                </div>
            </div>
            <div style="width: 100%;height: auto">
                <div class="outer" style="clear: both;width: 65%;">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px;line-height: 18px">
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
                <div style="width: 100%;margin-left: 5%; float: left;font-size: 16px">
                    What can i do if my <span
                        style="font-size: 18px;color: #1b6fae;font-weight: bold">'epigenetic Age' is Older?</span>
                    <div style="width: 40%;float: left"><img src="static/images/ques/rep4.png"
                                                             style="width: 100%;height: 100%"></div>
                </div>
            </div>
            <div style="width: 100%;color: white;height: 30px"></div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    "Epigenetics" is different from "genetics" in a
                    substantial way that epigenetics is potentially reversible by dietary interventions and life
                    style changes. So, it might be possible to reverse the“epigenetic clock”.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    Preliminary studies show that dietary changes can cause deceleration of epigenetic
                    clock in certain people, however this is still an open question.
                    ( https://www.ncbi.nlm.nih.gov/pubmed/30350398)
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    Lifestyle changes including exercise and dietary habits have been recommended by
                    national medical associations for some time, however, we need more data about the
                    most advisable changes and they should be personalized.
                </div>
            </div>
            <div style="width: 100%; height: 338px">
                <div class="outer" style="width: 60%;float: left; height: 189px">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px">
                        A way for us to learn about advisable
                        lifestyle changes is sharing our experiences
                        with others and analyzing the impact of
                        differences in lifestyle in a large population.
                        This is now possible using sharing technologies such as Apps as well as artificial
                        intelligence that could determine how different
                        inputs such as “lifestyle” habits affect an outcome--the “epigenetic clock”.
                    </div>
                </div>
                <div style="width: 36%;float: left;margin-top: 50px">
                    <img src="static/images/ques/rep5.png" style="width: 100%;height: 100%">
                </div>
            </div>
        </div>
    </div>
    <div style="width: 100%;height:389px; margin: auto 0;position: relative">
        <div style="">
            <img src="static/images/ques/rep6-1.png" style="width: 100%;height: 100%;">
        </div>
        <div style=" height: 123px;text-align: right;float: left; width: 96%;color: #0968aa;">
            <div style="font-size: 24px">Personalized and</div>
            <div style="font-size: 24px;">systematic positioning</div>
            <div style="color: #828181;font-size: 16px">of out intelligent app for your health</div>
        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 106px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Our App links you to information on recommended lifestyle behaviors by important
                US national medical association as well as possible nutritional supplements such as
                SAMe, vitamin A, D and C.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 150px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                These links are updated regularly and we suggest that you keep updating by examining the links
                periodically. These recommendations are based on what “science”
                knows today, they are not perfect. With more data and more analysis science is
                improving.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 139px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Our first report is based on the lifestyle data that you have entered which shows how
                far your lifestyle parameters deviate from consensus recommendations. You might
                decide to make changes based on this first report.

            </div>
        </div>
    </div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;height:389px; margin: auto 0;position: relative">
        <div>
            <img src="static/images/ques/rep7.png" style="width: 100%;height: 100%;">
        </div>
        <div style="text-align: center;float: left; height: 123px; width: 96%;color: #0968aa;">
            <div style="color: #828181;font-size: 16px">A dynamic long-term partnership</div>
            <div style="font-size: 24px">to achieve  'Healthy Aging'</div>

        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;clear: both;">
        <div class="outer" style="width: 100%; height:44px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                We suggest that you keep entering your life style data.
            </div>
        </div>
        <div class="outer" style="clear: both; width: 100%; height:106px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                You will update your life style data as regularly as you wish. You might update all
                questions, some or none. However, we believe that accurate reporting will allow us to
                provide you with a better analysis.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 46px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                We suggest that in 6 months or maximally a year you submit your saliva to a second test.

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 124px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Your data will be anonymized. Your data and data from many other anonymous users
                will be analyzed by artificial intelligence to develop a “model”, which measures the
                impact of life style changes on “epigenetic clock”.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 88px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Once more data is accumulated, the “model” will examine your life style data and
                results of the test will be shared with you.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                We will analyze your “epigenetic age” and report on the progress and the lifestyle changes that you have
                made.
            </div>
        </div>
        <div class="outer" style="width: 100%; height: 67px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 5%;width: 58%">
                Possible routes for change will be offered based on our “model” and your data.
            </div>
            <div style="width: 36%;height: auto; float: right">
                <img src="static/images/ques/rep13.png" style="width: 100%;height: 100%">
            </div>
        </div>
        <div class="outer" style="width: 100%; height: 80px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 5%;width: 55%">
                We hope that together we will be able to coevolve your well being and our “epiAging”
                learning environment.
            </div>
        </div>

    </div>
    <div style="width: 100%;height: 200px"></div>
</div>
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
                data: ['Chronological Age<Epigenetic Age', 'Chronological Age>Epigenetic Age']
            },
            xAxis: [{
                name: 'Chronological Age',
                type: 'value',
                nameLocation: 'middle',
                nameGap: 20,
                scale: true,
                nameTextStyle: {color: "#404bc2"},
                axisLabel: {
                    formatter: '{value}'
                }
            }],
            yAxis: [{
                name: 'Epigenetic Age',
                nameLocation: 'middle',
                nameGap: 22,
                nameRotate: 90,
                type: 'value',
                scale: true,
                nameTextStyle: {color: "#404bc2"},
                axisLabel: {
                    formatter: '{value}'
                }
            }],
            series: [{
                name: 'Chronological Age<Epigenetic Age',
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
                            name: 'Epigenetic Age',
                            value: window.parseFloat(${data.biological}).toFixed(2),
                            xAxis: window.parseFloat(${data.naturally}).toFixed(2),
                            yAxis: window.parseFloat(${data.biological}).toFixed(2)
                        }
                    ]
                },
            },
                {
                    name: 'Chronological Age>Epigenetic Age',
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
                                name: 'Epigenetic Age',
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


    $(function () {
        //客户填写的真实年龄

        var uage=window.parseFloat(${data.naturally}).toFixed(2)
        //生物学年龄
        var epiAge = window.parseFloat(${data.biological}).toFixed(2);
        //您的预估真实年龄
        var expectedage=parseFloat(epiAge-8.9657/0.9044).toFixed(2)
        // var expectedage=parseFloat((-1.6394+Math.sqrt(2.6876+0.0288*-(epiAge+7.5806)))/-0.0144).toFixed(2)
        var natura = parseFloat($("#natura").text());
        //alert(sqrt_value);
        console.info(uage)
        <%--console.info(${userage ne 0})--%>
        // console.info($("#bio").text())
        // console.info("你输入的生物学年龄为："+epiAge+" 您的预估真实年龄为："+ expectedage);
        //var sqrt_value=Math.sqrt(2.6876+0.0288*-(epiAge+7.5806));
        $("#expect").html(expectedage)


        var real1="<div id=\"smail\" >\n"+
            " <div style=\"height: 90px;width: 100%;background-color: #ebeced;border-radius: 15px;margin-bottom: 120px;\">\n" +
            "            <div style=\"width:60px;height: 60px;border-radius: 50px;background-color: #ebeced;margin-left: 40%;margin-top: -35px;position: absolute\">\n" +
            "                <img src=\"static/images/ques/smile-black.png\" style=\"width: 80%;height: 80%;padding-left: 6px;padding-top: 5px;\">\n" +
            "            </div>\n" +
            "            <div style=\"height: 60px;text-align: center;font-size: 16px;padding-top: 35px\">\n" +
            "                Your Expected Chronological age is <span class=\"Pobre\"style=\"font-size: 18px;font-weight: bold;\"></span> years lower than your chronological age.\n" +
            "            </div>\n" +
            "        </div>"+
        "    <div style=\"height: 100px;width: 100%\"></div>\n"+
        "</div>"
        var real2="<div id=\"smail\">\n"+
            " <div  style=\"height: 90px;width: 100%;background-color: #ebeced;border-radius: 15px;margin-bottom: 120px;\">\n" +
            "            <div style=\"width:60px;height: 60px;border-radius: 50px;background-color: #ebeced;margin-left: 40%;margin-top: -35px;position: absolute\">\n" +
            "                <img src=\"static/images/ques/sad-black.png\" style=\"width: 80%;height: 80%;padding-left: 6px;padding-top: 5px;\">\n" +
            "            </div>\n" +
            "            <div style=\"height: 60px;text-align: center;font-size: 16px;padding-top: 35px\">\n" +
            "                Your Expected Chronological age is <span class=\"Pobre\"style=\"font-size: 18px;font-weight: bold;\"></span> years higher than your chronological age.\n" +
            "            </div>\n" +
            "        </div>\n"+
            "    <div style=\"height: 100px;width: 100%\"></div>\n"+
            "</div>"
        var test1=" <div id=\"smail\" style=\"height: 90px;width: 100%;background-color: #ebeced;border-radius: 15px;margin-bottom: 100px;\">\n" +
            "            <div style=\"width:60px;height: 60px;border-radius: 50px;background-color: #ebeced;margin-left: 38%;margin-top: -35px;position: absolute\">\n" +
            "                <img src=\"static/images/ques/smile-black.png\" style=\"width: 80%;height: 80%;padding-left: 6px;padding-top: 5px;\">\n" +
            "            </div>\n" +
            "            <div style=\"height: 60px;text-align: center;font-size: 16px;padding-top: 35px\">\n" +
            "                Your Epigenetic age is <span class=\"Pobre\"style=\"font-size: 18px;font-weight: bold;\"></span> years lower than your expected chronological age in the population.\n" +
            "            </div>\n" +
            "        </div>"
        var test2=" <div id=\"smail\" style=\"height: 90px;width: 100%;background-color: #ebeced;border-radius: 15px;margin-bottom: 100px;\">\n" +
            "            <div style=\"width:60px;height: 60px;border-radius: 50px;background-color: #ebeced;margin-left: 38%;margin-top: -35px;position: absolute\">\n" +
            "                <img src=\"static/images/ques/sad-black.png\" style=\"width: 80%;height: 80%;padding-left: 6px;padding-top: 5px;\">\n" +
            "            </div>\n" +
            "            <div style=\"height: 60px;text-align: center;font-size: 16px;padding-top: 35px\">\n" +
            "                Your Epigenetic age is <span class=\"Pobre\"style=\"font-size: 18px;font-weight: bold;\"></span> years higher than your expected chronological age in the population.\n" +
            "            </div>\n" +
            "        </div>"

        if (uage==0) {
            null
            // if(epiAge<expectedage){
            //     $("#smail").html(test2)
            // }else{
            //     $("#smail").html(test1)
            // }
            // $(".Pobre").html(Math.abs(expectedage-epiAge).toFixed(2))
        }else {
            if(expectedage<uage){
                $("#smail").html(real2)
            }else {
                $("#smail").html(real1)
            }
            $(".Pobre").html(Math.abs(uage-expectedage).toFixed(2))
        }
    })

</script>


</body>
</html>
