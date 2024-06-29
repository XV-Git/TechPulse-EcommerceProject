<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="RegisterGen.aspx.cs" Inherits="EcommerceProject.RegisterGen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 95%;
            height: 474px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="btn" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" Text="Registration Page"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="251px" ImageUrl="~/images/Adminpic.jpg" OnClick="ImageButton1_Click" Width="233px" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="249px" ImageUrl="~/images/Userpic.jpg" OnClick="ImageButton2_Click" Width="255px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
