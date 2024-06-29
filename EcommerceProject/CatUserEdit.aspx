<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="CatUserEdit.aspx.cs" Inherits="EcommerceProject.CatUserEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1457px
        }
        .auto-style5 {
            width: 485px;
        }
        .auto-style6 {
            width: 486px;
        }
        .auto-style7 {
            width: 485px;
            height: 27px;
        }
        .auto-style8 {
            width: 486px;
            height: 27px;
        }
        .auto-style9 {
            width: 285px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" CssClass="btn" Font-Bold="True" Font-Size="Large" ForeColor="#CC33FF" Text="Registered Users"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="47px" ImageUrl="~/images/backbutton.jpg" PostBackUrl="~/AdminProfile.aspx" Width="78px" />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1" DataKeyNames="User_ID" Height="16px" Width="846px" ForeColor="Black">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="User_Name" HeaderText="Name" />
                        <asp:BoundField DataField="User_Age" HeaderText="Age" />
                        <asp:BoundField DataField="User_Address" HeaderText="Address" />
                        <asp:BoundField DataField="User_Pincode" HeaderText="Pincode" />
                        <asp:BoundField DataField="User_Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="User_Email" HeaderText="Email" />
                        <asp:BoundField DataField="User_Status" HeaderText="Status" />
                        <asp:TemplateField HeaderText="Edit Status">
                            <ItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Eval("User_Status") %>'>
                                    <asp:ListItem>Active</asp:ListItem>
                                    <asp:ListItem>Blocked</asp:ListItem>
                                </asp:RadioButtonList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" CssClass="alert-success" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
