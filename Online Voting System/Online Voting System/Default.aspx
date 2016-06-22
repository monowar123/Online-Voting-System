<%@ Page Language="C#" MasterPageFile="~/Master Page/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Online_Voting_System._Default" %>

<asp:Content ID="default_head" ContentPlaceHolderID="ContentHead" runat="server">
    <link href="Style%20Page/default.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="default_body" ContentPlaceHolderID="ContentBody" runat="server">
    <div id="div_body">
        <div id="election_info">
            <marquee>
                <h2>Active Election Info.&nbsp &nbsp &nbsp &nbsp Active Election Info.&nbsp &nbsp &nbsp &nbsp Active Election Info.&nbsp &nbsp &nbsp &nbsp Active Election Info.</h2>
            </marquee>
        </div>
        <div id="archive">
            <h2><a href="#" />Archive</h2>
            <ul>
                <li>Recent News</li>
                <li>Recent News</li>
                <li>Recent News</li>
                <li>Recent News</li>
            </ul>
        </div>
        <div id="calender">
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </div>
        
    </div>
</asp:Content>