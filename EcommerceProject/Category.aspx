<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="EcommerceProject.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: fit-content;
        }
        .auto-style6 {
            width: 17px;
        }
        .auto-style7 {
            width: 287px;
        }
        .auto-style9 {
            width: 170px;
        }
        .auto-style10 {
            width: 170px;
            height: 43px;
        }
        .auto-style11 {
            width: 287px;
            height: 43px;
        }
        .auto-style15 {
            width: 170px;
            height: 52px;
        }
        .auto-style16 {
            width: 287px;
            height: 52px;
        }
        .auto-style18 {
            width: 264px;
        }
        .auto-style19 {
            width: 264px;
            height: 43px;
        }
        .auto-style20 {
            width: 264px;
            height: 52px;
        }
        .auto-style21 {
            width: 170px;
            height: 35px;
        }
        .auto-style22 {
            width: 287px;
            height: 35px;
        }
        .auto-style23 {
            width: 264px;
            height: 35px;
        }
        .auto-style24 {
            width: 376px;
        }
        .auto-style25 {
            width: 376px;
            height: 43px;
        }
        .auto-style26 {
            width: 376px;
            height: 52px;
        }
        .auto-style27 {
            width: 376px;
            height: 35px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style9">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Categories" CssClass="btn" ForeColor="#FF66FF"></asp:Label>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style24">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="47px" ImageUrl="~/images/backbutton.jpg" PostBackUrl="~/AdminProfile.aspx" Width="78px" CausesValidation="False" />
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style6" rowspan="11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
            <asp:Label ID="Label1" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Category Name"></asp:Label>
            </td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Mandatory Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
            <asp:Label ID="Label9" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Image"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="* Mandatory Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
            <td rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style16">
            <asp:Label ID="Label10" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Description"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Mandatory Field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22"></td>
            <td class="auto-style23">
            <asp:Button ID="Button2" runat="server" Text="Insert" BackColor="#0033CC" ForeColor="White" OnClick="Button1_Click" CssClass="btn" />
            </td>
            <td class="auto-style27">
                </td>
            <td class="auto-style23">
                </td>
            <td class="auto-style23">
                </td>
            <td class="auto-style23">
                </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style18">
            <asp:Label ID="Label5" runat="server" Text="Label" Visible="False" Font-Bold="True" CssClass="alert-success"></asp:Label>
            </td>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
            <asp:Button ID="Button1" runat="server" Text="View/Edit Categories" ForeColor="Black" OnClick="Button1_Click1" CssClass="btn btn-outline-danger" CausesValidation="False" />
            </td>
            <td class="auto-style18">
            <asp:Label ID="Label11" runat="server" Text="Label" Visible="False" Font-Bold="True" CssClass="alert-success"></asp:Label>
            </td>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                &nbsp;</td>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="false" Height="172px" Width="572px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Cat_ID" Height="40px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="651px" CellSpacing="1">
                        <Columns>
                            <asp:BoundField DataField="Cat_Name" HeaderText="Category Name" />
                            <asp:BoundField DataField="Cat_Desc" HeaderText="Description" />
                            <asp:ImageField DataImageUrlField="Cat_Image" HeaderText="Image">
                                <ControlStyle Height="100px" Width="200px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="Cat_Status" HeaderText="Status" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#FF6666" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </asp:Panel>
            </td>
            <td class="auto-style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
