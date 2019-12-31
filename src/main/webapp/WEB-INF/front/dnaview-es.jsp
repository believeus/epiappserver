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
    <div style="width: 100%;height:234px; margin: auto;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep1.png" style="width: 100%;height: 100%;">
        </div>
        <div style="position: absolute;margin-left: 55%;margin-top: 15%;font-family: Arial;color: #0968aa;font-size: 18px">
            <div>¿Cuantos años tienes?</div>
            <div style="color: #828181;font-size: 14px">¿Por qué es importante tu </div>
            <div> "Edad Epigenética"?</div>
        </div>
    </div>
    <div style="height: 34px;width: 100%;clear: both"></div>
    <div style="width: 100%;">
        <div style="width: 90%;height: auto; margin: 0 auto">
            <div style="background-color: #f3f6fa;width: 100%;height: 289px;border-radius: 10px">
                <div style="width: 100%;height: 12px"></div>
                <div style="width: 100%;height: 177px;">
                    <div style="width: 33%;height: 177px; float: left">
                        <div style="height: 34px;width: 30%;margin: auto; ">
                            <img src="static/images/ques/rep-cho.png" style="width: 100%;height: 100%">
                        </div>
                        <div style="width: 100%;height: 12px"></div>
                        <div style="height: 30%;text-align: center">Tu / Edad cronológica /</div>
                        <div style="width: 100%;height: 12px"></div>
                        <div style="height: 30%;text-align: center;color: #439e9d;font-size: 34px;font-weight: bold">
                            ${data.naturally}
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
                        <div style="height: 30%;text-align: center">Tu / Edad biológica /</div>
                        <div style="width: 100%;height: 12px"></div>
                        <div style="height: 30%;text-align: center;color: #f15929;font-size: 34px;font-weight: bold">
                            ${data.biological}
                        </div>
                    </div>
                </div>
                <hr>
                <div style="width: 90%;margin: 0 auto;padding-top: 29px">
                    <div style="width: 100%;">
                        <div style="width: 7%;float: left;margin-right: 2%"><img src="static/images/ques/smail.png"
                                                                                 style="width: 100%;height: 100%"></div>
                        <div style="width: 91%;float: left">Tu edad biológica es de  ${data.biological} años.</div>
                    </div>
                    <%-- <div style="width: 100%;clear: both">
                         <div style="width: 7%;float: left;margin-right: 2%"><img src="static/images/ques/sad.png"
                                                                                  style="width: 100%;height: 100%"></div>
                         <div style="width: 91%;float: left">Your biological age is 5 years heighter than your chronological age.</div>
                     </div>--%>
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
            <div style="width: 4%;float: left;padding-right: 2%;"><img src="static/images/ques/rep-green.png"
                                                    style="width: 100%;height: 100%"></div>
            <div style="width: 91%;float: left">Su edad biológica es más baja que su edad cronológica.</div>
            <div style="width: 100%;height:23px;clear: both"></div>
            <div style="width: 4%;float: left;padding-right: 2%;"><img src="static/images/ques/rep-red.png"
                                                    style="width: 100%;height: 100%"></div>
            <div style="width: 91%;float: left">Su edad biológica es más alta que su edad cronológica.</div>
        </div>
        <div style="width: 100%;height:23px;clear: both"></div>
        <div style="width: 100%;">
            <div style="width: 6%;float: left">
                <div style="width: 63%;height: 12px;border-radius: 30px;background-color: #008000"></div>
            </div>
            <div style="width: 91%;float: left">Personas cuya edad biológica es más alta que la edad cronológica.</div>
        </div>
        <div style="width: 100%;height: 23px;clear: both"></div>
        <div style="width: 100%;">
            <div style="width: 6%;float: left">
                <div style="width: 63%;height: 12px;border-radius: 30px;background-color: #ff3333"></div>
            </div>
            <div style="width: 91%;float: left">Personas cuya edad biológica es inferior a la edad cronológica.</div>
        </div>
    </div>
    <div style="width: 100%;height: 34px;clear: both"></div>


    <div style="width: 100%;height:234px; margin: auto;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep1.png" style="width: 100%;height: 100%;">
        </div>
        <div style="position: absolute;margin-left: 55%;margin-top: 15%;font-family: Arial;color: #0968aa;font-size: 18px">
            <div>¿Cuantos años tienes?</div>
            <div style="color: #828181;font-size: 14px">¿Por qué es importante tu </div>
            <div> "Edad Epigenética"?</div>
        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">Las personas envejecen a ritmos diferentes. Algunos 'se ven' y 'se sienten' mayores que su edad cronológica, mientras que otros se ven más jóvenes que su edad cronológica.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 56px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Nuestra edad biológica es un mejor parámetro de nuestra salud, bienestar y duración de vida que nuestra edad cronológica.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 63px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                El ADN es el hardware, la genética es el sistema operativo y la metilación del ADN y otros factores epigenéticos son el software que programa el genoma.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Un cambio de paradigma en la búsqueda de marcadores de edad biológica se produjo con el descubrimiento del 'reloj epigenético' por Horvath, que se basa en la medición del estado de metilación del ADN en cientos de posiciones estratégicas en el ADN. Este 'reloj epigenético' es una medida de nuestras edades biológicas.

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                En la mayoría de las personas, la 'edad epigenética' medida por el reloj epigenético y la 'edad cronológica' medida por el calendario son muy similares. La correlación entre las dos medidas en la población es cercana a 0.9 cuando 1 es una correlación perfecta.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Sin embargo, en algunas personas la 'edad epigenética' es diferente de la 'edad cronológica'. A veces, el 'reloj epigenético' se mueve más rápido que el 'reloj cronológico'. Consideramos una diferencia que es mayor que la desviación estándar (o la distribución normal en la población) como un cambio significativo.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 123px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Los estudios sugieren que el 'reloj epigenético' acelerado podría estar asociado con un mayor riesgo de varias enfermedades crónicas relacionadas con la edad, como la enfermedad cardiovascular y el cáncer en una edad posterior. (Enlace: https://www.ncbi.nlm.nih.gov/pubmed /? term = epigenética + reloj + enfermedad). Sin embargo, esto sigue siendo un campo abierto y se necesitan más estudios.
            </div>
        </div>
    </div>
    <div style="background-color: #b3b3b3;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%">
        <div style="width: 90%;margin: 0 auto;">
            <div style="width: 100%;clear: both;height: 166px">
                <div style="width: 65%;float: left">
                    Cuál es el<span style="font-size: 22px;color: #1b6fae;">prueba de epiAging?</span><br> <span
                        style="color: #1b6fae;">Qué significa eso?</span>
                    <div style="height: 23px;width: 100%"></div>
                    <div class="outer" style="clear: both;width: 100%;height: 99px">
                        <div class="circle-outer">
                            <div class="grey-circle" style="height:45%;width: 67%;"></div>
                        </div>
                        <div class="para">
                            Después de una extensa extracción de datos, hemos descubierto una única región de metilación CG relacionada con la edad que fue suficiente para predecir con precisión la edad biológica utilizando saliva.
                        </div>
                    </div>
                </div>
                <div style="width: 35%;float: left"><img src="static/images/ques/rep2.png"
                                                         style="width: 100%;height: 100%">
                </div>
            </div>

            <div class="outer" style="clear: both;width: 100%;height: 112px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Preparamos el ADN de su saliva y luego medimos el nivel de metilación del ADN en varias posiciones en un fragmento de su genoma utilizando la secuenciación de la próxima generación y el mapeo de bisulfito. Sus estados de metilación del ADN se insertan en una ecuación matemática que calcula la 'edad epigenética' en función del nivel de metilación del ADN.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 156px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Lo consideramos como una 'bandera roja' cuando su 'edad epigenética' se desvía de su 'edad cronológica' en una desviación estándar. La desviación estándar proporciona una idea sobre la distribución de la diferencia de la media en la población normal, que en este punto de análisis es de 5 años. En esta etapa, si su 'edad epigenética' es 5 años mayor que su 'edad cronológica' podría considere el resultado como una 'bandera roja'. A medida que se acumulen más pruebas, obtendremos un número más preciso de la 'distribución normal'.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Aunque todavía no está claro cómo se puede desacelerar su 'reloj epigenético', los cambios de estilo de vida recomendados por la mayoría de las asociaciones médicas nacionales son quizás un punto de partida. Una edad avanzada es una 'bandera roja', no más que sugiere que tal vez sea hora de hacer algunos cambios en el estilo de vida.
                </div>
            </div>
            <div style="width: 100%;height: auto">
                <div class="outer" style="clear: both;width: 65%;">
                    <div class="circle-outer">
                        <div class="grey-circle" style="height:45%;width: 67%;"></div>
                    </div>
                    <div class="para">
                        Una 'bandera roja' puede indicarle que actúe según su estilo de vida o consulte a su médico para un chequeo.
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
                    ¿Qué puedo hacer si mi<span
                        style="font-size: 22px;color: #1b6fae;">'edad epigenética' es mayor?</span>
                    <div style="height: 23px;width: 100%"></div>

                </div>

            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    La 'epigenética' es diferente de la 'genética' en una forma sustancial en que la epigenética es potencialmente reversible mediante intervenciones dietéticas y cambios en el estilo de vida. Por lo tanto, podría ser posible invertir el 'reloj epigenético'.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Los estudios preliminares muestran que los cambios en la dieta pueden causar la desaceleración del reloj epigenético en ciertas personas, sin embargo, esta sigue siendo una pregunta abierta. (https://www.ncbi.nlm.nih.gov/pubmed/30350398)
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Las asociaciones médicas nacionales han recomendado cambios en el estilo de vida, incluido el ejercicio y los hábitos alimenticios, por algún tiempo, sin embargo, necesitamos más datos sobre los cambios más recomendables y deben ser personalizados.
                </div>
            </div>
            <div style="width: 100%; height: 189px">
                <div class="outer" style="width: 60%;float: left; height: 234px">
                    <div class="circle-outer">
                        <div class="grey-circle"></div>
                    </div>
                    <div class="para">
                        Una manera para nosotros de aprender acerca de los cambios de estilo de vida es aconsejable compartir nuestras experiencias con otros y analizar el impacto de las diferencias en el estilo de vida en una población grande. Esto es ahora posible usando la distribución de tecnologías tales como aplicaciones, así como la inteligencia artificial que podrían determinar cómo los diferentes insumos tales como los hábitos de estilo de vida 'afectan a un resultado - el 'reloj epigenética'.
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
        <div class="outer" style="clear: both; width: 100%; height: 89px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Nuestra aplicación lo vincula con información sobre comportamientos de estilo de vida recomendados por importantes asociaciones médicas nacionales de EE. UU., Así como posibles suplementos nutricionales como SAMe, vitamina A, D y C.
            </div>
        </div>

        <div class="outer" style="clear: both;width: 100%; height: 88px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Estos enlaces se actualizan regularmente y le sugerimos que siga actualizándolos periódicamente. Estas recomendaciones se basan en lo que la 'ciencia' sabe hoy, no son perfectas. Con más datos y más análisis, la ciencia está mejorando.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Nuestro primer informe se basa en los datos de estilo de vida que ingresó, que muestran hasta qué punto sus parámetros de estilo de vida se desvían de las recomendaciones de consenso. Puede decidir realizar cambios basados en este informe.

            </div>
        </div>
    </div>
    <div style="background-color: #b3b3b3;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;height:auto; margin: auto ">
        <img src="static/images/ques/rep7.png" style="width: 100%;height: 100%">
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div style="width: 80%;height: 88px; margin: 0 auto;text-align: center">Una asociación dinámica a largo plazo<span style="color: #1b6fae;font-size: 22px">para lograr 'Envejecimiento saludable'</span>
        </div>

        <div class="outer" style="clear: both; width: 100%; height:88px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Le sugerimos que siga ingresando sus datos de estilo de vida.Actualizará sus datos de estilo de vida tan regularmente como lo haga. Puede actualizar todas las preguntas, algunas o ninguna. Sin embargo, creemos que los informes precisos nos permitirán brindarle un mejor análisis.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 56px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Sugerimos que en 6 meses o como máximo un año envíe su saliva a una segunda prueba.

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 88px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Sus datos serán anonimizados. Sus datos y los datos de otros usuarios anónimos mamy serán analizados por inteligencia artificial para desarrollar un 'modelo', que mide el impacto de los cambios en el estilo de vida en el 'reloj epigenético'.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Una vez que se acumulan más datos, el 'modelo' examinará los datos de su estilo de vida y los resultados de la prueba se compartirán con usted.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Analizaremos su 'edad epigenética' e informaremos sobre el progreso y los cambios de estilo de vida que ha realizado.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Se ofrecerán posibles rutas para el cambio en función de nuestro 'modelo' y sus datos.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Esperamos que juntos podamos coevolucionar su bienestar y nuestro entorno de aprendizaje 'epiAging'.
            </div>
        </div>
    </div>
    <div style="background-color: #b3b3b3;height: 7px;width: 100%;clear: both"></div>


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
                    data: ['Edad cronológica < Edad biológica', 'Edad cronológica>Edad biológica']
                },
                xAxis: [{
                    name: 'Edad cronológica ',
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
                    name: 'Edad biológica',
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
                        name: 'Edad cronológica < Edad biológica',
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
                                    name: 'Edad biológica',
                                    value: window.parseFloat(${data.biological}).toFixed(2),
                                    xAxis: window.parseFloat(${data.naturally}).toFixed(2),
                                    yAxis: window.parseFloat(${data.biological}).toFixed(2)
                                }
                            ]
                        },
                    },
                    {
                        name: 'Edad cronológica > Edad biológica',
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
                                    name: 'Edad biológica',
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
