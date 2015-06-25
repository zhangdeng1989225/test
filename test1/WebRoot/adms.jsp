<%@ page language="java" pageEncoding="UTF-8" import="java.sql.*"%>

<%--使用MySqlConn.class--%>
<jsp:useBean id="db" scope="page" class="db.DB" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSF 'adms.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<body>

			<%
				String sql = "select * from student"; //调用数据库中的表student
				ResultSet rs = db.executeQuery(sql);
			%>

		<br>
		<table width="600" border="1" align="center">
			<tr>
				<td colspan="4">student表中的内容</td>
				<td width="186" align="center"><a href="add.jsp">增加</a></td>
			</tr>
			<tr>
			     <td width="133" align="center">id</td>
				<td width="133" align="center">name</td>
				<td width="133" align="center">password</td>
				<td width="55" align="center">修改</td>
				<td width="59" align="center">删除</td>

				<td rowspan="4" align="center">
					<form name="searchform" action="search.jsp" method="post">
						<table width="100%" border="0" height="100%">
							<tbody>
								<tr>
									<td><br></td>
								</tr>
								<tr>
									<td><select name="select">
											<option value="id">id</option>
											<option value="password">密码</option>
										</select>
									</td>
								</tr>
								<tr>
									<td><input type="text" value="关键字" name="keyword">	</td>
								</tr>
								<tr>
									<td align="center"><input type="submit" value="Search" name="search"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</td>
				
			</tr>

			<% while (rs.next()) { %>

			<tr>
				<td align="center"><%=rs.getString("id")%></td>
				<td align="center"><%=rs.getString("name")%></td>
				<td align="center"><%=rs.getString("password")%></td>

				<!-- <td align="center"><% out.print("<a href=modify.jsp?id="+rs.getString("id")+">修改"+"</a>"); %></td>  -->

				<td align="center">
					<a href="modify.jsp?id=<%=rs.getString("id")%>">修改</a>
				</td>
				<td align="center">
					<a href="del.jsp?id=<%=rs.getString("id")%>"
						onclick="{if(confirm('删除?')){this.document.myform.submit();return true;} return false;}">删除</a>
				</td>
			</tr>

			<% } %>

		</table>
		
		<br>
		<p><a href="login.jsp">&nbsp;Logout</a></p>
	</body>
</html>