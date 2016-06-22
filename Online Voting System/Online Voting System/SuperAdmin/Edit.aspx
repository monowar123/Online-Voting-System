<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/SuperAdminMaster.Master" CodeBehind="Edit.aspx.cs" Inherits="Online_Voting_System.SuperAdmin.Edit" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="edit_head" ContentPlaceHolderID="superAdminHead" runat="server">

</asp:Content>

<asp:Content ID="edit_body" ContentPlaceHolderID="superAdminBody" runat="server">
 
    <asp:Label ID="lblPageName" runat="server"></asp:Label> <br />
    <asp:Label ID="lblModifyDate" runat="server"></asp:Label> <br />
    <asp:Label ID="lblModifiedBy" runat="server"></asp:Label> <br />
    <asp:Label ID="lblSaveMessage" runat="server" Text="Content Saved Successfully..." ForeColor="Red" Visible="false"></asp:Label>
    
    <CKEditor:CKEditorControl id="myEditor" BasePath="~/ckeditor" runat="server">
    </CKEditor:CKEditorControl>
        
     <br />
     
    <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" /> &nbsp&nbsp&nbsp
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click" />
    
</asp:Content>