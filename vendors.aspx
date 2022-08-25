<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="vendors.aspx.cs" Inherits="vendors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #9537A5;
        }
        .auto-style2 {
            width: 92px;
        }
        .auto-style3 {
            background-color: #D6D6D6;
        }
        .auto-style4 {
            text-decoration: underline;
        }
        .auto-style5 {
            color: #9537A5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" Text="Register Vendor" Width="150px" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" Text="Modify Vendor" Width="150px" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" OnClick="Button3_Click" Text="Add Truck" Width="150px" />
                <asp:Button ID="Button5" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" Text="Registered Truck" Width="150px" OnClick="Button5_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2"><span class="auto-style4"><strong>Registered Vendors:</strong></span><br />
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                        <asp:BoundField DataField="CompanyContactPer" HeaderText="CompanyContactPer" SortExpression="CompanyContactPer" />
                        <asp:BoundField DataField="CompanyPhone" HeaderText="CompanyPhone" SortExpression="CompanyPhone" />
                        <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" SortExpression="CompanyID" />
                        <asp:BoundField DataField="ICEPhone" HeaderText="ICEPhone" SortExpression="ICEPhone" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImanagerConnectionString %>" SelectCommand="SELECT [CompanyName], [CompanyContactPer], [CompanyPhone], [CompanyID], [ICEPhone], [Datein] FROM [Vendor] ORDER BY [CompanyContactPer], [CompanyPhone], [Datein]"></asp:SqlDataSource>
                <br />
                User:
                <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

