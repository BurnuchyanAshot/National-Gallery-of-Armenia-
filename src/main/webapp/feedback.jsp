<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 11/29/2023
  Time: 12:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Հետադարձ կապ</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/feedback.css">
</head>
<body>
<div class="container">
    <jsp:include page="header.jsp" />

    <div class="historycover">
        <div class="history-title page-padding">
            <h2 class="mainheaders">
                    <span class="h2first">
                        Թանգարան
                    </span>
                <span class="h2-slash">
                        /
                    </span>
                Հետադարձ կապ
            </h2>
        </div>
    </div>

    <div class="feedback page-padding">
        <span class="contacts-title">Կոնտակտային Տվյալներ</span>
        <div class="contacts-sections">
            <div class="csleft">
                <div class="generalquestions">
                    <div class="contacts-subtitle">Ընդհանուր հարցերով</div>
                    <div class="margin-bottomtelephone">(+374 10) 58 08 12</div>
                    <div>info@gallery.am</div>
                </div>
                <div class="excursions">

                    <div class="contacts-subtitle">էքսկուրսիոն բաժին</div>
                    <div class="margin-bottomtelephone">(+374 10) 56 74 72</div>
                    <div>galleryarmenia@yahoo.com</div>
                </div>
            </div>
            <div class="csright">
                <form action="feedbackData.jsp" method="get" id="form">
                    <div class="inputfield">
                        <label for="name">Անուն, ազգանուն <sup class="__required" data-v-61c8b3cb="">*</sup></label>
                        <input type="text" id="name" name="name" class="form-input" required>

                    </div>
                    <div class="inputfield">
                        <label for="email">Էլ. փոստի հասցե <sup class="__required"
                                                                data-v-61c8b3cb="">*</sup></label>
                        <input type="email" name="email" id="email" class="form-input" required>

                    </div>
                    <div class="inputfield">
                        <label for="textarea"> Ձեր հաղորդագրությունը
                            <sup class="__required" data-v-61c8b3cb="">*</sup>
                        </label>
                        <textarea id="textarea" name="textarea" class="form-input" required></textarea>
                    </div>
                    <span class="noterequired">
                            Բոլոր հարցերը պարտադիր են լրացման համար։ Ձեր հաարցերի պատասխանները կուղարկվեն նշված
                            էլեկտրոնային հասցեին</span>


                    <input type="submit" value="Ուղարկել" id="submit">
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />

</div>
<script>
    if ()
</script>
</body>

</html>