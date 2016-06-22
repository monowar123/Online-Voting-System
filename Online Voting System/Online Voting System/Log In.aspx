<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/Main.Master" CodeBehind="Log In.aspx.cs" Inherits="Online_Voting_System.Log_In" %>

<asp:Content ID="logIn_head" ContentPlaceHolderID="ContentHead" runat="server">
    <link href="Style%20Page/MyStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="logIn_body" ContentPlaceHolderID="ContentBody" runat="server">
    <table style="width:100%; height:100%">
        <tr style="height:130px">
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <center>
                <table class="LogInTable">
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <strong>Log In</strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>User Name:</strong>
                        </td>
                        <td>
                            <asp:TextBox ID="txtUserName" runat="server" Width="165px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Password:</strong>
                        </td>
                        <td>                                                    
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="165px"></asp:TextBox>                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Role:</strong>
                        </td>
                        <td>                            
                            <asp:DropDownList ID="DrRole" runat="server">
                                <asp:ListItem>--SELECT--</asp:ListItem>
                                <asp:ListItem>Super Admin</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>General</asp:ListItem>
                            </asp:DropDownList>                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="left">                            
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Password" />                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">                            
                            <asp:Button ID="btnLogIn" runat="server" Text="Enter" Width="71px" 
                                onclick="btnLogIn_Click" />                            
                        </td>
                    </tr>
                </table>
                </center>
            </td>
        </tr>
        <tr style="height:130px">
            <td>
            </td>
        </tr>
    </table>    
</asp:Content>
