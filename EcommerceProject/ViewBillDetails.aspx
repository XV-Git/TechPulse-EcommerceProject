<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="ViewBillDetails.aspx.cs" Inherits="EcommerceProject.ViewBillDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            border-style: inset;
            border-width: 6px;
            width: 667px;
            height: 529px;
            position: absolute;
            top: 0px;
            left: 15px;
            background-color: #E2E6EA;
        }
        .auto-style12 {
            height: 78px;
            text-align: center;
        }
        .auto-style13 {
            width: 740px;
            height: 78px;
            text-align: center;
            background-color: #DDE1E5;
        }
        .auto-style14 {
            background-color: #999999;
        }
        .auto-style15 {
            width: 740px;
            text-align: center;
            height: 43px;
            background-color: #DDE1E5;
        }
        .auto-style17 {
            height: 77px;
            text-align: center;
            background-color: #DDE1E5;
        }
        .auto-style18 {
            width: 740px;
            height: 78px;
            text-align: center;
            background-color: #999999;
        }
        .auto-style19 {
            background-color: #DDE1E5
        }
        .auto-style20 {
            color: #fff;
            background-color: #DFE3E7
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style1" style="z-index: 1">
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#FF5050" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#999999" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#999999" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label4" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Size="Large" ForeColor="#FF6600" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="211px" Width="658px">
                    <Columns>
                        <asp:BoundField DataField="Prod_ID" HeaderText="Product Code" />
                        <asp:BoundField DataField="Prod_Price" HeaderText="Unit Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Total_Price" HeaderText="Total Price" />
                        <asp:ImageField DataImageUrlField="Prod_Image" HeaderText="Product Image">
                            <ControlStyle Height="120px" Width="120px" />
                        </asp:ImageField>
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
            <td class="auto-style12">
                <asp:Label ID="Label5" runat="server" CssClass="auto-style20" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="Black" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Button ID="Button1" runat="server" Text="PROCEED TO PAY" class="btn-outline-danger ImageStyle" Font-Bold="True" Font-Size="Medium" Height="61px" Width="224px" OnClick="Button1_Click" ForeColor="White" />
            </td>
        </tr>
    </table>
    
</asp:Content>
