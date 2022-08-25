<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="Vendorreg.aspx.cs" Inherits="Vendorreg" %>

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
        .auto-style3 {
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style4 {
            color: #FFFFFF;
            text-align: right;
            height: 26px;
            background-color: #9537A5;
        }
        .auto-style5 {
            height: 26px;
            background-color: #9537A5;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            background-color: #D6D6D6;
        }
        .auto-style8 {
            color: #9537A5;
        }
        .auto-style9 {
            color: #FF3300;
        }
        .auto-style10 {
            color: #FFFFFF;
            text-align: right;
            background-color: #9537A5;
            height: 42px;
        }
        .auto-style11 {
            background-color: #9537A5;
            height: 42px;
        }
        .auto-style12 {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style1" colspan="3"><span class="fa-inverse"><strong class="auto-style3">Register Vendor</strong></span></td>
        </tr>
        <tr>
            <td class="auto-style4">Company Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Contact Person</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Company Phone</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style9" ErrorMessage="Enter Only Numbers" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Company Email</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">ICE Contact</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">ICE Phone</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox9" CssClass="auto-style9" ErrorMessage="Enter Only Numbers" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Description</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" Text="Submit" Width="150px" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">User:
                <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

