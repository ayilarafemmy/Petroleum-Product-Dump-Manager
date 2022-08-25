<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_staff.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 17px;
            background-color: #CC0066;
        }
        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style4 {
            color: #FFFFFF;
            background-color: #990099;
        }
        .auto-style5 {
            text-align: right;
            width: 153px;
            color: #FFFFFF;
            background-color: #990099;
        }
        .auto-style6 {
            text-align: right;
            height: 26px;
            width: 153px;
            color: #FFFFFF;
            background-color: #990099;
        }
        .auto-style7 {
            height: 26px;
            width: 17px;
            background-color: #CC0066;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style11 {
            color: #CC0066;
            background-color: #FFFFFF;
        }
        .auto-style12 {
            text-decoration: underline;
        }
        .auto-style13 {
            width: 17px;
            background-color: #990099;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('login_BG.jpg')">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="2"><strong>iManager&nbsp; </strong><span class="auto-style12"><em>- Staff login </em></span><strong>&nbsp;&nbsp;(Staff)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Username</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Password</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td rowspan="2">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="Login" Width="125px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style3">Forgot Password?</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
