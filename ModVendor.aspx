<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="ModVendor.aspx.cs" Inherits="ModVendor" %>

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
            background-color: #9537A5;
            text-align: right;
            color: #FFFFFF;
            width: 336px;
        }
        .auto-style4 {
            background-color: #9537A5;
            color: #FFFFCC;
            width: 190px;
        }
        .auto-style6 {
            background-color: #9537A5;
            text-align: right;
            color: #FFFFFF;
            height: 26px;
            width: 336px;
        }
        .auto-style7 {
            background-color: #9537A5;
            height: 26px;
        }
        .auto-style8 {
            background-color: #9537A5;
            width: 190px;
        }
        .auto-style9 {
            background-color: #9537A5;
            height: 26px;
            width: 190px;
        }
        .auto-style10 {
            background-color: #9537A5;
            width: 336px;
            height: 26px;
        }
        .auto-style11 {
            background-color: #ffffff;
            color: #9537A5;
        }
        .auto-style12 {
            background-color: #9537A5;
            text-align: right;
            color: #FFFFFF;
            width: 336px;
            height: 68px;
        }
        .auto-style13 {
            background-color: #9537A5;
            width: 190px;
            height: 68px;
        }
        .auto-style14 {
            background-color: #9537A5;
            height: 68px;
        }
        .auto-style15 {
            color: #9537A5
        }
        .auto-style16 {
            background-color: #FFFFCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style1" colspan="3"><strong class="auto-style2">Modify Vendors</strong></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style7" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style3">Activity</td>
            <td class="auto-style8">
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
                    <asp:ListItem>Select Delete / Edit Vendor</asp:ListItem>
                    <asp:ListItem>Delete</asp:ListItem>
                    <asp:ListItem>Edit</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label3" runat="server" CssClass="fa-inverse" Text="Company" Visible="False"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="CompanyName" DataValueField="CompanyName" Visible="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImanagerConnectionString %>" SelectCommand="SELECT [CompanyName] FROM [Vendor]"></asp:SqlDataSource>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label2" runat="server" CssClass="fa-inverse" Text="Data to Edit" Visible="False"></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownList6" runat="server" Visible="False">
                    <asp:ListItem>CompanyName</asp:ListItem>
                    <asp:ListItem>CompanyContactPer</asp:ListItem>
                    <asp:ListItem>CompanyPhone</asp:ListItem>
                    <asp:ListItem>CompanyEmail</asp:ListItem>
                    <asp:ListItem>Description</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label4" runat="server" CssClass="fa-inverse" Text="New Value" Visible="False"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style16" Height="30px" Visible="False" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="35px" OnClick="Button3_Click" Text="Submit" Visible="False" Width="150px" />
                <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="35px" OnClick="Button4_Click" Text="Delete" Visible="False" Width="150px" />
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
    </table>
    <br />
    User: <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text="Label"></asp:Label>
</asp:Content>

