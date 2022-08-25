<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Enrty.aspx.cs" Inherits="Enrty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 341px;
            background-color: #660066;
        }
        .auto-style4 {
            font-weight: bold;
            color: #660066;
            font-size: xx-large;
        }
        .auto-style6 {
            color: #FFFFFF;
            font-weight: bold;
            font-size: larger;
            background-color: #660066;
        }
        .auto-style7 {
            color: #FFFFFF;
            font-size: xx-large;
        }
        .auto-style8 {
            background-color: #660066;
        }
        .auto-style9 {
            width: 312px;
            background-color: #660066;
        }
        .auto-style10 {
            color: #FFFFFF;
        }
        .auto-style11 {
            color: #FFFFFF;
            background-color: #660066;
        }
        .auto-style12 {
            width: 312px;
            color: #FFFFFF;
            background-color: #660066;
        }
        .auto-style13 {
            width: 341px;
            color: #FFFFFF;
            background-color: #660066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">i-Manager</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        <br class="auto-style10" />
                        <span class="auto-style10"><strong>SELECT ROLE</strong></span><br />
                        <strong>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style4" Height="40px" Width="336px">
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>MD</asp:ListItem>
                            <asp:ListItem>Staff</asp:ListItem>
                            <asp:ListItem>Control</asp:ListItem>
                            <asp:ListItem>Vendor</asp:ListItem>
                        </asp:DropDownList>
                        </strong></td>
                    <td class="auto-style9"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="377px" OnClick="Button1_Click" Text="ENTER" Width="318px" />
                        </strong></td>
                    <td class="auto-style8"><strong><span class="auto-style10"><em>Date/Time:</em></span><br class="auto-style10" />
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="Label"></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
