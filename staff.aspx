<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="staff.aspx.cs" Inherits="staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            background-color: #9537A5;
        }
        .auto-style2 {
            background-color: #ffffff;
            color: #9537A5;
        }
        .auto-style3 {
            color: #CC0066;
        }
        .auto-style4 {
            background-color: #9537A5;
            width: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" BorderColor="#FFCCFF" CssClass="auto-style2" Height="35px" OnClick="Button1_Click" Text="Register User" Width="200px" />
                <asp:Button ID="Button2" runat="server" BorderColor="#FFCCFF" CssClass="auto-style2" Height="35px" Text="Deactivate User" Width="200px" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" BorderColor="#FFCCFF" CssClass="auto-style2" Height="35px" Text="Change Password" Width="200px" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td id="User: La" colspan="2">Registered Staff:<br />
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                        <asp:BoundField DataField="Datein" HeaderText="Datein" SortExpression="Datein" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImanagerConnectionString %>" SelectCommand="SELECT [Name], [Phone], [Email], [Position], [Datein] FROM [Staff]"></asp:SqlDataSource>
                <br />
                User:
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

