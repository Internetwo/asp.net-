<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>彩云学院职工管理系统—登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta content="IE=7.0000" http-equiv="X-UA-Compatible"/>
<link rel="Stylesheet" href="css/promotion_index.css"/>
    <script type="text/jscript" src="js/js_jquery-1.11.1.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<%--webfonts--%>
<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'/>
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'/>
<%--//webfonts--%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" type=""></script>
</head>
<body>
<div style="DISPLAY: none" id="browser_ie">
    <div class="brower_info">
        <div class="notice_info">
            <P>你的浏览器版本过低，可能导致网站不能正常访问！<br/>为了你能正常使用网站功能，请使用这些浏览器。</P></div>
            <div class="browser_list">
            <span>
            <a href="http://www.google.cn/intl/zh-CN/chrome/browser/desktop/index.html" target="_blank">
            <img src="images/Chrome.png" alt=""/><br/>Chrome</a>
            </span>
            <span>
            <a href="http://www.firefox.com.cn/" target="_blank">
            <img src="images/Firefox.png" alt=""/><br/>Firefox</A>
            </span>
            <span>
            <a href="http://www.apple.com/cn/safari/" target="_blank">
            <img src="images/Safari.png" alt=""/><br/>Safari</a>
            </span>
            <span>
            <a href="http://ie.microsoft.com/" target="_blank">
            <img src="images/IE.png" alt=""/><br/>IE9及以上</a>
            </span>
        </div>
    </div>
</div>
    <script type="">
        if (!$.support.leadingWhitespace) 
        {
            $("#browser_ie").show();
        }
    </script>
<div style="text-align:center;margin:0 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p>适用浏览器：360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. 不支持IE8及以下浏览器。</p>
</div>
<script type="">    $(document).ready(function (c) {
        $('.close').on('click', function (c) {
            $('.login-form').fadeOut('slow', function (c) {
                $('.login-form').remove();
            });
        });
    });
</script>
<%--SIGN UP--%>
 <h1>彩云学院职工信息管理系统</h1>
<form id="form1" runat="server">
<div class="login-form">
			<div class="clear"> </div>
	<div class="avtar">
		<img src="images/avtar.png" alt="" />
	</div>
			<form action="">
            <div>
            <table>
            <tr>
            <td>
                    <asp:TextBox ID="TextBox1" placeholder="用户名" runat="server"></asp:TextBox>
                    </td>
                    </tr>
            <tr>
            <td>
                        <asp:TextBox ID="TextBox2" placeholder="********" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    </tr>
            <tr>
            <td>
                    <asp:TextBox ID="TextBox3" placeholder="验证码" runat="server"></asp:TextBox>
                    
                    </td>
                    </tr>
                    </table>
                    </br>
                    <div align="left"><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;验证码：</font>
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" 
                            onclick="LinkButton1_Click"></asp:LinkButton>
                    </div>
                    </div>
			</form>
            </br>
	<div class="signin">
        <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
	</div>
</div>
</form>
</body>
</html>
