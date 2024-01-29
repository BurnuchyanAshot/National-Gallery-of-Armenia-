<%@ page import="java.util.ConcurrentModificationException" %>
<%@ page import="MyPackege.ConnectionDB" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.ResourceBundle" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 11/29/2023
  Time: 4:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%

        ConnectionDB connectionDB = new ConnectionDB();
        Statement statement = connectionDB.connect().createStatement();
        ResultSet resultSet = null;
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("textarea");
        int rowsAffected =  statement.executeUpdate("INSERT INTO feedback VALUES (null, '"+name+"', '" + email + "', '" + message +"')");

        if (rowsAffected == 1) {%>
            <script type="text/javascript">
                alert("Ձեր հաղորդագրությունը հաջողությամբ ուղարկվեց");
                window.location.href = "feedback.jsp";
            </script>
        <%
            }
        %>

</body>
</html>
