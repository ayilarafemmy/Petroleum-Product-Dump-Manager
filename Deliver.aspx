<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="Deliver.aspx.cs" Inherits="Deliver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            background-color: #9537A5;
        }
        .auto-style2 {
            color: #FFFFFF;
            background-color: #9537A5;
        }
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            background-color: #D6D6D6;
        }
        .auto-style5 {
            color: #9537A5;
        }
        .auto-style6 {
            color: #FFFFFF;
            text-align: right;
            background-color: #9537A5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style2" colspan="3"><strong class="auto-style3">Deal Delivery</strong></td>
        </tr>
        <tr>
            <td class="auto-style6">Deal ID</td>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Vendor</td>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Text="Label"></asp:Label>
            </td>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Quantity</td>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Text="Label"></asp:Label>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Current Stock</td>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Text="Label"></asp:Label>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">New Stock</td>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Text="Label"></asp:Label>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" OnClick="Button1_Click" Text="Deliver" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="3">User: <asp:Label ID="Label6" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

