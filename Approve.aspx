<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="Approve.aspx.cs" Inherits="Approve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            background-color: #9537A5;
        }
        .auto-style2 {
            color: #FFFFFF;
            height: 26px;
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
            text-align: left;
            background-color: #D6D6D6;
        }
        .auto-style7 {
            color: #FFFFFF;
            text-align: right;
            background-color: #9537A5;
        }
        .auto-style9 {
            background-color: #FFCCFF;
        }
        .auto-style10 {
            text-align: right;
            background-color: #9537A5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style2" colspan="3"><strong class="auto-style3">Approval </strong></td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="3">Current Stock: <strong>
                <asp:Label ID="Label7" runat="server" BackColor="White" CssClass="auto-style3" ForeColor="#FF3300" Text="Label"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6" colspan="2">Request Details</td>
        </tr>
        <tr>
            <td class="auto-style7">Deal ID</td>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Vendor</td>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Quantity</td>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Deadline</td>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Req. Staff</td>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" OnClick="Button1_Click" Text="Approve" Width="100px" />
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" OnClick="Button2_Click" Text="Reject" Width="100px" />
            </td>
            <td class="auto-style1"><span class="fa-inverse">Comment</span><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="100px"></asp:TextBox>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="3">User: <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

