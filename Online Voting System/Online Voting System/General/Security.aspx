<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/General.Master" CodeBehind="Security.aspx.cs" Inherits="Online_Voting_System.General.Security" %>

<asp:Content ID="security_head" ContentPlaceHolderID="generalHead" runat="server">

</asp:Content>

<asp:Content ID="security_body" ContentPlaceHolderID="generalBody" runat="server">
    <center>
        <table width="100%">
            <tr>
                <td align="left">
                    <strong>UserName:</strong>
                </td>
                <td align="left">
                    <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
                </td>
                <td align="right">
                    <asp:LinkButton ID="userNameEdit" runat="server" onclick="userNameEdit_Click">Edit</asp:LinkButton>                    
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div id="divUserName" runat="server">
                        <center>
                        <table>
                            <tr>
                                <td>
                                    <strong>New user name:</strong>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewUserName" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Password:</strong>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUserNamePassword" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:Button ID="btnUserNameSave" runat="server" Text="Save" 
                                        onclick="btnUserNameSave_Click" /> &nbsp&nbsp
                                    <asp:Button ID="btnUserNameCancel" runat="server" Text="Cancel" 
                                        onclick="btnUserNameCancel_Click" />
                                </td>
                            </tr>
                        </table>
                        </center>                                                
                    </div>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <strong>Password:</strong>
                </td>
                <td align="left">
                    <asp:Label ID="lblPassword" runat="server" Text="********"></asp:Label>
                </td>
                <td align="right">
                    <asp:LinkButton ID="passwordEdit" runat="server" onclick="passwordEdit_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div id="divPassword" runat="server">
                        <center>
                        <table>
                            <tr>
                                <td>
                                    <strong>New Password:</strong>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Confirm New Password:</strong>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Old Password:</strong>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:Button ID="btnPasswordSave" runat="server" Text="Save" 
                                        onclick="btnPasswordSave_Click" /> &nbsp &nbsp
                                    <asp:Button ID="btnPasswordCancel" runat="server" Text="Cancel" 
                                        onclick="btnPasswordCancel_Click" />
                                </td>
                            </tr>
                        </table>
                        </center>
                    </div>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <strong>Email:</strong>
                </td>
                <td align="left">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td align="right">
                    <asp:LinkButton ID="emailEdit" runat="server" onclick="emailEdit_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="3">                    
                    <div id="divEmail" runat="server">
                        <center>
                            <table>
                                <tr>
                                    <td>
                                        <strong>New Email:</strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtNewEmail" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong>Password:</strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEmailPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="btnEmailSave" runat="server" Text="Save" 
                                            onclick="btnEmailSave_Click" /> &nbsp &nbsp
                                        <asp:Button ID="btnEmailCancel" runat="server" Text="Cancel" 
                                            onclick="btnEmailCancel_Click" />
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </div>                    
                </td>
            </tr>
            <tr>
                <td align="left">
                    <strong>Alternate Email:</strong>
                </td>
                <td align="left">
                    <asp:Label ID="lblAlternateEmail" runat="server" Text="AlternateEmail"></asp:Label>
                </td>
                <td align="right">
                    <asp:LinkButton ID="alternaeEmalEdit" runat="server" 
                        onclick="alternaeEmalEdit_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="3">                    
                    <div id="divAlternateEmail" runat="server">
                        <center>
                            <table>
                                <tr>
                                    <td>
                                        <strong>AlterNate Email:</strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAlternateEmail" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong>Password:</strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAlternateEmailPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="btnAlternateEmailSave" runat="server" Text="Save" 
                                            onclick="btnAlternateEmailSave_Click" /> &nbsp &nbsp
                                        <asp:Button ID="btnAlternateEmailCancel" runat="server" Text="Cancel" 
                                            onclick="btnAlternateEmailCancel_Click" />
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </div>                    
                </td>
            </tr>
            <tr>
                <td align="left">
                    <strong>Security Question:</strong>
                </td>
                <td align="left">
                    <asp:Label ID="lblQuestion" runat="server" Text="Question"></asp:Label>
                </td>
                <td align="right">
                    <asp:LinkButton ID="questionEdit" runat="server" onclick="questionEdit_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="3">                    
                    <div id="divQuestion" runat="server">
                        <center>
                            <table>
                                <tr>
                                    <td>
                                        <strong>New Security Question:</strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtQuestion" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong>Answer:</strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong>Password:</strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtQuestionPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="btnQuestionSave" runat="server" Text="Save" 
                                            onclick="btnQuestionSave_Click" /> &nbsp &nbsp
                                        <asp:Button ID="btnQuestionCancel" runat="server" Text="Cancel" 
                                            onclick="btnQuestionCancel_Click" />
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </div>                    
                </td>
            </tr>
        </table>
    </center>
</asp:Content>