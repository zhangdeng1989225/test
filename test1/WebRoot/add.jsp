<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'add.jsp' starting page</title>

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
		<form method="post" name="form" action="addto.jsp">
			<table width="230" border="1">
				<tbody>
					<tr>
						<td>&nbsp;id</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>password</td>
						<td><input type="password" name="password">	</td>
					</tr>
					<tr>
					    <td></td>
						<td align="center">
							<input type="submit" name="submit" value="添加">
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" name="reset" value="重置">
						</td>
					</tr>
				</tbody>
			</table>
		</form>

		<br>
		<a href="adms.jsp">&lt;&lt;返回</a>
	</body>
</html>
