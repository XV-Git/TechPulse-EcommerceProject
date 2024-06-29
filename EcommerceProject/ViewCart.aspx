<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="EcommerceProject.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 66px;
        }
        .auto-style2 {
            height: 84px;
        }
        .ImageStyle {
            border-radius:25px;
        }
        .auto-style3 {
            width: 119px;
        }
        .auto-style4 {
            width: 1487px
        }
        .auto-style5 {
            width: 744px;
        }
        .ImageStyle {
            border-radius:25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Prod_Name") %>' Font-Bold="True" Font-Size="Large" ForeColor="#CC0066" Height="16px" Width="328px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Label ID="Label2" runat="server" CssClass="alert-success" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Prod_ID" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="Cart_ID" HeaderText="Cart_ID" />
                        <asp:BoundField DataField="User_ID" HeaderText="User_ID" />
                        <asp:BoundField DataField="Prod_ID" HeaderText="Product_ID" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Price" HeaderText="Total Price" />
                        <asp:CommandField ButtonType="Button" DeleteText="Remove" EditText="Edit Qty" ShowEditButton="True" />
                        <asp:CommandField ButtonType="Button" DeleteText="Remove Item" ShowDeleteButton="True" />
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
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="Confirm Order" class="btn-outline-success ImageStyle" Font-Bold="True" Font-Size="Medium" Height="59px" Width="171px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="Button2" runat="server" Text="Add More" class="btn-outline-info ImageStyle" Font-Bold="True" Font-Size="Medium" Height="59px" Width="171px" PostBackUrl="~/UserProfileCategory.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>
