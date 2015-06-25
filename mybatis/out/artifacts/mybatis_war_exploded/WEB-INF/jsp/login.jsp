<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<HTML>
<HEAD>
    <title>新闻发布系统后台管理</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <LINK href="../CSS/css.css" type="text/css" rel="stylesheet">
    <script language="javascript">
        <!--
        function Check()
        {
            //登陆账号
            if(document.Form1.txtAccountName.value.length==0)
            {
                alert("[登陆账号]不能为空!");
                document.Form1.txtAccountName.focus();
                return false;
            }
            //登陆密码
            if(document.Form1.txtAccountPwd.value.length==0)
            {
                alert("[登陆密码]不能为空!");
                document.Form1.txtAccountPwd.focus();
                return false;
            }


        }
        //-->
    </script>
</HEAD>
<body>
<form name="Form1" method="post" action="user/login.do" id="Form1">
    <input type="hidden" name="__VIEWSTATE" value="dDwxMzk1MTYwMjU5O3Q8O2w8aTwxPjs+O2w8dDw7bDxpPDc+O2k8MTE+Oz47bDx0PHA8cDxsPEltYWdlVXJsOz47bDxEcmF3UGljLmFzcHg/UmFuPSAyMGIyOz4+Oz47Oz47dDxwPDtwPGw8b25DbGljazs+O2w8amF2YXNjcmlwdDpyZXR1cm4gQ2hlY2soKTs+Pj47Oz47Pj47Pj47Pjghde3FD/twvS5aXNL96bWR89+i" />

    <FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT>
    <br>
    <br>
    <br>
    <table width="360" border="0" cellpadding="0" cellspacing="1" bgcolor="#cedbe3" align="center">
        <TR>
            <TD colSpan="2"><strong>管理员登录</strong></TD>
        </TR>
        <tr bgcolor="#ffffff">
            <TD align="right" height="21">登陆账号：</TD>
            <TD>
                <input name="name" type="text" id="name" /><FONT color="#ff0066">*</FONT>
            </TD>
        </tr>
        <tr bgcolor="#ffffff">
            <TD align="right" height="26">
                登陆密码：
            </TD>
            <TD><input name="password" id="txtAccountPwd" type="password" size="15" /><FONT color="#ff0066">*</FONT></TD>
        </tr>

        <tr bgcolor="#ffffff">
            <TD colSpan="2">
                <div align="center">
                    <input type="submit" name="btnLogin" value="登 录" id="btnLogin" onClick="javascript:return Check()" />
                </div>
            </TD>
        </tr>
    </table>
</form>
</body>
</HTML>