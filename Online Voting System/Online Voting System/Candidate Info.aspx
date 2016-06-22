<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/Main.Master" CodeBehind="Candidate Info.aspx.cs" Inherits="Online_Voting_System.Candidate_Info" %>

<asp:Content ID="candidate_info_head" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>

<asp:Content ID="candidate_info_body" ContentPlaceHolderID="ContentBody" runat="server">
    <center>
        <table>
            <tr>
                <td>
                    Election Type
                </td>
                <td>
                    <asp:DropDownList ID="DrList" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Year
                </td>
                <td>
                    <asp:DropDownList ID="DrListYear" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    District
                </td>
                <td>
                    <asp:DropDownList ID="DrListDistrict" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Upozilla/Thana
                </td>
                <td>
                    <asp:DropDownList ID="DrListThana" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Union/Word
                </td>
                <td>
                    <asp:DropDownList ID="DrListWord" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnShowCandidateList" runat="server" Text="Show" />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>