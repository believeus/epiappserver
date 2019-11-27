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
</head>
<body style="margin: 0;padding: 0">
<div style="width: 100%;">
    <div style="width: 100%;">
        <img src="static/images/ques/rep1.png">
    </div>
    <div style="width: 100%;margin: 0px auto;">
        <div id="main" style="width: 100%;height:400px;margin: 0px auto;"></div>
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
