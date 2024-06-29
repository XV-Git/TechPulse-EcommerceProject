<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="EcommerceProject.AdminProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: inline-block;
            font-weight: 400;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: .25rem;
            transition: all .3s ease-in-out;
            text-decoration: none;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            -webkit-transition: all .3s ease-in-out;
            -moz-transition: all .3s ease-in-out;
            -ms-transition: all .3s ease-in-out;
            -o-transition: all .3s ease-in-out;
            border: 1px solid transparent;
        }
        .auto-style2 {
            width: 1123px;
            height: 415px;
        }
        .auto-style10 {
            display: inline-block;
            font-weight: 400;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: .25rem;
            transition: all .3s ease-in-out;
            text-decoration: none;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            -webkit-transition: all .3s ease-in-out;
            -moz-transition: all .3s ease-in-out;
            -ms-transition: all .3s ease-in-out;
            -o-transition: all .3s ease-in-out;
            border: 1px solid transparent;
            margin-top: 11px;
        }
        .auto-style19 {
            text-align: center;
            height: 181px;
        }
        .auto-style21 {
            text-align: center;
            height: 85px;
        }
        .auto-style26 {
            width: 306px;
            height: 49px;
        }
        .auto-style27 {
            width: 306px;
            text-align: center;
            height: 85px;
        }
        .auto-style28 {
            width: 306px;
            height: 85px;
        }
        .auto-style29 {
            width: 306px;
            text-align: center;
            height: 44px;
        }
        .auto-style30 {
            width: 306px;
            height: 81px;
        }
        .auto-style31 {
            width: 295px;
            height: 49px;
        }
        .auto-style32 {
            width: 295px;
            text-align: center;
            height: 85px;
        }
        .auto-style33 {
            width: 295px;
            text-align: center;
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label4" runat="server" CssClass="btn" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" Text="Admin Profile"></asp:Label>
            </td>
            <td class="auto-style26"></td>
            <td class="auto-style31"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style1" Height="163px" ImageUrl="~/images/Category.gif" Width="172px" OnClick="ImageButton1_Click" />
            </td>
            <td class="auto-style27">
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style1" Height="168px" ImageUrl="~/images/Productss.gif" Width="194px" PostBackUrl="~/AdminProdInsert.aspx" />
            </td>
            <td class="auto-style32">
                <asp:ImageButton ID="ImageButton4" runat="server" CssClass="auto-style1" Height="172px" ImageUrl="~/images/ViewUser.gif" Width="220px" OnClick="ImageButton4_Click" />
            </td>
            <td class="auto-style27">
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style1" Height="172px" ImageUrl="~/images/Feed.gif" Width="179px" PostBackUrl="~/AdminViewFeedback.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style29">
                <asp:Label ID="Label1" runat="server" CssClass="btn" Font-Bold="True" Font-Size="Medium" ForeColor="Gray" Text="CATEGORY"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:Label ID="Label2" runat="server" CssClass="btn" Font-Bold="True" Font-Size="Medium" ForeColor="#3366FF" Text="PRODUCTS"></asp:Label>
            </td>
            <td class="auto-style33">
                <asp:Label ID="Label5" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300" Text="View Users"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:Label ID="Label3" runat="server" CssClass="btn" Font-Bold="True" Font-Size="Medium" ForeColor="#009933" Text="FEEDBACK"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style19" colspan="2" rowspan="2">
                <asp:ImageButton ID="ImageButton5" runat="server" Height="162px" ImageUrl="~/images/OrderProcess.gif" PostBackUrl="~/AdminOrderProcess.aspx" Width="177px" />
            </td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style21" colspan="2">
                <asp:Label ID="Label6" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="Medium" ForeColor="#FF6600" Height="38px" Text="Process Orders" Width="182px"></asp:Label>
            </td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
