<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="EcommerceProject.UserReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 1271px;
            height: 547px;
        }
    .auto-style7 {
        width: 25px;
    }
    .auto-style8 {
        height: 27px;
        width: 219px;
    }
    .auto-style12 {
        height: 27px;
        width: 25px;
    }
    .auto-style13 {
        width: 219px;
    }
    .auto-style15 {
        width: 302px;
    }
    .auto-style16 {
        height: 27px;
        width: 302px;
    }
    .auto-style19 {
        width: 232px;
    }
    .auto-style20 {
        height: 27px;
        width: 232px;
    }
        .auto-style21 {
            width: 293px;
        }
        .auto-style22 {
            height: 27px;
            width: 293px;
        }
        .auto-style23 {
            width: 282px;
        }
        .auto-style24 {
            height: 27px;
            width: 282px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="User Registration Page"></asp:Label>
        </td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label1" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Name"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label11" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Age"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style15">
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Age b/w 18 and 60" Font-Bold="True" ForeColor="#FF3300" MaximumValue="60" MinimumValue="18"></asp:RangeValidator>
        </td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label2" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Address"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label12" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Pincode"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label3" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Email"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style15">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter Valid Email" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label4" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Phone"></asp:Label>
        </td>
        <td class="auto-style22">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style24"></td>
        <td class="auto-style20">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style16">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Enter Valid Phone Number" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^[6789]\d{9}$" Font-Size="Small"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style12">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label5" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Username"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" AutoPostBack="True"></asp:TextBox>
        </td>
        <td class="auto-style23">
            <asp:Label ID="Label10" runat="server" Text="Label" Visible="False" Font-Bold="True"></asp:Label>
        </td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label6" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Password"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label9" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Confirm Password"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style15">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="*Password Mismatch" Font-Bold="True" ForeColor="#FF3300"></asp:CompareValidator>
        </td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label13" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Account Number"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label14" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC" Text="Account Balance"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="* Mandatory Feild" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style21">
            <asp:Button ID="Button1" runat="server" Text="Register" BackColor="#0033CC" ForeColor="White" OnClick="Button1_Click" />
        </td>
        <td colspan="2">
            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False" Font-Bold="True"></asp:Label>
        </td>
        <td class="auto-style15">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/LoginGen.aspx" BackColor="#0033CC" ForeColor="White" Visible="False" BorderStyle="Solid">Back to Login</asp:LinkButton>
        </td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style21">
            &nbsp;</td>
        <td class="auto-style23">
            &nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
</table>
</asp:Content>
