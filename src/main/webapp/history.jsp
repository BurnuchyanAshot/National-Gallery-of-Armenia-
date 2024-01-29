<%@ page import="MyPackege.HistoryDAO" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="MyPackege.History" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 11/28/2023
  Time: 12:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Պատմություն</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/history.css">
</head>

<body>
<div class="container">
    <jsp:include page="header.jsp" />

    <section class="history">
        <div class="historycover">
            <div class="history-title page-padding">
                <h2 class="mainheaders">
                        <span class="h2first">
                            Թանգարան
                        </span>
                    <span class="h2-slash">
                            /
                        </span>
                    Պատմություն
                </h2>
            </div>
        </div>

        <div class="history-content page-padding">
            <div class="history-inner-content">
                <%
                    HistoryDAO historyDAO = new HistoryDAO();
                    try{
                        historyDAO.fillHistory();
                    }catch(SQLException e) {
                        e.printStackTrace();
                    }
                %>
                <%
                    List<History> historyList = historyDAO.getHistoryList();

                    for (int i = 0; i < historyList.size(); i++) {

                %>
                <div class="history-content-box">
                    <div class="<%=i%2==0?"line-horizontal":"line-horizontal2"%>">
                        <span class="year"><%=historyList.get(i).getHistoryYear()%></span>
                        <div class="<%=i%2==0?"rect1":"rect4"%>"></div>
                        <div class="<%=i%2==0?"rect2":"rect5"%>"></div>
                        <div class="<%=i%2==0?"rect3":"rect6"%>"></div>
                    </div>

                    <p class="image-history-box">
                    <div class="<%=i%2==0?"line-horizontal-image":"line-horizontal-image-right"%>">
                        <div class="rect3image"></div>
                        <div class="rect4image"></div>
                    </div>
                    <img class="<%=i%2==0?"img-left":"img-right"%>" src="images/<%=historyList.get(i).getHistoryPicture()%>" alt="">
                    <%=historyList.get(i).getHistoryText()%>
                    </p>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </section>

    <jsp:include page="footer.jsp" />

</div>


<script src="js/script.js"></script>
</body>

</html>
