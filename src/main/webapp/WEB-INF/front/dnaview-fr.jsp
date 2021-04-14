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
                        <div style="height: 33%;text-align: center;font-size:10px">Votre /Âge chronologique/</div>
                        <div style="width: 100%;height: 13%"></div>
                        <div style="height: 30%;text-align: center;color: #439e9d;font-size: 26px;font-weight: bold" id="natura">
                            ${data.naturally}
                        </div>
                        <div style="width: 100%;height: 100%;">
                            <div style="width: 100%;height: 10%"></div>
                            <div style="height: 15%;text-align: center;font-size:10px">Votre attente</div>
                            <div style="height: 15%;text-align: center;font-size:10px">/Âge chronologique/</div>
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
                        <div style="height: 30%;text-align: center;font-size:10px">Votre /Âge biologique/</div>
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
                            Votre épigénétique est inférieure de
                            <Span class="Pobre"></Span> ans à la moyenne de la population attendue pour votre âge chronologique.</div>
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
                <div style="font-size: 24px">QUEL ÂGE AVEZ-VOUS?</div>
                <div style="color: #828181;font-size: 16px">Pourquoi est votre</div>
                <div style="font-size: 24px">"L'âge épigénétique" est important?</div>
            </div>
        </div>
    </div>
    <div style="width: 100%;height: 20px;clear: both"></div>

    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 80px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">Les gens vieillissent à des rythmes différents.
                Certains 'regardent' et 'se sentent' plus vieux que leur âge chronologique, d'autres plus jeunes que leur âge chronologique.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 64px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Nos âges biologiques sont de meilleurs paramètres de notre santé et de
                notre durée de vie que nos âges chronologiques.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 136px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Si nous considérons nos cellules comme des mini-ordinateurs,
                nous pouvons considérer l’ADN comme élément essentiel,
                la génétique comme système d’exploitation, la méthylation de l’ADN et d’autres facteurs épigénétiques comme logiciel de programmation du génome.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 170px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Un changement de paradigme dans la recherche de marqueurs d'âge biologiques s'est produit avec la découverte de
                «l'horloge épigénétique» par Horvath, basée sur la mesure du statut de
                méthylation de l'ADN à des centaines de positions stratégiques dans l'ADN. Cette «horloge épigénétique» est une mesure de nos âges biologiques.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 134px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Chez la plupart des gens, l'âge épigénétique mesuré par l'horloge épigénétique et
                l'âge chronologique mesuré par le calendrier sont très similaires. La corrélation entre les deux mesures dans
                la population est proche de 0,9 lorsque 1 est une corrélation parfaite.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%;height: 170px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Cependant, chez certaines personnes, «l'âge épigénétique» est différent de
                «l'âge chronologique». Parfois, «l'horloge épigénétique» se déplace plus rapidement que «l'horloge chronologique».
                Nous considérons une différence plus grande que l'écart type
                (ou la distribution normale dans la population) comme un changement significatif.
            </div>
        </div>

        <div class="outer" style="clear: both;width: 100%;height: 180px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;line-height: 18px">
                Des études suggèrent qu'une «horloge épigénétique» accélérée pourrait être associée à un risque accru de
                plusieurs maladies chroniques liées à l'âge, telles que les maladies cardiovasculaires et le cancer.
                (https://www.ncbi.nlm.nih.gov/pubmed/?term=epigenetic+clock+disease) Il s'agit toutefois d'un domaine ouvert et de nouvelles études sont nécessaires.
            </div>
        </div>
    </div>
    <div style="background-color: #F0F0F0;height: 7px;width: 100%;clear: both"></div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%">
        <div style="width: 90%;margin: 0 auto;">
            <div style="width: 100%;clear: both;height: 150px">
                <div style="width: 65%;float: left;font-size: 18px;">
                    Quel est le <span style="font-size: 24px;color: #1b6fae;">test d'epiAging?</span><br> <span
                        style="color: #1b6fae;"> Qu'est-ce que ça veut dire?</span>
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
                    Après une analyse approfondie des données, nous avons découvert une seule région de méthylation de
                    CG liée à l'âge, suffisante pour prédire avec précision l'âge biologique en utilisant la salive.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 205px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Nous préparons l'ADN à partir de votre salive, puis mesurons le niveau de méthylation de
                    l'ADN dans plusieurs positions d'un fragment de votre génome à l'aide du séquençage de
                    nouvelle génération et de la cartographie du bisulfite. Vos états de méthylation de
                    l'ADN sont insérés dans une équation mathématique qui calcule «l'âge épigénétique»
                    en fonction du niveau de méthylation de l'ADN.
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 266px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Nous le considérons comme un «drapeau rouge» lorsque votre «âge épigénétique»
                    s'écarte de votre «âge chronologique» d'un écart-type. L'écart-type donne une idée de
                    la distribution de la différence par rapport à la moyenne de la population normale,
                    qui à ce stade de l'analyse est d'environ 5 ans. À ce stade, si votre «âge épigénétique»
                    a 5 ans de plus que votre «âge chronologique», vous pouvez considérer le résultat comme un
                    «drapeau rouge». Au fur et à mesure que davantage de tests sont accumulés, nous obtiendrons
                    une valeur plus précise de la «distribution normale».
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 140px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px;line-height: 18px">
                    Même si on ne sait toujours pas comment on peut ralentir son «horloge épigénétique»,
                    les changements de mode de vie recommandés par la plupart des associations médicales nationales
                    sont peut-être un point de départ. Un «âge épigénétique» plus ancien est un «drapeau rouge»
                    qui laisse entendre qu'il est temps de modifier certains modes de vie.
                </div>
            </div>
            <div style="width: 100%;height: auto">
                <div class="outer" style="clear: both;width: 65%;">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px;line-height: 18px">
                        Un «drapeau rouge» peut vous inciter à modifier votre mode de vie ou à consulter votre
                        médecin pour un bilan.
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
                    Que puis-je faire si mon <span
                        style="font-size: 18px;color: #1b6fae;font-weight: bold">«âge épigénétique» est plus vieux ?</span>
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
                    L '«épigénétique» se distingue de la «génétique» par le fait que l'épigénétique
                    est potentiellement réversible par des interventions alimentaires et des changements de style de vie.
                    Ainsi, il pourrait être possible d'inverser «l'horloge épigénétique».
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 126px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    Des études préliminaires montrent que les changements alimentaires peuvent provoquer
                    une décélération de l'horloge épigénétique chez certaines personnes,
                    mais la question reste ouverte. (https://www.ncbi.nlm.nih.gov/pubmed/30350398)
                </div>
            </div>
            <div class="outer" style="clear: both;width: 100%;height: 70px">
                <div class="circle-outer">
                    <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                </div>
                <div class="para" style="margin-left: 20px">
                    Les changements de style de vie, y compris l'exercice et les habitudes alimentaires,
                    sont recommandés par les associations médicales nationales depuis un certain temps,
                    cependant, nous avons besoin de plus de données sur les changements les plus recommandés et ils
                    doivent être personnalisés.
                </div>
            </div>
            <div style="width: 100%; height: 400px">
                <div class="outer" style="width: 60%;float: left; height: 189px">
                    <div class="circle-outer">
                        <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
                    </div>
                    <div class="para" style="margin-left: 20px">
                        Cela est maintenant possible en utilisant des technologies de partage telles que les applications,
                        ainsi que l'intelligence artificielle, qui pourraient déterminer la manière dont différents intrants,
                        tels que les habitudes de vie, affectent un résultat - «l'horloge épigénétique».
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
            <div style="font-size: 24px">Personnalisé et</div>
            <div style="font-size: 24px;">positionnement systématique</div>
            <div style="color: #828181;font-size: 16px">d'une application intelligente pour votre santé</div>
        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both; width: 100%; height: 146px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Notre application vous renvoie à des informations sur les comportements de mode de vie
                recommandés par une importante association médicale nationale américaine, ainsi qu'à de
                possibles compléments nutritionnels tels que la SAMe, les vitamines A, D et C.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 162px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Ces liens sont mis à jour régulièrement et nous vous suggérons de continuer à les actualiser en les
                examinant périodiquement. Ces recommandations sont basées sur ce que la «science» sait aujourd'hui,
                elles ne sont pas parfaites. Avec plus de données et plus d'analyses, la science s'améliore.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 149px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px">
                Notre premier rapport est basé sur les données de style de vie que vous avez saisies,
                qui montrent à quel point vos paramètres de mode de vie s'écartent des recommandations consensuelles.
                Vous pouvez décider d’apporter des modifications en fonction de ce premier rapport.
            </div>
        </div>
    </div>
    <div style="height: 34px;width: 100%"></div>
    <div style="width: 100%;height:300px; margin: auto 0;position: relative">
        <div style="position: absolute;">
            <img src="static/images/ques/rep7.png" style="width: 100%;height: 100%;">
        </div>
        <div style="position: absolute;top: 72%;left: 4%;text-align: center;width: 96%;font-family: Arial;color: #0968aa;">
            <div style="color: #828181;font-size: 16px">Un partenariat dynamique à long terme </div>
            <div style="font-size: 24px">pour' «vieillir en bonne santé» '</div>

        </div>
    </div>
    <div style="width: 90%;margin: 0 auto;">
        <div class="outer" style="clear: both;width: 100%; height:44px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Nous vous suggérons de continuer à saisir vos données de style de vie.
            </div>
        </div>
        <div class="outer" style="clear: both; width: 100%; height:142px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Vous mettrez à jour vos données de style de vie aussi régulièrement que vous le souhaitez.
                Vous pouvez mettre à jour toutes les questions, certaines ou aucune. Cependant,
                nous pensons que des rapports précis nous permettront de vous fournir une meilleure analyse.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height:64px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Nous suggérons de soumettre votre salive à un deuxième test dans 6 mois ou au maximum un an.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 146px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Vos données seront anonymisées. Vos données et les données de nombreux autres utilisateurs anonymes
                seront analysées par intelligence artificielle afin de développer un 'modèle',
                qui mesure l'impact des changements de mode de vie sur 'l'horloge épigénétique'.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 84px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Une fois que plus de données auront été accumulées, le «modèle» examinera vos données de style de
                vie et les résultats du test seront partagés avec vous.
            </div>
        </div>
        <div class="outer" style="clear: both;width: 100%; height: 88px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;">
                Nous analyserons votre «âge épigénétique» et rendrons compte des progrès et des changements de mode de
                vie que vous avez apportés.

            </div>
        </div>
        <div class="outer" style="width: 100%; height: 106px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;width: 55%">
                Des itinéraires possibles pour le changement seront proposés en fonction de notre «modèle» et de vos données.
            </div>
            <div style="width: 34%;float: right">
                <img src="static/images/ques/rep13.png" style="width: 100%;height: 100%">
            </div>
        </div>
        <div class="outer" style="width: 100%; height: 80px">
            <div class="circle-outer">
                <div style="width: 10px;height: 10px;background-color: grey;border-radius: 50%"></div>
            </div>
            <div class="para" style="margin-left: 20px;width: 53%">
                Nous espérons qu’ensemble nous serons en mesure de faire évoluer votre bien-être et notre environnement d’apprentissage «épiAging».
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
