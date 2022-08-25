<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            color: #006600;
            background-color: #9537A5;
        }
    .auto-style2 {
        background-color: #D6D6D6;
    }
    .auto-style3 {
        text-align: right;
        color: #FFFFFF;
    }
    .auto-style4 {
        color: #fff;
        background-color: #D6D6D6;
    }
        .auto-style5 {
            color: #9537A5;
        }
        .auto-style6 {
            background-color: #9537A5;
        }
        .auto-style7 {
            color: #fff;
            background-color: #9537A5;
            text-align: right;
        }
        .auto-style8 {
            background-color: #D6D6D6;
            height: 26px;
        }
        .auto-style9 {
            color: #fff;
            background-color: #D6D6D6;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style3">
                Last Sales</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                Last Customer</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                Last Sales Time</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                Current Stock Record</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style7">
                Last Stock Time</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style7">
                Last Staff_Stock</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                </td>
            <td class="auto-style9">
                </td>
            <td class="auto-style8">
                </td>
            <td class="auto-style8">
                </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style4">
                Hello User :
                <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

