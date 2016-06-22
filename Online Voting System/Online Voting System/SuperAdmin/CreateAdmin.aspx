<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/SuperAdminMaster.Master" CodeBehind="CreateAdmin.aspx.cs" Inherits="Online_Voting_System.SuperAdmin.CreateAdmin" %>

<asp:Content ID="createAdmin_head" ContentPlaceHolderID="superAdminHead" runat="server">

</asp:Content>

<asp:Content ID="createAdmin_body" ContentPlaceHolderID="superAdminBody" runat="server">
<center>
    <h2>Create New Admin</h2>
    <table>        
        <tr>
            <td>
                <strong>Votar ID:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>            
        </tr>
        <tr>
            <td>
                <strong>User Name:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>            
        </tr>
        <tr>
            <td>
                <strong>Password:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>            
        </tr>
        <tr>
            <td>
                <strong>Confirm Password:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>            
        </tr>
        <tr>
            <td>
                <strong>Email:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>            
        </tr>
        <tr>
            <td>
                <strong>Security Question:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>            
        </tr>
        <tr>
            <td>
                <strong>Security Answer:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>            
        </tr>
        <tr>
            <td>
                <strong>Admin Type:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drAdminType" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>Super Admin</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnCreateNewAdmin" runat="server" Text="Create Admin" />
            </td>
        </tr>
    </table>
 </center>
</asp:Content>