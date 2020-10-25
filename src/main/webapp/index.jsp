<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>备忘录</title>
    <base href="<%=basePath%>" />
</head>
<body  >
<style type="text/css">
    body{
        background-image: url(images/p1.jpg);
        background-size:cover;
    }
</style>
    <div align="center">
        <p>待办事项管理</p>
        <img src="images/p5.jpg"  align="center" height="400" width="400"/>

    <table>
        <tr>
            <td><a href="addPersonal.jsp"> 插入代办事项</a></td>
        </tr>
        <tr>
            <td><a href="listPersonal.jsp">浏览待办事项</a></td>
        </tr>
    </table>
    </div>

</body>
</html>
