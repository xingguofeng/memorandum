<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>

<html>
<head>
    <title>添加待完成事项</title>
    <base href="<%=basePath%>" />
</head>
<body>
<style type="text/css">
    body{
        background-image: url(images/p2.jpg);
        background-size:cover;
    }
</style>
<div align="center">
    <form action="/Personal/addPersonal.do" method="post">
        <table>
            <tr>
                <td>时间：</td>
                <td><input type="text" name="time"></td>
            </tr>
            <tr>
                <td>事件：</td>
                <%--<td><input type="text" name="event"></td>--%>
                <td><textarea name="event" cols="80" rows="5" class="area" style="background-color:lightskyblue"></textarea></td>

            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><input type="submit" value="注册"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
