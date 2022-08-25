<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="notification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            background-color: #9537A5;
        }
        .auto-style2 {
            color: #FFFFFF;
            text-align: right;
            background-color: #9537A5;
        }
        .auto-style4 {
            background-color: #FFCCFF;
        }
        .auto-style5 {
            color: #FFFFFF;
            text-align: right;
            background-color: #FFCCFF;
        }
        .auto-style6 {
            height: 37px;
            background-color: #9537A5;
        }
        .auto-style7 {
            background-color: #D6D6D6;
        }
        .auto-style8 {
            color: #9537A5;
        }
        .auto-style9 {
            font-weight: bold;
        }
        .auto-style10 {
            color: #FFFFFF;
            text-align: left;
            background-color: #9537A5;
        }
        .auto-style11 {
            background-color: #9537A5;
            color: #FFFFFF;
        }
        .auto-style12 {
            color: #fff;
            background-color: #FF3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style10"><strong class="auto-style9">Stock</strong></td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Current Stock</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Old Stock</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#FFCCFF" CssClass="auto-style3" Height="35px" Text="Update Stock" Width="150px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" CssClass="fa-inverse" Text="Current Stock:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" CssClass="fa-inverse" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" CssClass="fa-inverse" Text="New Stock:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style12" ErrorMessage="Only Numbers are allowed!" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" Text="Verify" Width="200px" OnClick="Button2_Click" Visible="False" />
                &nbsp;
                <asp:Label ID="Label2" runat="server" CssClass="fa-inverse" Text="New Value: " Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" BackColor="White" Font-Bold="True" Font-Size="Larger" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" Text="Update" Width="200px" OnClick="Button3_Click" Visible="False" />
                <asp:Button ID="Button4" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" Text="Reset" Width="200px" Visible="False" />
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="3">User: <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

