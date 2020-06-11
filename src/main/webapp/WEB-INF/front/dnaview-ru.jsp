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
                <div style="width: 100%;height: 62%;">
                    <div style="width: 34%;height: 50%; float: left">
                        <div style="height:30%;width: 30%;margin: auto; ">
                            <img src="static/images/ques/rep-cho.png" style="width: 100%;height: 100%">
                        </div>
                        <div style="width: 100%;height: 10%"></div>
                        <div style="height: 33%;text-align: center;font-size:10px">Ваш /Хронологический возраст/</div>
                        <div style="width: 100%;height: 10%"></div>
                        <div style="height: 30%;text-align: center;color: #439e9d;font-size: 26px;font-weight: bold" id="natura">
                            ${userage}
                        </div>
                        <div style="width: 100%;height: 100%;">
                            <div style="width: 100%;height: 10%"></div>
                            <div style="height: 15%;text-align: center;font-size:10px">Ваш ожидаемый</div>
                            <div style="height: 15%;text-align: center;font-size:10px">/хронологический возраст/</div>
                            <div style="width: 100%;height: 30%"></div>
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
                        <div style="height: 30%;text-align: center;font-size:10px">Ваш /Биологический возраст/</div>
                        <div style="width: 100%;height: 10%"></div>
                        <div style="height: 28%;text-align: center;color: #f15929;font-size: 34px;font-weight: bold" id="bio">
                            ${data.biological}
                        </div>
                    </div>
                </div>
                <hr>
                <div style="width: 90%;margin: 0 auto;padding-top: 5%">
                    <div id="smail"  style="width: 100%;height:100px">
                        <div style="width: 8%;margin-right: 2%; float: left">
                            <img src="static/images/ques/smail.png"style="width: 100%;height: 100%">
                        </div>
                        <div style="width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d">
                            Ваша эпигенетика на <Span class="Pobre"></Span> год ниже ожидаемой средней численности
                            населения для вашего хронологического возраста.</div>
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
                <div style="font-size: 24px">СКОЛЬКО ТЕБЕ ЛЕТ?</div>
                <div style="color: #828181;font-size: 16px">Почему важен ваш </div>
                <div style="font-size: 24px">«эпигенетический возраст»??</div>
            </div>
        </div>
    </div>
    <div style="width: 100%;height: 20px;clear: both"></div>

    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 114px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">Люди стареют с разной скоростью. Некоторые «выглядят» и «чувствуют» себя старше своего
                хронологического возраста, в то время как другие выглядят моложе своего хронологического возраста.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 78px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Наш биологический возраст является лучшим показателем нашего здоровья и продолжительности жизни, чем наш
                хронологический возраст.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 150px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Если мы думаем о наших клетках как о миникомпьютерах, мы можем рассматривать ДНК как аппаратное
                обеспечение, генетику как операционную систему, метилирование ДНК и другие эпигенетические факторы как
                программное обеспечение, которое программирует геном.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 170px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Сдвиг парадигмы в поиске биологических маркеров возраста произошел с открытием Хорватом «эпигенетических
                часов», который основан на измерении статуса метилирования ДНК на сотнях стратегических позиций в ДНК.
                Эти «эпигенетические часы» являются мерой нашего биологического возраста.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 134px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                У большинства людей «эпигенетический возраст», измеряемый эпигенетическими часами, и «хронологический
                возраст», измеряемый календарем, очень похожи. Корреляция между двумя показателями в популяции близка к
                0,9, когда 1 является идеальной корреляцией.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 184px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Однако у некоторых людей «эпигенетический возраст» отличается от «хронологического возраста». Иногда
                «эпигенетические часы» движутся быстрее, чем «хронологические часы». Мы рассматриваем разницу, которая
                больше стандартного отклонения (или нормального распределения в популяции), как существенное изменение.
            </div>
        </div>

        <div class="outer" style="clear: both;width: 100%;height: 240px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Исследования показывают, что ускоренные «эпигенетические часы» могут быть связаны с повышенным риском
                развития некоторых хронических заболеваний, связанных с возрастом, таких как сердечно-сосудистые
                заболевания и рак в более позднем возрасте. (link:
                https://www.ncbi.nlm.nih.gov/pubmed/?term=epigenetic+clock+disease).Это, однако, все еще открытое поле,
                и необходимы дополнительные исследования.
            </div>
        </div>
    </div>
    <div style="background-color: #F0F0F0;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%">
        <div style="width: 90%;margin: 0 auto;">
            <div style="width: 100%;clear: both;height: 150px">
                <div style="width: 65%;float: left;font-size: 18px;">
                    Что такое тест<span style="font-size: 24px;color: #1b6fae;">Epiaging?</span><br> <span
                        style="color: #1b6fae;"> Что он означает?</span>
                    <div style="height: 40px;width: 100%"></div>

                </div>
                <div style="width: 35%;float: left"><img src="static/images/ques/rep2.png"
                                                         style="width: 100%;height: 100%">
                </div>
            </div>

            <div class="outer" style="clear: both;width: 100%;height: 300px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    После обширных исследований, мы обнаружили область метилирования ЦГ, которая была
                    достаточной для точного определения биологического возраста с использованием слюны.",
                    "dna": "Мы выделяем ДНК из вашей слюны, а затем измеряем уровень метилирования ДНК в нескольких
                    позициях во фрагменте вашего генома, используя бисульфитную конверсию и секвенирование следующего
                    поколения. Ваши показатели метилирования ДНК вставляются в математическое уравнение, которое и
                    вычисляет «эпигенетический возраст», как функцию уровня метилирования ДНК.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 225px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Мы готовим ДНК из вашей слюны, а затем измеряем уровень метилирования ДНК в нескольких положениях
                    фрагмента вашего генома с использованием секвенирования следующего поколения и картирования бисульфита.
                    Ваши состояния метилирования ДНК вставляются в математическое уравнение, которое вычисляет
                    «эпигенетический возраст» как функцию уровня метилирования ДНК.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 316px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Когда ваш «эпигенетический возраст» отклоняется от вашего «хронологического возраста» на одно
                    стандартное отклонение, мы считаем это «красным флагом». Стандартное отклонение даёт представление о
                    распределении разницы от среднего значения в нормальной популяции, которая на этом этапе анализа
                    составляет около 5 лет. На этом этапе, если ваш «эпигенетический возраст» на 5 лет старше вашего
                    «хронологического возраста», вы можете считать это «красным флагом». По мере накопления большего
                    количества тестов, мы будем получать более точное значение «нормального распределения».
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 140px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Хотя до сих пор неясно, как можно замедлить его «эпигенетические часы», изменения образа жизни,
                    рекомендованные большинством национальных медицинских ассоциаций, являются, пожалуй, отправной точкой.
                    Пожилой «эпигенетический возраст» - это «красный флаг», который намекает на то, что пришло время
                    внести некоторые изменения в образ жизни.
                </div>
            </div>
            <div style="width: 100%;height: auto">
                <div class="outer" style="clear: both;width: 65%;">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px;line-height: 18px">
                        «Красный флаг» может побудить вас действовать в соответствии с вашим образом жизни или
                        проконсультироваться с врачом для проверки.
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
                    Что я могу сделать, если мой <span
                        style="font-size: 18px;color: #1b6fae;font-weight: bold">"«эпигенетический возраст» старше?</span>
                    <div style="width: 40%;float: left"><img src="static/images/ques/rep4.png"
                                                             style="width: 100%;height: 100%"></div>
                </div>
            </div>
            <div style="width: 100%;color: white;height: 30px"></div>
            <div class="outer" style="clear: both;width: 100%;height: 128px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    «Эпигенетика» отличается от «генетики» тем, что эпигенетика потенциально обратима в результате
                    диетических вмешательств и изменений в образе жизни. Таким образом, можно было бы обратить вспять
                    «эпигенетические часы».
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 146px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    Предварительные исследования показывают, что изменения в питании могут замедлять «эпигенетические
                    часы» у некоторых людей, однако этот вопрос всё ещё остаётся открытым. (
                    https://www.ncbi.nlm.nih.gov/pubmed/3<p style="margin: auto 0">0350398)</p>
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 189px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    Изменения образа жизни , включая физические упражнения и пищевые привычки, уже на протяжении
                    некоторого времени рекомендуются национальными медицинскими ассоциациями, однако, нам нужно больше
                    данных о наиболее рекомендуемых изменениях, а также они должны быть персонализированы.
                </div>
            </div>
            <div style="width: 100%; height: 470px">
                <div class="outer" style="width: 60%;float: left; height: 379px">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px">
                        Чтобы изучить рекомендуемые изменения в образе жизни, нам нужно делиться своим опытом с другими
                        и анализировать влияние различий в образе жизни большого количества людей. Теперь это возможно
                        при помощи таких технологий, как приложения, а также искусственный интеллект, которые способны
                        определить, как различные исходные данные, такие как «образ жизни», влияют на результат-
                        «эпигенетические часы».
                    </div>
                </div>
                <div style="width: 36%;float: left;margin-top: 50px">
                    <img src="static/images/ques/rep5.png" style="width: 100%;height: 100%">
                </div>
            </div>
        </div>
    </div>
    <div style="width: 100%;height:370px; margin: auto 0;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep6-1.png" style="width: 100%;height: 100%;">
        </div>
        <div style="position: absolute;top: 64%;left: 4%;text-align: center;width: 96%;font-family: Arial;color: #0968aa;">
            <div style="font-size: 24px">Персонализированное и</div>
            <div style="font-size: 24px;"> систематическое позиционирование</div>
            <div style="color: #828181;font-size: 16px">интеллектуальное приложение для вашего здоровья</div>
        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 148px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Наше приложение предоставляет вам доступ к информации, рекомендуемой авторитетной национальной
                медицинской ассоциацией США, об образе жизни, а также о возможных пищевых добавках, таких как
                S-аденозилметианин, витамины А, Д и Ц.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 172px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Эти ссылки регулярно обновляются и мы рекомендуем вам проводить обновления, периодически проверяя эти
                ссылки. Эти рекомендации основаны на том, что «наука» знает сегодня, но они не идеальны. С увеличением
                количества данных и увеличением числа анализов, знания совершенствуются.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 139px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Наш первый отчёт основан на вводимых вами данных об образе жизни, и они демонстрируют, на сколько сильно
                ваши параметры образа жизни отклоняются от общепринятых рекомендаций. Вы можете принять решение о
                внесении изменений на основе этого отчёта.

            </div>
        </div>
    </div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;height:300px; margin: auto 0;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep7.png" style="width: 100%;height: 100%;">
        </div>
        <div style="position: absolute;top: 72%;left: 4%;text-align: center;width: 96%;font-family: Arial;color: #0968aa;">
            <div style="color: #828181;font-size: 16px">Динамичное долгосрочное партнерство</div>
            <div style="font-size: 24px">достичь «Здорового старения»</div>

        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both;width: 100%; height:48px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Мы предлагаем вам продолжать вводить данные о вашем образе жизни.
            </div>
        </div>
        <div class="outer" style="clear: both; width: 100%; height:126px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Вы будете обновлять данные о вашем образе жизни так регулярно, как вы хотите.
                Вы можете обновить все вопросы, некоторые или нет. Тем не менее, мы считаем, что точные отчеты позволят
                нам предоставить вам лучший анализ.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Мы предлагаем вам отправить вашу слюну на вторичную проверку через 6 месяцев или максимум через год.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 164px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Ваши данные будут анонимными. Ваши данные и данные от многих других анонимных пользователей будут
                проанализированы с помощью искусственного интеллекта для разработки «модели», которая измеряет влияние
                изменений образа жизни на «эпигенетические часы».
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 88px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Как только будет накоплено больше данных, «модель» проверит данные о вашем образе жизни,
                и результаты теста будут переданы вам.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 86px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Мы проанализируем ваш «эпигенетический возраст» и сообщим о достигнутом вами прогрессе и изменениях
                образа жизни.
                
            </div>
        </div>
        <div class="outer" style="width: 100%; height: 30px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;width: 53%">
                Возможные маршруты для изменений будут предложены на основе нашей «модели» и ваших данных.
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
                Мы надеемся, что вместе мы сможем улучшить ваше самочувствие и нашу среду для обучения «умопомрачению».
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
                "                    <div style=\"width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d\">у вас генетический возраст на <Span class=\"Pobre\"></Span>\n" +
                "                      года ниже, чем у населения. </div>\n" +
                "                </div>"
            var real2="<div id=\"smail\" style=\"width: 100%;height:45px\" >\n" +
                "                    <div style=\"width: 8%;margin-right: 2%; float: left\">\n" +
                "                        <img src=\"static/images/ques/sad.png\"style=\"width: 100%;height: 100%\">\n" +
                "                    </div>\n" +
                "                    <div style=\"width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d\"> у вас генетический возраст на  <Span class=\"Pobre\"></Span>\n" +
                "                      года выше, чем у населения.</div>\n" +
                "                </div>"

            var test1="<div id=\"smail\" style=\"width: 100%;height:45px\" >\n" +
                "                    <div style=\"width: 8%;margin-right: 2%; float: left\">\n" +
                "                        <img src=\"static/images/ques/smail.png\"style=\"width: 100%;height: 100%\">\n" +
                "                    </div>\n" +
                "                    <div style=\"width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d\">Ваш график показывает, что генетический возраст на  <Span class=\"Pobre\"></Span>\n" +
                "                        года ниже, чем ожидаемый возраст населения.</div>\n" +
                "                </div>"
            var test2="<div id=\"smail\" style=\"width: 100%;height:45px\" >\n" +
                "                    <div style=\"width: 8%;margin-right: 2%; float: left\">\n" +
                "                        <img src=\"static/images/ques/sad.png\"style=\"width: 100%;height: 100%\">\n" +
                "                    </div>\n" +
                "                    <div style=\"width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d\">Ваша таблица показывает генетический возраст на <Span class=\"Pobre\"></Span>\n" +
                "                          года выше, чем ожидалось население.</div>\n" +
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
