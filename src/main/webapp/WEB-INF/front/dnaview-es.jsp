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
                        <div style="height: 33%;text-align: center;font-size:10px">Tu / Edad cronológica /</div>
                        <div style="width: 100%;height: 13%"></div>
                        <div style="height: 30%;text-align: center;color: #439e9d;font-size: 26px;font-weight: bold" id="natura">
                            ${data.naturally}11
                        </div>
                        <div style="width: 100%;height: 100%;">
                            <div style="width: 100%;height: 10%"></div>
                            <div style="height: 15%;text-align: center;font-size:10px">Su edad</div>
                            <div style="height: 15%;text-align: center;font-size:10px"> cronológica esperada</div>
                            <div style="width: 100%;height: 15%"></div>
                            <div style="height: 20%;text-align: center;color: #439e9d;font-size: 26px;font-weight: bold" id="expect">
                                11
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
                        <div style="height: 30%;text-align: center;font-size:10px">Tu / Edad biológica /</div>
                        <div style="width: 100%;height: 10%"></div>
                        <div style="height: 30%;text-align: center;color: #f15929;font-size: 34px;font-weight: bold" id="bio">
                            ${data.biological}12
                        </div>
                    </div>
                </div>
                <hr>
                <div style="width: 90%;margin: 0 auto;padding-top: 5%">
                    <div style="width: 100%;height:45px">
                        <div style="width: 8%;margin-right: 2%; float: left">
                            <img src="static/images/ques/smail.png"style="width: 100%;height: 100%">
                        </div>
                        <div style="width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d">Su epigenética es <Span class="Pobre"></Span> años menor
                            que el promedio esperado de la población para su edad cronológica.</div>
                    </div>

                </div>
            </div>

        </div>
    </div>

    <div style="width: 100%;height: 34px;clear: both"></div>
    <div style="width: 100%;margin: 0px auto;">
        <div id="main" style="width: 100%;height:300px;margin: 0px auto;position: relative">
            <div style="position: absolute;">
                <img src="static/images/ques/rep12.jpg" style="width: 100%;height: 100%;">
            </div>
            <div style="position: absolute;top: 70%;text-align: right;width: 96%;font-family: Arial;color: #0968aa;">
                <div style="font-size: 24px">CUANTOS AÑOS TIENES?</div>
                <div style="color: #828181;font-size: 16px">¿Por qué es importante su</div>
                <div style="font-size: 24px"> "edad epigenética"?</div>
            </div>
        </div>
    </div>
    <div style="width: 100%;height: 20px;clear: both"></div>

    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 80px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">Las personas envejecen a ritmos diferentes. Algunos 'se ven' y 'se sienten' mayores que su edad cronológica,
                mientras que otros se ven más jóvenes que su edad cronológica.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 84px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Nuestra edad biológica es un mejor parámetro de nuestra salud, bienestar y duración de vida que nuestra edad cronológica.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 80px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                El ADN es el hardware, la genética es el sistema operativo y la metilación del ADN y otros
                factores epigenéticos son el software que programa el genoma.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 154px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Un cambio de paradigma en la búsqueda de marcadores de edad biológica se produjo con
                el descubrimiento del 'reloj epigenético' por Horvath, que se basa en la medición
                del estado de metilación del ADN en cientos de posiciones estratégicas en el ADN.
                Este 'reloj epigenético' es una medida de nuestras edades biológicas.

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 134px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                En la mayoría de las personas, la 'edad epigenética' medida por el reloj epigenético y la 'edad cronológica' medida por el calendario son muy similares.
                La correlación entre las dos medidas en la población es cercana a 0.9 cuando 1 es
                una correlación perfecta.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 150px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Sin embargo, en algunas personas la 'edad epigenética' es diferente de la 'edad cronológica'.
                A veces, el 'reloj epigenético' se mueve más rápido que el 'reloj cronológico'.
                Consideramos una diferencia que es mayor que la
                desviación estándar (o la distribución normal en la población) como un cambio significativo.
            </div>
        </div>

        <div class="outer" style="clear: both;width: 100%;height: 200px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Los estudios sugieren que el 'reloj epigenético' acelerado podría estar asociado
                con un mayor riesgo de varias enfermedades crónicas relacionadas con la edad,
                como la enfermedad cardiovascular y el cáncer en una edad posterior.
                (Enlace: https://www.ncbi.nlm.nih.gov/pubmed /? term = epigenética + reloj + enfermedad).
                Sin embargo, esto sigue siendo un campo abierto y se necesitan más estudios.
            </div>
        </div>
    </div>
    <div style="background-color: #F0F0F0;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%">
        <div style="width: 90%;margin: 0 auto;">
            <div style="width: 100%;clear: both;height: 150px">
                <div style="width: 65%;float: left;font-size: 18px;">
                    Cuál es el<span style="font-size: 24px;color: #1b6fae;">prueba de epiAging?</span><br> <span
                        style="color: #1b6fae;"> Qué significa eso?</span>
                    <div style="height: 40px;width: 100%"></div>

                </div>
                <div style="width: 35%;float: left"><img src="static/images/ques/rep2.png"
                                                         style="width: 100%;height: 100%">
                </div>
            </div>

            <div class="outer" style="clear: both;width: 100%;height: 118px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Después de una extensa extracción de datos, hemos descubierto una
                    única región de metilación CG relacionada con la edad que fue suficiente para
                    predecir con precisión la edad biológica utilizando saliva.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 175px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Preparamos el ADN de su saliva y luego medimos el nivel de metilación del ADN
                    en varias posiciones en un fragmento de su genoma utilizando la secuenciación
                    de la próxima generación y el mapeo de bisulfito. Sus estados de metilación del ADN
                    se insertan en una ecuación matemática que calcula la 'edad epigenética' en función
                    del nivel de metilación del ADN.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 266px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Lo consideramos como una 'bandera roja' cuando su 'edad epigenética'
                    se desvía de su 'edad cronológica' en una desviación estándar. La desviación estándar
                    proporciona una idea sobre la distribución de la diferencia de la media en la población
                    normal, que en este punto de análisis es de 5 años. En esta etapa, si su
                    'edad epigenética' es 5 años mayor que su 'edad cronológica' podría considere el resultado
                    como una 'bandera roja'. A medida que se acumulen más pruebas, obtendremos un número más preciso de la 'distribución normal'.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 140px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Aunque todavía no está claro cómo se puede desacelerar su 'reloj epigenético',
                    los cambios de estilo de vida recomendados por la mayoría de las asociaciones médicas nacionales son quizás un punto de partida.
                    Una edad avanzada es una 'bandera roja',
                    no más que sugiere que tal vez sea hora de hacer algunos cambios en el estilo de vida.
                </div>
            </div>
            <div style="width: 100%;height: auto">
                <div class="outer" style="clear: both;width: 65%;">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px;line-height: 18px">
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
                <div style="width: 100%;margin-left: 5%; float: left;font-size: 16px">
                    Qué puedo hacer si mi <span
                        style="font-size: 18px;color: #1b6fae;font-weight: bold">'edad epigenética' es mayor?</span>
                    <div style="width: 40%;float: left"><img src="static/images/ques/rep4.png"
                                                             style="width: 100%;height: 100%"></div>
                </div>
            </div>
            <div style="width: 100%;color: white;height: 30px"></div>
            <div class="outer" style="clear: both;width: 100%;height: 146px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    La 'epigenética' es diferente de la 'genética' en una forma sustancial en que la epigenética es potencialmente
                    reversible mediante intervenciones dietéticas y cambios en el estilo de vida. Por lo tanto,
                    podría ser posible invertir el 'reloj epigenético'.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 130px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    Los estudios preliminares muestran que los cambios en la dieta pueden causar la desaceleración del reloj epigenético en ciertas personas, sin embargo,
                    esta sigue siendo una pregunta abierta. (https://www.ncbi.nlm.nih.gov/pubmed/30350398)
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    Las asociaciones médicas nacionales han recomendado cambios en el estilo de vida,
                    incluido el ejercicio y los hábitos alimenticios, por algún tiempo, sin embargo, necesitamos más datos sobre
                    los cambios más recomendables y deben ser personalizados.
                </div>
            </div>
            <div style="width: 100%; height: 490px">
                <div class="outer" style="width: 60%;float: left; height: 189px">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px">
                        Una manera para nosotros de aprender acerca de los cambios de estilo de vida es aconsejable compartir nuestras
                        experiencias con otros y analizar el impacto de las diferencias en el estilo de vida en una
                        población grande. Esto es ahora posible usando la distribución de tecnologías tales como aplicaciones,
                        así como la inteligencia artificial que podrían determinar cómo los diferentes insumos tales como los hábitos de estilo de vida 'afectan a un resultado - el 'reloj epigenética'.
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
            <div style="font-size: 24px">Personalizado y</div>
            <div style="font-size: 24px;">posicionamiento sistemático</div>
            <div style="color: #828181;font-size: 16px">de nuestra aplicación inteligente para tu salud</div>
        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 150px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Nuestra aplicación lo vincula con información sobre comportamientos de estilo de vida recomendados por importantes asociaciones médicas nacionales de EE. UU.,
                Así como posibles suplementos nutricionales como SAMe, vitamina A, D y C.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 130px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Estos enlaces se actualizan regularmente y le sugerimos que siga actualizándolos periódicamente.
                Estas recomendaciones se basan en lo que la 'ciencia' sabe hoy, no son perfectas.
                Con más datos y más análisis, la ciencia está mejorando.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 139px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Nuestro primer informe se basa en los datos de estilo de vida que ingresó,
                que muestran hasta qué punto sus parámetros de estilo de vida se desvían de las recomendaciones de consenso.
                Puede decidir realizar cambios basados en este informe.

            </div>
        </div>
    </div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;height:300px; margin: auto 0;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep7.png" style="width: 100%;height: 100%;">
        </div>
        <div style="position: absolute;top: 72%;left: 4%;text-align: center;width: 96%;font-family: Arial;color: #0968aa;">
            <div style="color: #828181;font-size: 16px">Una asociación dinámica a largo plazo</div>
            <div style="font-size: 24px">para lograr 'Envejecimiento saludable'</div>

        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both;width: 100%; height:44px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Le sugerimos que siga ingresando sus datos de estilo de vida.
            </div>
        </div>
        <div class="outer" style="clear: both; width: 100%; height:126px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Actualizará sus datos de estilo de vida tan regularmente como lo haga. Puede actualizar todas las preguntas, algunas o ninguna.
                Sin embargo, creemos que los informes precisos nos permitirán brindarle un mejor análisis.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Sugerimos que en 6 meses o como máximo un año envíe su saliva a una segunda prueba.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 124px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Sus datos serán anonimizados. Sus datos y los datos de otros usuarios anónimos mamy serán analizados por inteligencia artificial para desarrollar un 'modelo',
                que mide el impacto de los cambios en el estilo de vida en el 'reloj epigenético'.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 88px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Una vez que se acumulan más datos, el 'modelo' examinará los datos de su estilo
                de vida y los resultados de la prueba se compartirán con usted.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Analizaremos su 'edad epigenética' e informaremos sobre el progreso y los cambios de
                estilo de vida que ha realizado.
            </div>
        </div>
        <div class="outer" style="width: 100%; height: 30px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;width: 53%">
                Se ofrecerán posibles rutas para el cambio en función de nuestro 'modelo' y sus datos.
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
                Esperamos que juntos podamos coevolucionar su bienestar y nuestro entorno de aprendizaje 'epiAging'.
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
            //您的预估真实年龄
            var epiAge = parseFloat($("#bio").text());
            var natura = parseFloat($("#natura").text());
            //var sqrt_value=Math.sqrt(2.6876+0.0288*-(epiAge+7.5806));
            var result=(-1.6394+Math.sqrt(2.6876+0.0288*-(epiAge+7.5806)))/-0.0144
            //alert(sqrt_value);
            console.info("你输入的生物学年龄为："+epiAge+" 您的预估真实年龄为："+parseFloat(result));
            $("#expect").html(result)
            $(".Pobre").html(Math.abs(result-natura).toFixed(2))
        })
    </script>

</div>
</body>
</html>
