<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="EcommerceProject.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 433px;
            height: 395px;
        }
        .auto-style5 {
            height: 65px;
            text-align: center;
        }
        .auto-style7 {
            width: 319px;
        }
        .auto-style11 {
            height: 66px;
            width: 318px;
        }
        .auto-style13 {
            height: 66px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#FF5050" Text="Label"></asp:Label>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
            <asp:Label ID="Label2" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Feedback Message"></asp:Label>
            </td>
            <td class="auto-style7" rowspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Height="118px" TextMode="MultiLine" Width="338px"></asp:TextBox>
            </td>
            <td class="auto-style7" rowspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter Feedback" Font-Bold="True" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                                <asp:Button ID="Button1" runat="server" class="btn-outline-danger ImageStyle" Font-Bold="True" Font-Size="Medium" Height="81px" Text="SUBMIT" Width="203px" OnClick="Button1_Click" />
                            </td>
            <td class="auto-style13">
                                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                                <asp:Label ID="Label3" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="#33CC33" Height="64px" Width="309px" Visible="False"></asp:Label>
                            </td>
            <td class="auto-style13">
                                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                                <asp:Button ID="Button2" runat="server" class="btn-outline-info ImageStyle" Font-Bold="True" Font-Size="Medium" Height="74px" PostBackUrl="~/UserProfileCategory.aspx" Text="Continue Shopping" Width="272px" Visible="False" CausesValidation="False" />
                            </td>
            <td class="auto-style13">
                                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
