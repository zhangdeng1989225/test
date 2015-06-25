<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="db" scope="page" class="db.DB" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'modifyto.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!-- <link rel="stylesheet" type="text/css" href="styles.css">	-->

	</head>

	<body>
		<%
		    String id =((String)session.getAttribute("id")).trim();
			String password = new String(request.getParameter("password").trim().getBytes(), "UTF-8");
			String password1 = new String(request.getParameter("password1").trim().getBytes(), "UTF-8");
			String psw_confirm = new String(request.getParameter("psw_confirm").trim().getBytes(), "UTF-8");

			if (!psw_confirm.equals(password1))
				out.println("确认新密码错误");
				
			else{
			  String sql="update student set password='"+password1+"' where id='"+id+"' and password='"+password+"' ";
			  db.executeUpdate(sql);
			  response.sendRedirect("adms.jsp");
			}

		%>

	</body>
</html>
