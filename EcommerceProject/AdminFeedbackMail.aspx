<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="AdminFeedbackMail.aspx.cs" Inherits="EcommerceProject.AdminFeedbackMail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 648px;
            height: 546px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="text-center" colspan="2">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#FF5050" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Label ID="Label3" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="To :"></asp:Label>
            </td>
            <td class="text-center">
                <asp:Label ID="Label5" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#999999" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Label ID="Label4" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Email ID :"></asp:Label>
            </td>
            <td class="text-center">
                <asp:Label ID="Label6" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#999999" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label2" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Reply Mail"></asp:Label>
            </td>
            <td class="auto-style7" rowspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Height="118px" TextMode="MultiLine" Width="338px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:Button ID="Button1" runat="server" class="btn-outline-danger ImageStyle" Font-Bold="True" Font-Size="Medium" Height="81px" Text="SUBMIT" Width="203px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:Button ID="Button2" runat="server" class="btn-outline-info ImageStyle" Font-Bold="True" Font-Size="Medium" Height="74px" PostBackUrl="~/AdminViewFeedback.aspx" Text="Read More Feedback" Width="272px" Visible="False" />
            </td>
        </tr>
    </table>
</asp:Content>
