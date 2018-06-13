<%--
  Created by IntelliJ IDEA.
  User: iqbal
  Date: 09-Oct-17
  Time: 3:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="iqbal.DBbean" %>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="bean" scope="session" class="iqbal.DBbean"/>
<html>
<head>
    <title>User Panel</title>
</head>
<body>
    <%
        try {
            bean.user_jdbc();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    %>
    <jsp:forward page="find_distance.jsp"/>
    <%bean.getConnection().close();%>
</body>
</html>
