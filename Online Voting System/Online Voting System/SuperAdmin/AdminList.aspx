<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/SuperAdminMaster.Master" CodeBehind="AdminList.aspx.cs" Inherits="Online_Voting_System.SuperAdmin.AdminList" %>

<asp:Content ID="adminList_head" ContentPlaceHolderID="superAdminHead" runat="server">

</asp:Content>

<asp:Content ID="adminList_body" ContentPlaceHolderID="superAdminBody" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <hr />
    <strong>Admin List</strong>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
    <center>
        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" ForeColor="Black">
            <RowStyle BackColor="White" />
            <Columns>
                <asp:ButtonField Text="Active/Block" HeaderText="Change Status">
                    <ControlStyle ForeColor="#FF3399" />
                </asp:ButtonField>
                <asp:ButtonField Text="Delete" HeaderText="Delete">
                    <ControlStyle ForeColor="#FF3399" />
                </asp:ButtonField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <hr />        
    </center>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
