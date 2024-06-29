<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="EcommerceProject.PaymentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 735px;
            height: 660px;
        }
        .auto-style6 {
            width: 388px;
            height: 30px;
        }
         .ImageStyle {
            border-radius:25px;
        }
    .auto-style8 {
        width: 388px;
    }
        .auto-style9 {
            width: 100%;
            height: 131px;
        }
        .auto-style10 {
            text-align: center;
            height: 100px;
        }
        .auto-style12 {
            margin-right: 0px;
        }
        .auto-style13 {
            text-align: center;
            height: 101px;
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
            <td class="auto-style8">
            <asp:Label ID="Label2" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Your Account Balance"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="#FF5050" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
            <asp:Label ID="Label3" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Bill Amount"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label5" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="#FF5050" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style14" Height="109px" ImageUrl="~/images/PayButton.gif" OnClick="ImageButton1_Click" Width="206px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="auto-style9">
                        <tr>
                            <td class="auto-style10" colspan="3">
                                <asp:Label ID="Label6" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="#33CC33" Height="101px" Width="533px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">
                                <asp:Button ID="Button2" runat="server" class="btn-outline-warning ImageStyle" Font-Bold="True" Font-Size="Large" Height="100px" Text="LOGOUT" Width="240px" PostBackUrl="~/LoginGen.aspx" />
                            </td>
                            <td class="auto-style13">
                                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style12 ImageStyle" Height="176px" ImageUrl="~/images/Feed.gif" Width="193px" PostBackUrl="~/Feedback.aspx" />
                            </td>
                            <td class="auto-style13">
                                <asp:Button ID="Button3" runat="server" class="btn-outline-info ImageStyle" Font-Bold="True" Font-Size="Large" Height="100px" PostBackUrl="~/LoginGen.aspx" Text="Continue Shopping" Width="240px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
