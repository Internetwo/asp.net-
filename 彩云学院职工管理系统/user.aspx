<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>彩云学院职工管理系统</title>
    <style type="text/css">
        body
        {
	    background: url(images/bg1.jpg) no-repeat 0px 0px;
	    font-family: 'Open Sans', sans-serif;
	    background-size:cover;
	    -webkit-background-size:cover;
	    -moz-background-size:cover;
	    -o-background-size:cover;
	    min-height:100%;
        }
        .style1
        {
            width: 70%;
            height:500px;
            background-color: #FFFFFF;
        }
        .style3
        {
            text-align: center;
            font-family: 黑体;
            font-size: 40pt;
            height: 105px;
        }
        .style6
        {
            text-align: right;
            height: 29px;
            font-weight: bold;
        }
        .style7
        {
            text-align: left;
            height: 29px;
            font-weight: bold;
        }
        .style8
        {
            text-align: center;
            height: 29px;
        }
        .style9
        {
            text-align: right;
            height: 30px;
            font-weight: bold;
        }
        .style10
        {
            text-align: left;
            height: 30px;
            font-weight: bold;
        }
        .style11
        {
            text-align: center;
            height: 30px;
        }
        .style12
        {
            text-align: right;
            height: 31px;
            font-weight: bold;
        }
        .style13
        {
            text-align: left;
            height: 31px;
            font-weight: bold;
        }
        .style14
        {
            text-align: center;
            height: 31px;
        }
        .style15
        {
            text-align: center;
            height: 29px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style3" colspan="3">
                    <strong>员工信息表</strong></td>
            </tr>
            <tr>
                <td class="style9" bgcolor="#99CCFF">
                    工号：</td>
                <td class="style10" bgcolor="#99CCFF">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="style11" bgcolor="#99CCFF">
                </td>
            </tr>
            <tr>
                <td class="style12">
                    身份证号：</td>
                <td class="style13">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style9" bgcolor="#99CCFF">
                    姓名：</td>
                <td class="style10" bgcolor="#99CCFF">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="style11" bgcolor="#99CCFF">
                </td>
            </tr>
            <tr>
                <td class="style9">
                    手机号：</td>
                <td class="style10">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="TextBox1" runat="server" Height="19px" 
                        style="text-align: left"></asp:TextBox>
                &nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#3399FF" 
                        onclick="Button1_Click" Text="更改" />
                </td>
            </tr>
            <tr>
                <td class="style9" bgcolor="#99CCFF">
                    部门：</td>
                <td class="style10" bgcolor="#99CCFF">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td class="style11" bgcolor="#99CCFF">
                </td>
            </tr>
            <tr>
                <td class="style9">
                    用户名：</td>
                <td class="style10">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td class="style11">
                </td>
            </tr>
            <tr>
                <td class="style6" bgcolor="#99CCFF">
                    密码：</td>
                <td class="style7" bgcolor="#99CCFF">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td class="style8" bgcolor="#99CCFF">
                    <asp:TextBox ID="TextBox2" runat="server" style="text-align: left"></asp:TextBox>
                &nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#3399FF" 
                        onclick="Button2_Click" Text="更改" />
                </td>
            </tr>
            <tr>
                <td class="style15" colspan="3">
                    <asp:Button ID="Button3" runat="server" BackColor="#3399FF" 
                        onclick="Button3_Click" Text="退出登录" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
