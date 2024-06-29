<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="UserProfileCategory.aspx.cs" Inherits="EcommerceProject.UserProfileCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 310px;
            height: 427px;
        }
        .ImageStyle {
            border-radius:25px;
        }
        .auto-style5 {
            width: 105px;
        }
        .auto-style6 {
            width: 106px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" Height="118px" Width="651px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:ImageButton class="ImageStyle" ID="ImageButton1" runat="server" Height="282px" ImageUrl='<%# Eval("Cat_Image") %>' Width="306px" BorderStyle="Dashed" BorderColor="#FF9933" BorderWidth="4px" CommandArgument='<%# Eval("Cat_ID") %>' OnCommand="ImageButton1_Command"  />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Cat_Name") %>' Font-Bold="True" Font-Size="Large" ForeColor="#CC0066"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("Cat_Desc") %>' Font-Italic="True"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
