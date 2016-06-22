<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/General.Master" CodeBehind="ApplyParty.aspx.cs" Inherits="Online_Voting_System.General.ApplyParty" %>

<asp:Content ID="applyParty_head" ContentPlaceHolderID="generalHead" runat="server">

</asp:Content>

<asp:Content ID="applyParty_body" ContentPlaceHolderID="generalBody" runat="server">
<center>
        <h2>Party Registration</h2>
    </center>
    <hr />

<center>
<table>
   <tr>
      <td>
      <strong>Party Name</strong>
      </td>
      <td>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      </td>
   </tr>
</table>


<hr />
    <strong>Party Logo</strong> <br />
    <center>
    Select Image: &nbsp
    <asp:TextBox ID="TextBox2" runat="server" Width="231px" ReadOnly="True"></asp:TextBox> &nbsp
    <asp:Button ID="Button1" runat="server" Text="Browse" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Image ID="Image1" runat="server" Height="146px" Width="153px" />
    </center>
    <hr />
    
    <center>
        <table>
            <tr>
                <td>
                    <strong>Chairman Name</strong>
                </td>
                
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <hr />
    <strong>Chairperson Image</strong> <br />
    <center>
    Select Image: &nbsp
    <asp:TextBox ID="TextBox4" runat="server" Width="231px" ReadOnly="True"></asp:TextBox> &nbsp
    <asp:Button ID="Button2" runat="server" Text="Browse" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Image ID="Image2" runat="server" Height="146px" Width="153px" />
    </center>
    <hr />
    
    <center>
    <table>
        <tr>
            <td>
                <strong>Current Member</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td>
                <strong>Head Office</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td>
                <strong>Contact No</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td>
                <strong>Email Address</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Registraton Party" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
    </center>
        
    </center>
    
    
    
</center>

</asp:Content>
