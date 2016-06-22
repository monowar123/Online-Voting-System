<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/SuperAdminMaster.Master" CodeBehind="VotarRegistration.aspx.cs" Inherits="Online_Voting_System.SuperAdmin.VotarRegistration" %>

<asp:Content ID="votarRegistration_head" ContentPlaceHolderID="superAdminHead" runat="server">

</asp:Content>

<asp:Content ID="votarRegistration_body" ContentPlaceHolderID="superAdminBody" runat="server">
    <center>
        <h2>Votar Registration</h2>
    </center>
    <hr />
    <strong>Personal Info</strong>
    <center>
    <table>
        <tr>
            <td>
                <strong>Name:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Father Name:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Mother Name:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Husband/Wife Name:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Sex:</strong>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Occupation:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
        </tr> 
        <tr>
            <td>
                <strong>Date of Birth:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server" Width="48px"></asp:TextBox>
                <asp:TextBox ID="TextBox15" runat="server" Width="51px"></asp:TextBox>
                <asp:TextBox ID="TextBox16" runat="server" Width="52px"></asp:TextBox>
            </td>
        </tr> 
        <tr>
            <td>
                <strong>Blood Group:</strong>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>---SELECT-</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>      
    </table>
    </center>
    <hr />
    <strong>Image</strong> <br />
    <center>
    Select Image: &nbsp
    <asp:TextBox ID="TextBox9" runat="server" Width="231px" ReadOnly="True"></asp:TextBox> &nbsp
    <asp:Button ID="Button1" runat="server" Text="Browse" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Image ID="Image1" runat="server" Height="146px" Width="153px" />
    </center>
    <hr />
    <strong>Present Address</strong>
    <center>
    <table>
        <tr>
            <td>
                <strong>Division:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drDivision" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>District:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drDistrict" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Upozilla:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drUpozilla" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Area:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drArea" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Word:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drWord" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Thana:</strong>
            </td>
            <td>
                <asp:TextBox ID="txtThana" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Post Office:</strong>
            </td>
            <td>
                <asp:TextBox ID="txtPost" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Post Code:</strong>
            </td>
            <td>
                <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    </center>
    <hr />
    <strong>Parmanent Address</strong>
    <center>
    <table>
        <tr>
            <td>
                <strong>Division:</strong>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>District:</strong>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Upozilla:</strong>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Area:</strong>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Word:</strong>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Thana:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Post Office:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Post Code:</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    </center>
    <hr />
    <strong>Account Info</strong>
    <center>
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
    </table>
 </center>
 <hr />
 <center>
     <asp:Button ID="Button2" runat="server" Text="Register" />
 </center>
</asp:Content>
