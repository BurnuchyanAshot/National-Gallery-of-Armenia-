<%@ page import="MyPackege.CirculatingContentDAO" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="MyPackege.CirculatingContent" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--dnum enq vorpesi haskana utf-8y ev vor javayov el enq grelu mek dakumentum--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Հայաստանի ազգային պատկերասրահ</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"/>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <jsp:include page="header.jsp"/>

    <section class="introduction" id="introduction">
        <div class="introduction-welcome page-padding">
            <div class="introduction-welcome-content">
                <div class="big-intro-name">

                    <div class="line-dot">
                        <div class="line">

                        </div>
                        <div class="dot">

                        </div>
                    </div>

                    <div class="flag-text">
                        <div class="flag">
                            <div class="flag-logo">
                                <img src="images/logo2.jpg" alt="logo">
                            </div>
                        </div>


                        <div class="big-text">
                            <div class="big-text1">
                                Հայաստանի Ազգային Պատկերասրահ
                            </div>
                        </div>
                    </div>
                </div>

                <div class="welcome-box-section">
                    <div class="welcome-box" id="welcome-box" onmouseover="welcomeBoxHover()"
                         onmouseout="welcomeBoxNoHover()">
                        <div class="welcome-text">
                            Բարի գալուստ պատկերասրահ
                        </div>
                        <div class="welcome-introtext">
                            Հայաստանի ազգային պատկերասրահը կերպարվեստի խոշորագույն և հայկական արվեստի հավաքածուով
                            աշխարհի ամենամեծ թանգարանն է:
                        </div>
                        <div class="welcome-link">
                            <a href="">Այցելություն
                                <img id="white-arrow"
                                     src="https://assets.website-files.com/627a18b45c52392f93ad57c8/627a20ad7e277861c756dd82_arrow-right-circle.svg"
                                     alt="">
                                <img id="black-arrow"
                                     src="https://assets.website-files.com/627a18b45c52392f93ad57c8/627aa7431f536a23ec4454c1_arrow-right-circle-black.svg"
                                     alt="">
                            </a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="main-collection page-padding">
        <div class="collection-content">
            <div class="collection-content-left">
                <div class="permanent-collection">
                    Մշտական ցուցադրություն
                </div>
                <div class="permanent-discription">
                    Բացահայտեք ստեղծագործություններ ամբողջ աշխարհից ՝ հայկական և արտասահմանյան կերպարվեստի և
                    դեկորատիվ-կիրառական արվեստի ավելի քան 40 000 բարձրարժեք նմուշներ:
                </div>
            </div>

            <div class="collection-content-right">
                <div class="info-day">
                    <div class="flexbox"><img class="margin-right" style="object-fit: cover;"
                                              src="https://assets.website-files.com/627a18b45c52392f93ad57c8/627a20ae94c796608646da75_ticket%201.svg"
                                              alt=""> Ընդունելություն
                    </div>
                    <div class="flexbox"><img class="margin-right"
                                              src="https://assets.website-files.com/627a18b45c52392f93ad57c8/627a20acf27ff2848a6f9965_clock.svg"
                                              alt=""> Երեքշաբթի-կիրակի
                    </div>
                    <div class="margin-left">Երկուշաբթի</div>
                </div>
                <div class="info-day">
                    <div class="free">Անվճար/վճարովի
                    </div>
                    <div class="hours">11։00 - 18։00</div>
                    <div class="closedhrs">ՓԱԿ Է</div>
                </div>
            </div>
        </div>
    </section>

    <section class="nga-numbers page-padding">
        <div class="nga-numbers-content">
            <div class="thempet-content">
                <div class="themet_content-left">
                    <div class="top-images">
                        <div class="top-img1">
                            <div class="plus">
                                <div class="plus-description">
                                    Սքեյթ 1986
                                </div>
                            </div>
                        </div>
                        <div class="top-img2">
                            <div class="plus">
                                <div class="plus-description">
                                    Եղիշե Չարենց 1923
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="bottom-image">
                        <div class="plus">
                            <div class="plus-description">
                                Իտալական տոն 1854
                            </div>

                        </div>
                    </div>
                </div>

                <div class="themet_content-right">
                    <h1>պատկերասրահի <br> մասին</h1>

                    <div class="collection-content-right">
                        <div class="info-day permanent-discription">
                            <div class="over">ավելի քան</div>
                            <div class="attendees">40.000</div>
                            <div class="attendees-description">Հայկական և արտասահմանյան կերպարվեստի և
                                դեկորատիվ-կիրառական արվեստի բարձրարժեք նմուշներ։
                            </div>
                        </div>
                        <div class="info-day permanent-discription">
                            <div class="over">հիմնադրված</div>
                            <div class="attendees">1921թ</div>
                            <div class="attendees-description">Կերպարվեստի խոշորագույն և հայկական արվեստի
                                հավաքածուով աշխարհի ամենամեծ թանգարանն է։
                            </div>
                        </div>

                    </div>
                    <div class="missionndhistory">
                        <div class="missionndhistory1 ">
                            <a class="text-size-medium miss-a" href="">
                                <div class="mis-hitory-top ">
                                    <span>ԱՌԱՔԵԼՈՒԹՅՈՒՆ և ՊԱՏՄՈՒԹՅՈՒՆ</span>
                                    <img class="arrow-right-circle"
                                         src="https://assets.website-files.com/627a18b45c52392f93ad57c8/627aa7431f536a23ec4454c1_arrow-right-circle-black.svg"
                                         alt="arrow">
                                </div>

                                <div class="line-black permanent-discription">
                                </div>
                            </a>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="main-collection  page-padding">
        <div class="collection-content">
            <div><a href="#circulating_component">Տեսնել բոլոր ցուցահանդեսները</a></div>
            <h2> Հիմա ցուցադրությունում</h2>
        </div>
    </section>

    <section class="section-ehibition ">

        <div class="featured" id="featured">
            <div class="missionndhistory">
                <div class="mis-hitory-top">
                    <span class="over">Հակոբ Գյուրջյանի անվանական ցուցասրահ</span>
                    <div class="div-block-2"> ՎԵՐԱԲԱՑՎԵԼ է</div>
                </div>
                <div class="line-black"></div>
                <div class="exhibition-gif">
                    <a href="">
                        <video class="exhibition-video" src="images/exhibvidcut.mp4" autoplay muted loop></video>
                    </a>
                </div>
                <div class="mis-hitory-top">
                    <h2>Շուրջ 500 աշխատանքներով</h2>
                    <span>ամբողջացել է 1958 թվականին՝ Գյուրջյանի կտակի համաձայն, նրա կնոջ՝ Տատյանա Առաքելյանի
                            նվիրատվության շնորհիվ: Ցուցադրվում են մարմարից, կրաքարից,
                            բրոնզից․․</span>
                    <span class="date"> <span>Ամսաթիվը՝</span> 06.05.2022 - 30.12.2023</span>

                </div>
                <div class="line-black"></div>
                <a class="miss-a" href="">
                    <div class="mis-hitory-top">
                        <span style="margin-left: auto;">ԻՄԱՆՆԱԼ ԱՎԵԼԻՆ</span>
                        <img class="arrow-right-circle"
                             src="https://assets.website-files.com/627a18b45c52392f93ad57c8/627aa7431f536a23ec4454c1_arrow-right-circle-black.svg"
                             alt="arrow">
                    </div>
                </a>
            </div>
        </div>


        <div class="circulating_component" id="circulating_component">
            <h2 class="flex-right">Մշտական շրջանառվող</h2>
            <div class="line-black"></div>

            <div class="marque-animation">
                <div class="marque-content">
                    <!--  hate e petq marquepad -->

                    <%
                        CirculatingContentDAO circulatingContentDAO = new CirculatingContentDAO();
                        try {
                            circulatingContentDAO.fillCirculatingContent();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    %>

                    <%
                        List<CirculatingContent> allCirculatingContent = circulatingContentDAO.getCirculatingContentList();
                        for (int i = 0; i < allCirculatingContent.size(); i++) {

                    %>
                    <div class="marquepad">
                        <div class="marque-card">
                            <div class="marque-img">
                                <img src="images/<%=allCirculatingContent.get(i).getPicture()%>" alt="">
                                <a class="miss-a circulating_view-hover" href="">
                                    <div class="circul-text">ՏԵՍՆԵԼ</div>
                                </a>
                            </div>

                            <a class="miss-a a-margin" href="">
                                <div class="heading-small"><%=allCirculatingContent.get(i).getPictureName()%>
                                </div>
                                <div><%=allCirculatingContent.get(i).getArtist()%>
                                </div>
                                <div class="margin-top margin-medium">
                                    <div class="text-until a-margin"><%=allCirculatingContent.get(i).getMaterial()%>
                                    </div>
                                    <div class="date"><%=allCirculatingContent.get(i).getSizes()%>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="footer.jsp"/>
</div>
<script src="js/script.js"></script>
</body>

</html>