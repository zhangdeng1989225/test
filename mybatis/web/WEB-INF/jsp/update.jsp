<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
</head>

<body>
<form action="/news/updatenews.do" method="post" >
    <table width="358" border="0" align="center">

        <tr>
            <th scope="row"><div align="right">编号</div></th>
            <td><input type="text" name="news_id"  /></td>
        </tr>
        <tr>
            <th scope="row"><div align="right">新闻题目</div></th>
            <td><input type="text" name="news_tm" /></td>
        </tr>
        <tr>
            <th scope="row"><div align="right">新闻内容</div></th>
            <td><textarea name="news_nr" ></textarea></td>
        </tr>
        <tr>
            <th scope="row"><div align="right">作者</div></th>
            <td><input type="text" name="news_zz"/></td>

</tr>
        <tr>
            <th colspan="2" scope="row"><input type="submit" name="Submit" value="提交" /></th>
        </tr>

    </table>
</form>
</body>
</html>
