<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<jsp:useBean id="db" scope="page" class="db.DB" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'search.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->

	</head>
	<body>
		<%
			String select = request.getParameter("select");
			String keyword = request.getParameter("keyword").trim();
			ResultSet rs = null; //需要在些声明并定义为null,否则后面的rs.XXX报错

			if (select.equals("id")) {
				String sql = "select * from student where id like '%"+keyword+"%' ";
				rs =db.executeQuery(sql);
			} 
			else if (select.equals("password")) {
				String sql = "select * from student where password like '%"+keyword+"%' ";
				rs = db.executeQuery(sql);
			}
		%>

		<table width="200" border="1">
			<tbody>
				<tr>
					<td>id</td>
					<td>password</td>
				</tr>

				<% while (rs.next()) { %>
				<tr>
					<td><%=rs.getString("id")%></td>
					<td><%=rs.getString("password")%></td>
				</tr>
				<% } %>

			</tbody>
		</table>

	</body>
</html>
