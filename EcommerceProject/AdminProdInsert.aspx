<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="AdminProdInsert.aspx.cs" Inherits="EcommerceProject.AdminProdInsert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 898px;
            height: 569px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label9" runat="server" Text="Product Registration" Font-Bold="True" Font-Size="Medium" ForeColor="#FF66FF"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="47px" ImageUrl="~/images/backbutton.jpg" PostBackUrl="~/AdminProfile.aspx" Width="78px" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
            <asp:Label ID="Label1" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Category Name"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Product Name"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Mandatory Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
            <asp:Label ID="Label3" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Price"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Mandatory Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
            <asp:Label ID="Label4" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Image"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="* Mandatory Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
            <asp:Label ID="Label5" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Description"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Mandatory Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
            <asp:Label ID="Label6" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Stock"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Mandatory Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
            <asp:Button ID="Button2" runat="server" Text="Insert" BackColor="#0033CC" ForeColor="White" OnClick="Button1_Click" CssClass="btn" />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label7" runat="server" CssClass="alert-success" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
            <asp:Button ID="Button1" runat="server" Text="View/Edit Products" ForeColor="Black" OnClick="Button1_Click1" CssClass="btn btn-outline-danger" CausesValidation="False" />
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label10" runat="server" CssClass="alert-success" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server" Visible="false" Height="310px" Width="828px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Prod_ID" Height="49px" Width="855px" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                        <Columns>
                            <asp:BoundField DataField="Prod_Name" HeaderText="Name" />
                            <asp:BoundField DataField="Prod_Price" HeaderText="Price" />
                            <asp:ImageField DataImageUrlField="Prod_Image" HeaderText="Image">
                                <ControlStyle Height="100px" Width="120px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="Prod_Desc" HeaderText="Description" />
                            <asp:BoundField DataField="Prod_Stock" HeaderText="Stock" />
                            <asp:BoundField DataField="Prod_Status" HeaderText="Status" />
                            <asp:TemplateField HeaderText="Status Edit">
                                <ItemTemplate>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Eval("Prod_Status") %>'>
                                        <asp:ListItem>Unavailable</asp:ListItem>
                                        <asp:ListItem>Available</asp:ListItem>
                                    </asp:RadioButtonList>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
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
                </asp:Panel>
            </td>
        </tr>
        </table>
</asp:Content>
