<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/Main.Master" CodeBehind="Votar Info.aspx.cs" Inherits="Online_Voting_System.Votar_Info" %>

<asp:Content ID="votar_info_head" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>

<asp:Content ID="votar_info_body" ContentPlaceHolderID="ContentBody" runat="server">
    <center>
    <table>
        <tr>
            <td>
                R.M.O
            </td>
            <td>
                <asp:DropDownList ID="drListRmo" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                District
            </td>
            <td>
                <asp:DropDownList ID="drListDistrict" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Upozila/Thana
            </td>
            <td>
                <asp:DropDownList ID="drListThana" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Union/Word
            </td>
            <td>
                <asp:DropDownList ID="drListWord" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Votar Area
            </td>
            <td>
                <asp:DropDownList ID="drListArea" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Sex
            </td>
            <td>
                <asp:DropDownList ID="drListSex" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnShowVotarList" runat="server" Text="Show Votar List" />
            </td>
        </tr>
    </table>
    <div id="show_data">
        <asp:GridView ID="GridViewVotarList" runat="server">
        </asp:GridView>
    </div>
    </center>
</asp:Content>