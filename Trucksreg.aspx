<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="Trucksreg.aspx.cs" Inherits="Trucksreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            background-color: #9537A5;
        }
        .auto-style2 {
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style3 {
            background-color: #D6D6D6;
        }
        .auto-style4 {
            color: #9537A5;
        }
        .auto-style5 {
            color: #FFFFFF;
            text-align: right;
            background-color: #9537A5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style1" colspan="2"><strong class="auto-style2">Add Truck</strong></td>
        </tr>
        <tr>
            <td class="auto-style5">Company</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CompanyName" DataValueField="CompanyName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImanagerConnectionString %>" SelectCommand="SELECT [CompanyName] FROM [Vendor]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Truck Number</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Description</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" OnClick="Button1_Click" Text="Submit" Width="150px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">User:
                <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

