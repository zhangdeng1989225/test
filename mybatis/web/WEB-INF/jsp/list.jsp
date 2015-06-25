<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${!(empty newsList)}">
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
               <th>新闻编号</th>
				<th>新闻题目</th>
				<th>新闻内容</th>
                <th>作者</th>
                 <th>操作</th>
			</tr>
            <c:forEach items="${newsList}" var="news">
                <tr>

                    <td>${news.news_id }</td>
                    <td>${news.news_tm }</td>
                    <td>${news.news_nr}</td>
                    <td>${news.news_zz}</td>
                     <td><a href="/news/find.do" target="mainFrame">查看</a></td>
                    <td><a href="/news/update.do" target="mainFrame"><font color="blue">更新</font></a>
                    </td>
                    <td><a  href="/news/delete.do?news_id=${news.news_id} "target="mainFrame"><font color="blue">删除</font></a>
                    </td>

                </tr>
            </c:forEach>
		</table>
        <td>点击此处继续添加：<a href="/news/insert.do">Let's go</a></td>
	</c:if>
	


</body>
</html>