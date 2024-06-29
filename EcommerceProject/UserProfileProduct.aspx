<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="UserProfileProduct.aspx.cs" Inherits="EcommerceProject.UserProfileProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .ImageStyle {
            border-radius:25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" Height="143px" Width="969px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:ImageButton class="ImageStyle" ID="ImageButton1" runat="server" Height="261px" ImageUrl='<%# Eval("Prod_Image") %>' Width="274px" BorderStyle="Groove" BorderColor="#FF9933" BorderWidth="4px" CommandArgument='<%# Eval("Prod_ID") %>' OnCommand="ImageButton1_Command"  />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Prod_Name") %>' Font-Bold="True" Font-Size="Large" ForeColor="#CC0066"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0099" Height="16px" Text="Rs" Width="35px"></asp:Label>
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#FF9933" Text='<%# Eval("Prod_Price") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("Prod_Desc") %>' Font-Italic="True"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
