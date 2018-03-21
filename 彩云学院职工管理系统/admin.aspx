<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>彩云学院职工管理系统</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-family: 黑体;
            text-align: center;
        }
        .style3
        {
            width: 500px;
            background-color:white;
        }
        .style4
        {
            height: 24px;
            text-align: center;
            background-color:white;
            width: 159px;
        }
        .style5
        {
            text-align: right;
            background-color:white;
        }
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
        .style6
        {
            text-align: right;
            background-color: white;
            width: 159px;
        }
        .style7
        {
            text-align: center;
            background-color:white;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td>
                    <h1 class="style2"><font color="white">
                        用户信息管理界面</font></h1>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" valign="top">
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" Text="添加用户信息" 
                        onclick="Button1_Click" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" BorderStyle="None" Text="查询管理用户" 
                        onclick="Button2_Click" />
&nbsp;
                    <asp:Button ID="Button3" runat="server" BorderStyle="None" Text="修改管理密码" 
                        onclick="Button3_Click" />
&nbsp;
                    <asp:Button ID="Button6" runat="server" BorderStyle="None" Text="退出登录" 
                        onclick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="View1" runat="server">
                        <table align="center" cellpadding="0" cellspacing="0" class="style3">
                                <tr>
                                    <td class="style6">
                                        工号：
                                        </td>
                                        <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="请不要以零开头！" 
                        ValidationExpression="^[1-9]*[1-9][0-9]*$"></asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        身份证号：
                                        </td>
                                        <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="请注意正确格式！" 
                        ValidationExpression="^(^[1-9]\d{7}((0[1-9])|(1[0-2]))(([1|2]\d)|([0][1-9])|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0[1-9])|(1[0-2]))(([1|2]\d)|([0][1-9])|3[0-1])((\d{4})|\d{3}[Xx])$)"></asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        姓名：
                                        </td>
                                        <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="请注意使用汉字！" 
                        ValidationExpression="^[\u4e00-\u9fbb]+$"></asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        手机号：
                                        </td>
                                        <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="请注意号码格式！" 
                        ValidationExpression="(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)"></asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        部门：
                                        </td>
                                        <td>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="请注意使用汉字！" 
                        ValidationExpression="^[\u4e00-\u9fbb]+$"></asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        用户名：
                                        </td>
                                        <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="请用字母或数字！" 
                        ValidationExpression="^[A-Za-z0-9]+$"></asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        密码：
                                        </td>
                                        <td>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        <asp:Label ID="Label1" runat="server" Text="密码可随意设置！" ForeColor="Red"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td class="style4">
                                        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="确定" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="Button5" runat="server" Text="重置" onclick="Button5_Click" />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>--请选择--</asp:ListItem>
                                <asp:ListItem>工号</asp:ListItem>
                                <asp:ListItem>身份证号</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            <asp:Button ID="Button9" runat="server" Text="确定" onclick="Button9_Click" />
                            &nbsp;
                            <asp:Button ID="Button10" runat="server" onclick="Button10_Click" Text="显示全部" />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="None" Align="center" 
                                AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                                onrowcancelingedit="GridView1_RowCancelingEdit" 
                                onrowediting="GridView1_RowEditing" PageSize="5" 
                                DataKeyNames="工号,身份证号,姓名,手机号,部门,用户名,密码" onrowdeleting="GridView1_RowDeleting" 
                                onrowupdating="GridView1_RowUpdating">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="工号" HeaderText="工号"/>
                            <asp:BoundField DataField="身份证号" HeaderText="身份证号"/>
                            <asp:BoundField DataField="姓名" HeaderText="姓名" />
                            <asp:BoundField DataField="手机号" HeaderText="手机号" />
                            <asp:BoundField DataField="部门" HeaderText="部门" />
                            <asp:BoundField DataField="用户名" HeaderText="用户名" ReadOnly="true"/>
                            <asp:BoundField DataField="密码" HeaderText="密码" ReadOnly="true"/>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                        CommandName="Delete" onclientclick="return confirm(&quot;确定删除吗？&quot;)" 
                                        Text="删除"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                        <table align="center" cellpadding="0" cellspacing="0" class="style3">
                                <tr>
                                    <td class="style7">
                                        原始密码：<asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        修改密码：<asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        确认密码：<asp:TextBox ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        <asp:Button ID="Button7" runat="server" Text="确定" onclick="Button7_Click" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="Button8" runat="server" Text="重置" onclick="Button8_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
