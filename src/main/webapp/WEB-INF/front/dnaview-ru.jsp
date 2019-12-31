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
        <div style="position: absolute;margin-left: 55%;margin-top: 20%;font-family: Arial;color: #0968aa;font-size: 18px">
            <div>Сколько тебе лет?</div>
            <div style="color: #828181;font-size: 14px">Почему важен ваш</div>
            <div> «эпигенетический век»?</div>
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
                        <div style="height: 30%;text-align: center">Ваш / Хронологический возраст/</div>
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
                        <div style="height: 30%;text-align: center">Ваш / Биологический возраст /</div>
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
                        <div style="width: 91%;float: left">Ваш биологический возраст ${data.biological}года.</div>
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
            <div style="width: 91%;float: left">Ваш биологический возраст ниже вашего фактического возраста.</div>
            <div style="width: 100%;height:23px;clear: both"></div>
            <div style="width: 4%;float: left;padding-right: 2%;"><img src="static/images/ques/rep-red.png"
                                                                       style="width: 100%;height: 100%"></div>
            <div style="width: 91%;float: left">Ваш биологический возраст выше, чем ваш.</div>
        </div>
        <div style="width: 100%;height:23px;clear: both"></div>
        <div style="width: 100%;">
            <div style="width: 6%;float: left">
                <div style="width: 63%;height: 12px;border-radius: 30px;background-color: #008000"></div>
            </div>
            <div style="width: 91%;float: left">Другие проверены, их биологический возраст выше, чем их фактический
                возраст
            </div>
        </div>
        <div style="width: 100%;height: 23px;clear: both"></div>
        <div style="width: 100%;">
            <div style="width: 6%;float: left">
                <div style="width: 63%;height: 12px;border-radius: 30px;background-color: #ff3333"></div>
            </div>
            <div style="width: 91%;float: left">Другие протестированы, их биологический возраст ниже, чем их фактический
                возраст
            </div>
        </div>
    </div>
    <div style="width: 100%;height: 34px;clear: both"></div>


    <div style="width: 100%;height:234px; margin: auto;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep1.png" style="width: 100%;height: 100%;">
        </div>
        <div style="position: absolute;margin-left: 55%;margin-top: 20%;font-family: Arial;color: #0968aa;font-size: 18px">
            <div>Сколько тебе лет?</div>
            <div style="color: #828181;font-size: 14px">Почему важен ваш</div>
            <div>«эпигенетический век»?</div>
        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">Люди стареют с разной скоростью. Некоторые «выглядят» и «чувствуют» себя старше своего
                хронологического возраста, в то время как другие выглядят моложе своего хронологического возраста.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 56px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Наш биологический возраст является лучшим показателем нашего здоровья и продолжительности жизни, чем наш
                хронологический возраст.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 68px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                ДНК - это аппаратная часть, генетика - операционная система, а метилирование ДНК и другие
                эпигенетические факторы - это программное обеспечение, которое программирует геном.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Сдвиг парадигмы в поиске биологических маркеров возраста произошел с открытием Хорватом «эпигенетических
                часов», который основан на измерении статуса метилирования ДНК на сотнях стратегических позиций в ДНК.
                Эти «эпигенетические часы» являются мерой нашего биологического возраста.

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                У большинства людей «эпигенетический возраст», измеряемый эпигенетическими часами, и «хронологический
                возраст», измеряемый календарем, очень похожи. Корреляция между двумя показателями в популяции близка к
                0,9, когда 1 является идеальной корреляцией.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 112px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Однако у некоторых людей «эпигенетический возраст» отличается от «хронологического возраста». Иногда
                «эпигенетические часы» движутся быстрее, чем «хронологические часы». Мы рассматриваем разницу, которая
                больше стандартного отклонения (или нормального распределения в популяции), как существенное изменение.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 134px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Исследования показывают, что ускоренные «эпигенетические часы» могут быть связаны с повышенным риском
                развития некоторых хронических заболеваний, связанных с возрастом, таких как сердечно-сосудистые
                заболевания и рак в более позднем возрасте. (link:
                https://www.ncbi.nlm.nih.gov/pubmed/?term=epigenetic+clock+disease).Это, однако, все еще открытое поле,
                и необходимы дополнительные исследования.
            </div>
        </div>
    </div>
    <div style="width: 100%;height: 23px"></div>
    <div style="background-color: #b3b3b3;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%">
        <div style="width: 90%;margin: 0 auto;">
            <div style="width: 100%;clear: both;height: 273px">
                <div style="width: 65%;float: left">
                    Что такое тест<span style="font-size: 22px;color: #1b6fae;"> Epiaging?</span><br> <span
                        style="color: #1b6fae;">Что он означает?</span>
                    <div style="height: 23px;width: 100%"></div>
                    <div class="outer" style="clear: both;width: 100%;height: 80px">
                        <div class="circle-outer">
                            <div class="grey-circle" style="height:45%;width: 67%;"></div>
                        </div>
                        <div class="para">
                            После обширных исследований, мы обнаружили область метилирования ЦГ, которая была
                            достаточной для точного определения биологического возраста с использованием слюны.",
                        </div>
                    </div>
                </div>
                <div style="width: 35%;float: left"><img src="static/images/ques/rep2.png"
                                                         style="width: 100%;height: 100%">
                </div>
                <div style="width: 100%;height: 134px;font-size:12px;clear: both ">
                    "dna": "Мы выделяем ДНК из вашей слюны, а затем измеряем уровень метилирования ДНК в нескольких
                    позициях во фрагменте вашего генома, используя бисульфитную конверсию и секвенирование следующего
                    поколения. Ваши показатели метилирования ДНК вставляются в математическое уравнение, которое и
                    вычисляет «эпигенетический возраст», как функцию уровня метилирования ДНК.
                </div>
            </div>

            <div class="outer" style="clear: both;width: 100%;height: 135px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Мы выделяем ДНК из вашей слюны, а затем измеряем уровень метилирования ДНК в нескольких позициях во
                    фрагменте вашего генома, используя бисульфитную конверсию и секвенирование следующего поколения.
                    Ваши показатели метилирования ДНК вставляются в математическое уравнение, которое и вычисляет
                    «эпигенетический возраст», как функцию уровня метилирования ДНК.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 136px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Мы выделяем ДНК из вашей слюны, а затем измеряем уровень метилирования ДНК в нескольких позициях во
                    фрагменте вашего генома, используя бисульфитную конверсию и секвенирование следующего поколения.
                    Ваши показатели метилирования ДНК вставляются в математическое уравнение, которое и вычисляет
                    «эпигенетический возраст», как функцию уровня метилирования ДНК.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 199px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Когда ваш «эпигенетический возраст» отклоняется от вашего «хронологического возраста» на одно
                    стандартное отклонение, мы считаем это «красным флагом». Стандартное отклонение даёт представление о
                    распределении разницы от среднего значения в нормальной популяции, которая на этом этапе анализа
                    составляет около 5 лет. На этом этапе, если ваш «эпигенетический возраст» на 5 лет старше вашего
                    «хронологического возраста», вы можете считать это «красным флагом». По мере накопления большего
                    количества тестов, мы будем получать более точное значение «нормального распределения».
                </div>
            </div>
            <div style="width: 100%;height: auto">
                <div class="outer" style="clear: both;width: 65%;">
                    <div class="circle-outer">
                        <div class="grey-circle" style="height:45%;width: 67%;"></div>
                    </div>
                    <div class="para">
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
                <div style="width: 35%;float: left"><img src="static/images/ques/rep4.png"
                                                         style="width: 100%;height: 100%"></div>
                <div style="width: 60%;margin-left: 5%; float: left">
                    Что я могу сделать, если мой<span
                        style="font-size: 22px;color: #1b6fae;">"«эпигенетический возраст» старше?"</span>
                    <div style="height: 23px;width: 100%"></div>

                </div>

            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    «Эпигенетика» в значительной степени отличается от «генетики» тем, что эпигенетика потенциально
                    обратима при помощи изменений питания и переменах в образе жизни. Таким образом, эпигенетические
                    часы возможно обратить вспять.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Предварительные исследования показывают, что изменения в питании могут замедлять «эпигенетические
                    часы» у некоторых людей, однако этот вопрос всё ещё остаётся открытым. (
                    https://www.ncbi.nlm.nih.gov/pubmed/30350398)
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 99px">
                <div class="circle-outer">
                    <div class="grey-circle"></div>
                </div>
                <div class="para">
                    Изменения образа жизни , включая физические упражнения и пищевые привычки, уже на протяжении
                    некоторого времени рекомендуются национальными медицинскими ассоциациями, однако, нам нужно больше
                    данных о наиболее рекомендуемых изменениях, а также они должны быть персонализированы.
                </div>
            </div>
            <div style="width: 100%; height: 198px">
                <div class="outer" style="width: 70%;float: left; height: 212px">
                    <div class="circle-outer">
                        <div class="grey-circle"></div>
                    </div>
                    <div class="para">
                        Чтобы изучить рекомендуемые изменения в образе жизни, нам нужно делиться своим опытом с другими
                        и анализировать влияние различий в образе жизни большого количества людей. Теперь это возможно
                        при помощи таких технологий, как приложения, а также искусственный интеллект, которые способны
                        определить, как различные исходные данные, такие как «образ жизни», влияют на результат-
                        «эпигенетические часы».
                    </div>
                </div>
                <div style="width: 30%;float: left;padding-top: 20px;">
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
        <div class="outer" style="clear: both; width: 100%; height: 92px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Наше приложение предоставляет вам доступ к информации, рекомендуемой авторитетной национальной
                медицинской ассоциацией США, об образе жизни, а также о возможных пищевых добавках, таких как
                S-аденозилметианин, витамины А, Д и Ц.
            </div>
        </div>

        <div class="outer" style="clear: both;width: 100%; height: 107px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Эти ссылки регулярно обновляются и мы рекомендуем вам проводить обновления, периодически проверяя эти
                ссылки. Эти рекомендации основаны на том, что «наука» знает сегодня, но они не идеальны. С увеличением
                количества данных и увеличением числа анализов, знания совершенствуются.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 99px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Наш первый отчёт основан на вводимых вами данных об образе жизни, и они демонстрируют, на сколько сильно
                ваши параметры образа жизни отклоняются от общепринятых рекомендаций. Вы можете принять решение о
                внесении изменений на основе этого отчёта.

            </div>
        </div>
    </div>
    <div style="background-color: #b3b3b3;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;height:auto; margin: auto ">
        <img src="static/images/ques/rep7.png" style="width: 100%;height: 100%">
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div style="width: 80%;height: 88px; margin: 0 auto;text-align: center">Динамичное долгосрочное партнёрство ,для
            достижения<span style="color: #1b6fae;font-size: 22px"> «здорового старения» </span>
        </div>

        <div class="outer" style="clear: both; width: 100%; height:210px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Обновляйте данные о вашем образе жизни так часто, как пожелаете. Вы можете обновлять все вопросы, лишь
                некоторые из них либо не обновлять вообще. Тем не менее, мы считаем, что точная отчётность позволит нам
                предоставить для вас лучший анализ. Ваши данные будут анонимными. Ваши данные и данные от многих других
                анонимных пользователей будут проанализированы при помощи искусственного интеллекта для разработки
                «модели», которая позволит измерить влияние изменений образа жизни на «эпигенетические часы».Как только
                будет накоплено больше данных, «модель» проверит данные вашего образа жизни и результаты теста будут
                переданы вам.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 56px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Мы предлагаем вам отправить вашу слюну на вторичную проверку через 6 месяцев или максимум через год.

            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 67px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Мы проанализируем ваш «эпигенетический возраст» и сообщим о достигнутом прогрессе и об изменениях образа
                жизни, которые вы внесли.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 56px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Возможные пути для изменений будут предложены, основываясь на нашей «модели» и ваших данных.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Мы надеемся, что вместе мы сможем улучшить ваше самочувствие и нашу среду изучения «Epiaging».
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Возможные маршруты для изменений будут предложены на основе нашей «модели» и ваших данных
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div class="grey-circle"></div>
            </div>
            <div class="para">
                Мы надеемся, что вместе мы сможем улучшить ваше самочувствие и нашу среду обучения.
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
                    data: ['Хронологический возраст <Биологический возраст', 'Хронологический возраст >Биологический возраст']
                },
                xAxis: [{
                    name: 'Хронологический возраст',
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
                    name: Биологический возраст',
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
                        name: 'Хронологический возраст <Биологический возраст',
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
                        name: 'Хронологический возраст >Биологический возраст',
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
