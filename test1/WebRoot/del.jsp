<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<jsp:useBean id="db" scope="page" class="db.DB" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'del.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->

	</head>

	<body>

		<% 
			String id = new String(request.getParameter("id").getBytes("ISO8859-1"), "UTF-8");
			// String user_id = request.getParameter("user_id"); 
			// user_id = new String(id.getBytes("ISO8859-1"),"UTF-8");	 
 
			//int i = 0; 
 
			String sql ="delete from student where id= '"+id+"' "; 
 
			//i = stmt.executeUpdate(sql); 
 
			 db.executeUpdate(sql); 
 
			response.sendRedirect("adms.jsp"); 
		%>

	</body>
</html>
