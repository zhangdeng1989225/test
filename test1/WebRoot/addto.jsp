<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<jsp:useBean id="db" scope="page" class="db.DB" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'addto.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

	</head>
	<body>

		<%
			String name =new String(request.getParameter("name").trim().getBytes("ISO8859-1"),"UTF-8");
			
			String password =new String(request.getParameter("password").trim().getBytes("ISO8859-1"),"UTF-8");

			String sql = "insert into student(name,password) values('"+name+"','"+password+"')";

			db.executeUpdate(sql);
			
			response.sendRedirect("adms.jsp");
		%>

	</body>
</html>
