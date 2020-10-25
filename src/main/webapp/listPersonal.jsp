<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>查询事件ajax</title>
    <base href="<%=basePath%>" />
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">

        $(function(){
            //在当前页面dom对象加载后，执行loadStudentData（）
            loadStudentData();

            $("#btnLoader").click(function(){
                //loadStudentData();
                alert($("#country > option:selected").val());

                alert($("#country > option:selected").text());
            })
        })

        function loadStudentData(){
            $.ajax({
                url:"Personal//queryPersonal.do",
                type:"get",
                dataType:"json",
                success:function(data){
                    //清除旧的数据
                    $("#info").html("");
                    //增加新的数据
                    $.each(data,function(i,n){
                        $("#info").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.time+"</td>")
                            .append("<td>"+n.event+"</td>")
                            .append("</tr>")

                    })
                }
            })
        }
    </script>
</head>
<body>
<style type="text/css">
    body{
        background-image: url(images/p3.jpg);
        background-size:cover;
    }
</style>

    <div align="center">
        <table>
            <thead>
             <tr>
                 <td>id</td>
                 <td>日期</td>
                 <td>事件</td>
             </tr>
            </thead>
            <tbody id="info">

            </tbody>
        </table>

    </div>
</body>
</html>
