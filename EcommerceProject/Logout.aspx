<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="EcommerceProject.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 218px;
        }
        .auto-style2 {
            height: 72px;
        }
        .auto-style3 {
            height: 73px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#00CC00" Text="LOGOUT SUCCESSFUL"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="CLICK TO LOGIN" class="btn-outline-danger ImageStyle" Font-Bold="True" Font-Size="Medium" Height="79px" Width="250px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
