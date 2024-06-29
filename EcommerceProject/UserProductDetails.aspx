<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="UserProductDetails.aspx.cs" Inherits="EcommerceProject.UserProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 634px;
            height: 475px;
        }
        .auto-style3 {
            width: 183px;
            height: 119px;
        }
        .ImageStyle {
            border-radius:25px;
        }
        .auto-style7 {
            width: 184px;
            height: 118px;
        }
        .auto-style8 {
            width: 184px;
            height: 119px;
        }
       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td colspan="2" rowspan="3">
                        <asp:Image ID="Image1" runat="server" class="ImageStyle" Height="347px" Width="391px" ImageUrl='<%# Eval("Prod_Image") %>' BorderColor="#FF9933" BorderStyle="Solid" />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Prod_Name") %>' Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC0066" Height="101px" Width="195px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label5" runat="server" Text='Rs' Font-Bold="True" Font-Size="Medium" ForeColor="#CC0099" Height="25px" Width="37px"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF66FF" Height="43px" Text='<%# Eval("Prod_Price") %>' Width="118px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Prod_Desc") %>' Font-Bold="True" Font-Size="Medium" ForeColor="#666666"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Add to Cart" class="btn-outline-success ImageStyle" Font-Bold="True" Font-Size="Medium" Height="57px" Width="162px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button2" runat="server" class="btn-outline-info ImageStyle" Font-Bold="True" Font-Size="Medium" Text="Continue" Height="57px" Width="162px" PostBackUrl="~/UserProfileCategory.aspx" />
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label4" runat="server" Text="Quantity" Font-Bold="True" ForeColor="#FF6699"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Height="33px"  Width="53px" TextMode="Number" Min="1" Max="10" Step="1" value="1" ></asp:TextBox>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
