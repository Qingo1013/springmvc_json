<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/3/12
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="https://cdn.staticfile.org/jquery/3.5.1/jquery.min.js" ></script>
    <script type="text/javascript">
      //页面加载事件的简写方式
      //注意ajax支持put、delete方式请求
      $(function () {

          $("#btn1").click(function () {
              $.ajax({
                url:"${pageContext.request.contextPath}/json/request01",
                method:"post",
                data:"张三",
                contentType:'application/json',
                //contentType默认会以form的内容类型（application/x-www-form-urlencoded）提交
                //如果是这种，数据类型就会以“name=qqa&id=1”的方式传入参数
                //如果是‘application/json’类型，就可以传递json{“name":”xxx"}
                dataType:"json",
                success:function (result) {
                  alert(result.name);
                }
              });
          });

        $("#btn2").click(function () {
          $.ajax({
            url:"${pageContext.request.contextPath}/json/request02",
            method:"post",
            data:'{"id":"1","name":"汪星源","birthday":"1999-12-6"}',
            contentType:'application/json',
            //contentType默认会以form的内容类型（application/x-www-form-urlencoded）提交
            //如果是这种，数据类型就会以“name=qqa&id=1”的方式传入参数
            //如果是‘application/json’类型，就可以传递json{“name":”xxx"}
            dataType:"json",
            success:function (result) {
              alert(result.name);
            }
          });
        });

        $("#btn3").click(function () {
          $.ajax({
            url:"${pageContext.request.contextPath}/json/request03",
            method:"post",
            data:'{"id":"1","name":"汪星源","birthday":"1999-12-6"}',
            contentType:'application/json',
            //contentType默认会以form的内容类型（application/x-www-form-urlencoded）提交
            //如果是这种，数据类型就会以“name=qqa&id=1”的方式传入参数
            //如果是‘application/json’类型，就可以传递json{“name":”xxx"}
            dataType:"json",
            success:function (result) {
              alert(result.name);
            }
          });
        });

        $("#btn4").click(function () {
          var listUser = new Array();
          var user1 = {"id":"1","name":"汪星源","birthday":"1999-12-6"};
          var user2 = {"id":"2","name":"wxy","birthday":"1999-10-13"};
          listUser.push(user1);
          listUser.push(user2);
          $.ajax({
            url:"${pageContext.request.contextPath}/json/request04",
            method:"post",
            //data:'[{"id":"1","name":"汪星源","birthday":"1999-12-6"},{"id":"2","name":"wxy","birthday":"1999-10-13"}]',
            data:JSON.stringify(listUser),
            contentType:'application/json',
            //contentType默认会以form的内容类型（application/x-www-form-urlencoded）提交
            //如果是这种，数据类型就会以“name=qqa&id=1”的方式传入参数
            //如果是‘application/json’类型，就可以传递json{“name":”xxx"}
            dataType:"json",
            success:function (result) {
              alert(result.name);
            }
          });
        });

        $("#btn5").click(function () {
          var listUser = new Array();
          var user1 = {"id":"1","name":"汪星源","birthday":"1999-12-6"};
          var user2 = {"id":"2","name":"wxy","birthday":"1999-10-13"};
          listUser.push(user1);
          listUser.push(user2);
          $.ajax({
            url:"${pageContext.request.contextPath}/json/request05",
            method:"put",
            //data:'[{"id":"1","name":"汪星源","birthday":"1999-12-6"},{"id":"2","name":"wxy","birthday":"1999-10-13"}]',
            data:JSON.stringify(listUser),
            contentType:'application/json',
            //contentType默认会以form的内容类型（application/x-www-form-urlencoded）提交
            //如果是这种，数据类型就会以“name=qqa&id=1”的方式传入参数
            //如果是‘application/json’类型，就可以传递json{“name":”xxx"}
            dataType:"json",
            success:function (result) {
              alert(result.name);
            }
          });
        });

      })


    </script>
  </head>
  <body>
  <input type="button" value="发送单个参数的json数据的请求" id="btn1"> <br/>
  <input type="button" value="发送对象的json数据的请求，用javaBean接收" id="btn2"> <br/>
  <input type="button" value="发送对象的json数据的请求，用map接收" id="btn3"> <br/>
  <input type="button" value="发送数组对象的json数据的请求，用List<User>接收" id="btn4"> <br/>
  <input type="button" value="发送数组对象的json数据的请求，用List<User>接收[put方式]" id="btn5"> <br/>
  </body>
</html>
