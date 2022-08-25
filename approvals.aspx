<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="approvals.aspx.cs" Inherits="approvals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            background-color: #9537A5;
        }
        .auto-style2 {
            background-color: #D6D6D6;
        }
        .auto-style3 {
            color: #9537A5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style1"><strong class="fa-inverse">Approvals</strong></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Numb" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="DealID" 
                    DataNavigateUrlFormatString="Approve.aspx?DealID={0}" HeaderText="Approve Deal" 
                    Text="Approve Deal" SortExpression="DealID" />

                        <asp:BoundField DataField="Numb" HeaderText="Numb" InsertVisible="False" ReadOnly="True" SortExpression="Numb" />
                        <asp:BoundField DataField="Vendor" HeaderText="Vendor" SortExpression="Vendor" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Datein" HeaderText="Datein" SortExpression="Datein" />
                        <asp:BoundField DataField="Staffin" HeaderText="Staffin" SortExpression="Staffin" />
                        <asp:BoundField DataField="DealID" HeaderText="DealID" SortExpression="DealID" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="Delivered" HeaderText="Delivered" SortExpression="Delivered" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImanagerConnectionString %>" SelectCommand="SELECT * FROM [Deals] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="Pending" Name="Status" QueryStringField="Pending" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">User: <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

