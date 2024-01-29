<%@ page import="MyPackege.EmployeeDB" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="MyPackege.Employee" %><%--
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
    <title>Ադմինիստրացիա</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/administration.css">
</head>

<body>
<div class="container">
    <jsp:include page="header.jsp" />

    <section class="asministracia-title">

        <div class="historycover">
            <div class="history-title page-padding">
                <h2 class="mainheaders">
                            <span class="h2first">
                                Թանգարան
                            </span>
                    <span class="h2-slash">
                                /
                            </span>
                    Ադմինիստրացիա
                </h2>
            </div>
        </div>

        <div class="administration page-padding">

            <%
                EmployeeDB employeeDB = new EmployeeDB();
                try{
                    employeeDB.fillEmployees();
                }catch (SQLException e){
                    e.printStackTrace();
              }
            %>
            <%
                List<Employee> employeeDBList = employeeDB.getEmployeeList();
                for (int i = 0; i < employeeDBList.size(); i++) {
            %>
            <div class="employee">
                <div class="employeepicture">
                    <img class="employeepictureimg" src="images/<%=employeeDBList.get(i).getEmployeePicture()%>" alt="">
                </div>
                <div class="employeeinfo">
                    <span class="employee-name"><%=employeeDBList.get(i).getEmployeeNameSurname()%></span>
                    <span class="employee-contacts"><%=employeeDBList.get(i).getEmployeePosition()%></span>
                    <span class="employee-contacts"><%=employeeDBList.get(i).getEmployeePhoneNumber()%></span>
                    <span class="employee-contacts"><%=employeeDBList.get(i).getEmployeeEmail()%></span>
                </div>
            </div>

            <% }%>
        </div>
    </section>
    <jsp:include page="footer.jsp" />
</div>

</body>

</html>