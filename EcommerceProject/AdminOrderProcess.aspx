<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="AdminOrderProcess.aspx.cs" Inherits="EcommerceProject.AdminOrderProcess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="text-center" colspan="2">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#FF5050" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Label ID="Label5" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#999999" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="text-center">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="54px" ImageUrl="~/images/backbutton.jpg" PostBackUrl="~/AdminProfile.aspx" Width="92px" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" Height="169px" Width="631px">
                    <Columns>
                        <asp:BoundField DataField="Order_ID" HeaderText="Order ID" />
                        <asp:BoundField DataField="User_ID" HeaderText="User ID" />
                        <asp:BoundField DataField="Total_Price" HeaderText="Price" />
                        <asp:BoundField DataField="Date" HeaderText="Purchase Date" />
                        <asp:BoundField DataField="Order_Status" HeaderText="Current Status" />
                        <asp:TemplateField HeaderText="Mark As">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Order_ID") %>' CssClass="btn-outline-success" OnCommand="Button1_Command" Text="Delivered" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
