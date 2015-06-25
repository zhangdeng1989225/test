<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'modify.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!-- <link rel="stylesheet" type="text/css" href="styles.css">	-->

	</head>

	<body>
		<form method="post" name="form" action="modifyto.jsp?">
			<table width="255" border="1" height="221">
				<tbody>
					<tr>
						<td>id</td>
						<td>
							<%String id = request.getParameter("id");
							out.print(id);
							session.setAttribute("id",id);  
							//前面要加引号,后面不能加引号  
							//使用方法: session.setAttribute(String name,Java.lang.Object value)
							%>
						</td>
					</tr>
					<tr>
						<td>原密码</td>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						<td>新密码</td>
						<td><input type="password1" name="password1"></td>
					</tr>
					<tr>
						<td>确认新密码</td>
						<td><input type="password1" name="psw_confirm"></td>
					</tr>
					<tr>
						<td><br></td>
						<td align="center">
							<input type="submit" name="submit" value="确定">
							&nbsp;&nbsp;
							<input type="reset" value="重置" name="reset">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
		
		<br>
		<a href="adms.jsp">&lt;&lt;返回</a>

	</body>
</html>
