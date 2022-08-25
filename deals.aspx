<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.master" AutoEventWireup="true" CodeFile="deals.aspx.cs" Inherits="deals" %>

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
            background-color: #D6D6D6;
        }
        .auto-style4 {
            color: #9537A5;
        }
        .auto-style5 {
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style6 {
            color: #FF3300;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style1" colspan="3"><strong class="auto-style5">Deals</strong></td>
        </tr>
        <tr>
            <td class="auto-style2">Vendor</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CompanyName" DataValueField="CompanyName" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImanagerConnectionString %>" SelectCommand="SELECT [CompanyName] FROM [Vendor]"></asp:SqlDataSource>
            </td>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Truck</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Truck" DataValueField="Truck">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ImanagerConnectionString %>" SelectCommand="SELECT [Truck] FROM [Trucks] WHERE ([Vendor] = @Vendor)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Vendor" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Quantity</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style6" ErrorMessage="Enter the quantity- Numbers Only" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Deadline</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Description</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#FFCCFF" ForeColor="#9537A5" Height="35px" OnClick="Button1_Click" Text="Submit" Width="150px" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">User:
                <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <strong class="auto-style7">Approved Deals:<br />
    </strong>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Numb" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="DealID" 
                    DataNavigateUrlFormatString="Deliver.aspx?DealID={0}" HeaderText="Deliver Deal" 
                    Text="Deliver Deal" SortExpression="DealID" />

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
            <asp:BoundField DataField="Truck" HeaderText="Truck" SortExpression="Truck" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ImanagerConnectionString %>" SelectCommand="SELECT * FROM [Deals] WHERE ([Status] = @Status AND ([Delivered]) = @Delivered) ">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Approved" Name="Status" QueryStringField="Approved" Type="String" />
            <asp:QueryStringParameter DefaultValue="NO" Name="Delivered" QueryStringField="NO" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>

