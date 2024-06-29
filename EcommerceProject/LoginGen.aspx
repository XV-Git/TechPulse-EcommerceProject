<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="LoginGen.aspx.cs" Inherits="EcommerceProject.LoginGen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 704px;
        height: 376px;
    }
        .auto-style10 {
            height: 59px;
            text-align: center;
        }
        .auto-style13 {
            height: 59px;
            text-align: center;
            width: 340px;
        }
        .auto-style14 {
            height: 59px;
            width: 340px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style10" colspan="2">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="False" ForeColor="#FF6600" Text="LOGIN !!"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label1" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="UserName"></asp:Label>
        </td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label2" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Password"></asp:Label>
        </td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="2">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="104px" ImageUrl="~/images/Login.gif" OnClick="ImageButton1_Click" Width="222px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="2">
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="Medium" ForeColor="#FF6600"></asp:Label>
        </td>
    </tr>
    </table>
</asp:Content>
