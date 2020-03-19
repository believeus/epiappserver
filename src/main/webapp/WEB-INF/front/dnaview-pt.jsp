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
                        <div style="height: 33%;text-align: center;font-size:10px">Sua / Idade cronológica /</div>
                        <div style="width: 100%;height: 13%"></div>
                        <div style="height: 30%;text-align: center;color: #439e9d;font-size: 26px;font-weight: bold" id="natura">
                            ${data.naturally}11
                        </div>
                        <div style="width: 100%;height: 100%;">
                            <div style="width: 100%;height: 10%"></div>
                            <div style="height: 15%;text-align: center;font-size:10px">Sua idade</div>
                            <div style="height: 15%;text-align: center;font-size:10px">/ cronológica esperada/</div>
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
                        <div style="height: 30%;text-align: center;font-size:10px">Sua /Idade biológica /</div>
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
                        <div style="width: 89%;float: left;margin-left: 1%;text-align: center;line-height: 20px;font-size: 16px;font-weight: bold;color: #439e9d">
                            Seu Epigenético é <Span class="Pobre"></Span> anos menor que a média esperada da população para a sua idade cronológica.</div>
                    </div>

                </div>
            </div>

        </div>
    </div>

    <div style="width: 100%;height: 34px;clear: both"></div>
    <div style="width: 100%;margin: 0px auto;">
        <div id="main" style="width: 100%;height:320px;margin: 0px auto;position: relative">
            <div style="position: absolute;">
                <img src="static/images/ques/rep12.jpg" style="width: 100%;height: 100%;">
            </div>
            <div style="position: absolute;top: 70%;text-align: right;width: 96%;font-family: Arial;color: #0968aa;">
                <div style="font-size: 24px">QUANTOS ANOS VOCÊ TEM?</div>
                <div style="color: #828181;font-size: 16px">Por que a sua</div>
                <div style="font-size: 24px"> "idade epigenética" é importante?</div>
            </div>
        </div>
    </div>
    <div style="width: 100%;height: 20px;clear: both"></div>

    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 100px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">As pessoas envelhecem a taxas diferentes. Alguns "parecem" e "sentem" mais que a idade cronológica,
                enquanto outros parecem mais jovens que a idade cronológica.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 80px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Nossa idade biológica é um parâmetro melhor de nossa saúde, bem-estar e expectativa
                de vida do que nossa idade cronológica.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 116px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Se pensarmos em nossas células como minicomputadores, podemos considerar o DNA como o hardware,
                a genética como o sistema operacional e a metilação do DNA e outros fatores epigenéticos
                como o software que programa o genoma.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 150px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Uma mudança de paradigma na busca de marcadores biológicos da idade ocorreu com
                a descoberta do \"relógio epigenético\" de Horvath, que se baseia na medição do status de metilação do
                DNA em centenas de posições estratégicas no DNA. Este 'relógio epigenético' é uma medida de nossas
                idades biológicas.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 134px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Na maioria das pessoas, a 'idade epigenética' medida pelo relógio epigenético e a 'idade cronológica'
                medida pelo calendário são muito semelhantes. A correlação entre as duas medidas na população é próxima
                de 0,9 quando 1 é uma correlação perfeita.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 150px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                No entanto, em algumas pessoas, a \"idade epigenética\" é diferente da \"idade cronológica\". Às vezes,
                o 'relógio epigenético' se move mais rápido que o 'relógio cronológico'. Consideramos uma diferença maior
                que o desvio padrão (ou a distribuição normal na população) como uma mudança significativa.
            </div>
        </div>

        <div class="outer" style="clear: both;width: 100%;height: 190px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Estudos sugerem que o “relógio epigenético” acelerado pode estar associado a um risco aumentado para
                várias doenças crônicas relacionadas à idade, como doenças cardiovasculares e câncer, mais tarde.
                (link: https://www.ncbi.nlm.nih.gov/pubmed/?term=epigenetic+clock+disease). No entanto, este ainda é um
                campo aberto e são necessários mais estudos.
            </div>
        </div>
    </div>
    <div style="background-color: #F0F0F0;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%">
        <div style="width: 90%;margin: 0 auto;">
            <div style="width: 100%;clear: both;height: 150px">
                <div style="width: 65%;float: left;font-size: 18px;">
                    O que é <span style="font-size: 24px;color: #1b6fae;">teste epiAging?</span><br> <span
                        style="color: #1b6fae;"> O que isso significa?</span>
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
                    Após extensa mineração de dados, descobrimos uma única região de metilação por CG relacionada à
                    idade que era suficiente para prever com precisão a idade biológica usando saliva.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 175px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Preparamos o DNA da sua saliva e medimos o nível de metilação do DNA em várias posições em um
                    fragmento do seu genoma, usando o sequenciamento de próxima geração e o mapeamento de bissulfito.
                    Seus estados de metilação do DNA são inseridos em uma equação matemática que calcula a
                    'idade epigenética' em função do nível de metilação do DNA.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 286px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Consideramos isso como uma \"bandeira vermelha\" quando sua \"idade epigenética\" se desvia da
                    sua \"idade cronológica\" em um desvio padrão. O desvio padrão fornece uma idéia sobre a distribuição
                    da diferença em relação à média na população normal, que neste momento da análise é de 5 anos.
                    Nesse estágio, se a sua 'idade epigenética' for 5 anos mais antiga que a sua 'idade cronológica',
                    considere o resultado como uma 'bandeira vermelha'. À medida que mais testes são acumulados,
                    obteremos um número mais preciso da 'distribuição normal'.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 140px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Embora ainda não esteja claro como se pode desacelerar seu \"relógio epigenético\",
                    as mudanças no estilo de vida recomendadas pela maioria das associações médicas nacionais talvez
                    sejam um ponto de partida. Uma idade avançada é uma “bandeira vermelha” e não mais que sugere
                    que talvez seja hora de fazer algumas mudanças no estilo de vida.
                </div>
            </div>
            <div style="width: 100%;height: auto">
                <div class="outer" style="clear: both;width: 65%;">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px;line-height: 18px">
                        Uma 'bandeira vermelha' pode levar você a agir de acordo com seu estilo de vida ou consultar
                        seu médico para um check-up.
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
                    O que posso fazer se minha idade <span
                        style="font-size: 18px;color: #1b6fae;font-weight: bold">epigenética 'for mais antiga?</span>
                    <div style="width: 40%;float: left"><img src="static/images/ques/rep4.png"
                                                             style="width: 100%;height: 100%"></div>
                </div>
            </div>
            <div style="width: 100%;color: white;height: 30px"></div>
            <div class="outer" style="clear: both;width: 100%;height: 130px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    'Epigenética' é diferente de 'genética', de maneira substancial que a epigenética é potencialmente
                    reversível por intervenções alimentares e mudanças no estilo de vida. Portanto,
                    pode ser possível reverter o \"relógio epigenético\".
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 146px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    Estudos preliminares mostram que mudanças na dieta podem causar desaceleração do
                    relógio epigenético em certas pessoas, porém essa ainda é uma questão em aberto.
                    (https://www.ncbi.nlm.nih.gov<p style="margin: auto 0">/pubmed/30350398)</p>
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 140px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    As mudanças no estilo de vida, incluindo exercícios e hábitos alimentares,
                    são recomendadas pelas associações médicas nacionais há algum tempo; no entanto,
                    precisamos de mais dados sobre as mudanças mais recomendáveis ​​e elas devem ser personalizadas.
                </div>
            </div>
            <div style="width: 100%; height: 430px">
                <div class="outer" style="width: 60%;float: left; height: 400px">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px">
                        Uma maneira de aprender sobre mudanças de estilo de vida recomendáveis ​​é compartilhar
                        nossas experiências com outras pessoas e analisar o impacto das diferenças no estilo de vida
                        em uma grande população. Agora é possível usar tecnologias de compartilhamento como o Apps
                        e inteligência artificial que podem determinar como diferentes entradas, como hábitos
                        de 'estilo de vida', afetam um resultado - o 'relógio epigenético'.
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
            <div style="font-size: 24px">Personalizado e</div>
            <div style="font-size: 24px;">posicionamento sistemático</div>
            <div style="color: #828181;font-size: 16px">de fora aplicativo inteligente para sua saúde</div>
        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 146px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Nosso aplicativo conecta você a informações sobre comportamentos recomendados no estilo de vida de
                importantes associações médicas nacionais dos EUA, bem como a possíveis suplementos nutricionais,
                como SAMe, vitamina A, D e C.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 150px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Esses links são atualizados regularmente e sugerimos que você continue atualizando examinando os
                links periodicamente. Essas recomendações são baseadas no que a “ciência” sabe hoje, elas não
                são perfeitas. Com mais dados e mais análises, a ciência está melhorando.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 139px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Nosso primeiro relatório é baseado nos dados de estilo de vida que você inseriu, que mostram até que
                ponto seus parâmetros de estilo de vida se desviam das recomendações de consenso. Você pode decidir
                fazer alterações com base neste relatório.

            </div>
        </div>
    </div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;height:300px; margin: auto 0;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep7.png" style="width: 100%;height: 100%;">
        </div>
        <div style="position: absolute;top: 72%;left: 4%;text-align: center;width: 96%;font-family: Arial;color: #0968aa;">
            <div style="color: #828181;font-size: 16px">Uma parceria dinâmica de longo prazo para</div>
            <div style="font-size: 24px">alcançar o 'envelhecimento saudável'</div>

        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both;width: 100%; height:44px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Sugerimos que você continue inserindo seus dados de estilo de vida.
            </div>
        </div>
        <div class="outer" style="clear: both; width: 100%; height:126px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Você atualizará seus dados de estilo de vida com a mesma regularidade que deseja.
                Você pode atualizar todas as perguntas, algumas ou nenhuma. No entanto, acreditamos que os
                relatórios precisos nos permitirão fornecer uma análise melhor.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Sugerimos que em 6 meses ou no máximo um ano você submeta sua saliva a um segundo teste.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 124px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Seus dados serão anonimizados. Seus dados e dados de outros usuários anônimos são
                analisados ​​por inteligência artificial para desenvolver um 'modelo',
                que mede o impacto das mudanças no estilo de vida no 'relógio epigenético'.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 88px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Depois que mais dados forem acumulados, o 'modelo' examinará seus dados de estilo de vida e os
                resultados do teste serão compartilhados com você.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 66px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Analisaremos sua 'idade epigenética' e informaremos sobre o progresso e as mudanças de
                estilo de vida que você fez.
            </div>
        </div>
        <div class="outer" style="width: 100%; height: 30px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;width: 53%">
                rotas possíveis para a mudança será oferecido com base no nosso 'modelo' e seus dados.
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
                Esperamos que juntos possamos co-evoluir o seu bem-estar e nosso ambiente de aprendizado 'epiAging'.
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
