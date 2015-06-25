<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/6/17
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
    <table>
        <tr>
            <td width="255">标题：${news.news_tm }</td>
        </tr>
        <tr>
            <td>内容：${news.news_nr}</td>
        </tr>
        <tr>
            <td>发布人：${news.news_zz}</td>
        </tr>
        <tr>
            <td>delete</td>
    </table>

</form>
</body>
</html>

