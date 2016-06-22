<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/SuperAdminMaster.Master" CodeBehind="Settings.aspx.cs" Inherits="Online_Voting_System.SuperAdmin.Settings" %>

<asp:Content ID="settings_head" ContentPlaceHolderID="superAdminHead" runat="server">

</asp:Content>

<asp:Content ID="settings_body" ContentPlaceHolderID="superAdminBody" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server" />
    <hr />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <strong>Set Structure</strong> <br />
    <asp:Label ID="lblSetStructureMessage" runat="server" ForeColor="Red"></asp:Label>
    <center>              
         <table>
            <tr>
                <td>
                    <strong>Division:</strong>
                </td>
                <td>
                    <asp:DropDownList ID="drDivision" runat="server" AutoPostBack="true" 
                        onselectedindexchanged="drDivision_SelectedIndexChanged" Height="22px">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                </td>                
                <td>
                    <asp:Button ID="btnDivisionAdd" runat="server" Text="Add" onclick="btnDivisionAdd_Click" 
                        />
                </td>
                <td>
                    <asp:Button ID="btnDivisionEdit" runat="server" Text="Edit" onclick="btnDivisionEdit_Click" 
                         />
                </td> 
                <td>
                    <asp:Button ID="btnDivisionDelete" runat="server" Text="Delete" 
                        onclick="btnDivisionDelete_Click" />
                </td>              
            </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divDivisionAdd" runat="server">
                    <strong>New Division:</strong> &nbsp
                    <asp:TextBox ID="txtNewDivision" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnNewDivSave" runat="server" Text="Save" 
                        onclick="btnNewDivSave_Click" /> &nbsp
                    <asp:Button ID="btnNewDivCancel" runat="server" Text="Cancel" 
                        onclick="btnNewDivCancel_Click" />
                </div>              
            </center>
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divDivisionEdit" runat="server">
                    <strong>Selected Division:</strong> &nbsp
                    <asp:TextBox ID="txtEditDivision" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnEditDivUpdate" runat="server" Text="Update" 
                        onclick="btnEditDivUpdate_Click" /> &nbsp
                    <asp:Button ID="btnEditDivCancel" runat="server" Text="Cancel" 
                        onclick="btnEditDivCancel_Click" />
                </div>
            </center>
            </td>
         </tr> 
            <tr>
                <td>
                    <strong>District</strong>
                </td>
                <td>
                    <asp:DropDownList ID="drDistrict" runat="server" AutoPostBack="true"
                        onselectedindexchanged="drDistrict_SelectedIndexChanged">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                </td>                
                <td>
                    <asp:Button ID="btnDistrictAdd" runat="server" Text="Add" 
                        onclick="btnDistrictAdd_Click" />
                </td>
                <td>
                    <asp:Button ID="btnDistrictEdit" runat="server" Text="Edit" 
                        onclick="btnDistrictEdit_Click" />
                </td> 
                <td>
                    <asp:Button ID="btnDistrictDelete" runat="server" Text="Delete" 
                        onclick="btnDistrictDelete_Click" />
                </td>              
            </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divDistrictAdd" runat="server">
                    <strong>New District:</strong> &nbsp
                    <asp:TextBox ID="txtNewDistrict" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnNewDistSave" runat="server" Text="Save" 
                        onclick="btnNewDistSave_Click" /> &nbsp
                    <asp:Button ID="btnNewDistCancel" runat="server" Text="Cancel" 
                        onclick="btnNewDistCancel_Click" />
                </div> 
             </center>             
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divDistrictEdit" runat="server">
                    <strong>Selected District:</strong> &nbsp
                    <asp:TextBox ID="txtEditDistrict" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnEditDistUpdate" runat="server" Text="Update" 
                        onclick="btnEditDistUpdate_Click" /> &nbsp
                    <asp:Button ID="btnEditDistCancel" runat="server" Text="Cancel" 
                        onclick="btnEditDistCancel_Click" />
                </div>
            </center>
            </td>
         </tr>
         <tr>
                <td>
                    <strong>Upozilla:</strong>
                </td>
                <td>
                    <asp:DropDownList ID="drUpozilla" runat="server" AutoPostBack="true" 
                        onselectedindexchanged="drUpozilla_SelectedIndexChanged">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                </td>                
                <td>
                    <asp:Button ID="btnUpozillaAdd" runat="server" Text="Add" 
                        onclick="btnUpozillaAdd_Click" />
                </td>
                <td>
                    <asp:Button ID="btnUpozillaEdit" runat="server" Text="Edit" 
                        onclick="btnUpozillaEdit_Click" />
                </td> 
                <td>
                    <asp:Button ID="btnUpozillaDelete" runat="server" Text="Delete" 
                        onclick="btnUpozillaDelete_Click" />
                </td>              
            </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divUpozillaAdd" runat="server">
                    <strong>New Upozilla:</strong> &nbsp
                    <asp:TextBox ID="txtNewUpozilla" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnNewUpozillaSave" runat="server" Text="Save" 
                        onclick="btnNewUpozillaSave_Click" /> &nbsp
                    <asp:Button ID="btnNewUpozillaCancel" runat="server" Text="Cancel" 
                        onclick="btnNewUpozillaCancel_Click" />
                </div> 
             </center>             
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divUpozillaEdit" runat="server">
                    <strong>Selected Upozilla:</strong> &nbsp
                    <asp:TextBox ID="txtEditUpozilla" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnUpozillaEditUpdate" runat="server" Text="Update" 
                        onclick="btnUpozillaEditUpdate_Click" /> &nbsp
                    <asp:Button ID="btnUpozillaEditCancel" runat="server" Text="Cancel" 
                        onclick="btnUpozillaEditCancel_Click" />
                </div>
            </center>
            </td>
         </tr>
         <tr>
                <td>
                    <strong>Union:</strong>
                </td>
                <td>
                    <asp:DropDownList ID="drUnion" runat="server" 
                        onselectedindexchanged="drUnion_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList>
                </td>                
                <td>
                    <asp:Button ID="btnUnionAdd" runat="server" Text="Add" 
                        onclick="btnUnionAdd_Click" style="height: 26px" />
                </td>
                <td>
                    <asp:Button ID="btnUnionEdit" runat="server" Text="Edit" 
                        onclick="btnUnionEdit_Click" />
                </td> 
                <td>
                    <asp:Button ID="btnUnionDelete" runat="server" Text="Delete" 
                        onclick="btnUnionDelete_Click" />
                </td>              
            </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divUnionAdd" runat="server">
                    <strong>New Union:</strong> &nbsp
                    <asp:TextBox ID="txtNewUnion" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnNewUnionSave" runat="server" Text="Save" 
                        onclick="btnNewUnionSave_Click" /> &nbsp
                    <asp:Button ID="btnNewUnionCancel" runat="server" Text="Cancel" 
                        onclick="btnNewUnionCancel_Click" />
                </div>  
            </center>            
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divUnionEdit" runat="server">
                    <strong>Selected Union:</strong> &nbsp
                    <asp:TextBox ID="txtEditUnion" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnEditUnionUpdate" runat="server" Text="Update" 
                        onclick="btnEditUnionUpdate_Click" /> &nbsp
                    <asp:Button ID="btnEditUnionCancel" runat="server" Text="Cancel" 
                        onclick="btnEditUnionCancel_Click" />
                </div>
            </center>
            </td>
         </tr>
    </table>
    </center>
    </ContentTemplate>
    </asp:UpdatePanel>
    
    <hr />
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
    <ContentTemplate>
    <strong>City Corporation</strong>
    <br />
        <asp:Label ID="lblCityCorMessage" runat="server" ForeColor="#FF0066"></asp:Label>
    <center>  
        <table>
        <tr>
            <td>
                <strong>Name:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drCityCorName" runat="server" 
                    onselectedindexchanged="drCityCorName_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>                
                <asp:Button ID="btnCityCorAdd" runat="server" Text="Add" 
                    onclick="btnCityCorAdd_Click" />                
            </td>
            <td>                
                <asp:Button ID="btnCityCorEdit" runat="server" Text="Edit" 
                    onclick="btnCityCorEdit_Click" />                
            </td>
            <td>
                <asp:Button ID="btnCityCorDelete" runat="server" Text="Delete" 
                    onclick="btnCityCorDelete_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
            <center>
                <div id="divCityCorNameAdd" runat="server">
                    <strong>New CityCorporation:</strong> &nbsp
                    <asp:TextBox ID="txtNewCityCor" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnNewCityCorSave" runat="server" Text="Save" 
                        onclick="btnNewCityCorSave_Click" /> &nbsp
                    <asp:Button ID="btnNewCityCorCancel" runat="server" Text="Cancel" 
                        onclick="btnNewCityCorCancel_Click" />
                </div>              
             </center>
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divCityCorNameEdit" runat="server">
                    <strong>Selected CityCorporation:</strong> &nbsp
                    <asp:TextBox ID="txtEditCityCor" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnEditCityCorUpdate" runat="server" Text="Update" 
                        onclick="btnEditCityCorUpdate_Click" /> &nbsp
                    <asp:Button ID="btnEditCityCorCancel" runat="server" Text="Cancel" 
                        onclick="btnEditCityCorCancel_Click" />
                </div>
            </center>
            </td>
         </tr>
         <tr>
            <td>
                <strong>Assigned District:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drCityCorDistrict" runat="server" 
                    onselectedindexchanged="drCityCorDistrict_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td colspan="2">    
                <asp:Button ID="btnCityCorDistAssign" runat="server" Text="Assign" 
                    onclick="btnCityCorDistAssign_Click" />
            </td>
            <td>    
                <asp:Button ID="btnCityCorDistDelete" runat="server" Text="Delete" 
                    onclick="btnCityCorDistDelete_Click" style="height: 26px" />
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divCityCorDistrict" runat="server">
                    <asp:DropDownList ID="drCityCorDistAdd" runat="server" 
                        onselectedindexchanged="drCityCorDistAdd_SelectedIndexChanged">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList> &nbsp &nbsp
                    <asp:Button ID="btnCityCorDistAdd" runat="server" Text="Add" 
                        onclick="btnCityCorDistAdd_Click" /> &nbsp &nbsp
                    <asp:Button ID="btnCityCorDistCancel" runat="server" Text="Cancel" />
                </div>
             </center>
            </td>
         </tr>
         <tr>
            <td>
                <strong>Assigned Upozilla:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drCityCorUpozilla" runat="server" 
                    onselectedindexchanged="drCityCorUpozilla_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td colspan="2">    
                <asp:Button ID="btnCityCorUpozillaAssign" runat="server" Text="Assign" 
                    onclick="btnCityCorUpozillaAssign_Click" />
            </td>
            <td>    
                <asp:Button ID="btnCityCorUpozillaDelete" runat="server" Text="Delete" 
                    onclick="btnCityCorUpozillaDelete_Click" />
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divCityCorUpozilla" runat="server">
                    <asp:DropDownList ID="drCityCorUpozillaAdd" runat="server" 
                        onselectedindexchanged="drCityCorUpozillaAdd_SelectedIndexChanged">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList> &nbsp &nbsp
                    <asp:Button ID="btnCityCorUpozillaAdd" runat="server" Text="Add" 
                        onclick="btnCityCorUpozillaAdd_Click" /> &nbsp &nbsp
                    <asp:Button ID="Button1" runat="server" Text="Cancel" />
                </div>
            </center>
            </td>
         </tr>
        <tr>
            <td>
               <strong>Assigned Word:</strong> 
            </td>
            <td>
                <asp:DropDownList ID="drCityCorWord" runat="server" 
                    onselectedindexchanged="drCityCorWord_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btnCityCorWordAdd" runat="server" Text="Add" 
                    onclick="btnCityCorWordAdd_Click" />
            </td>
            <td>
                <asp:Button ID="btnCityCorWordEdit" runat="server" Text="Edit" 
                    onclick="btnCityCorWordEdit_Click" />
            </td>
            <td>
                <asp:Button ID="btnCityCorWordDelete" runat="server" Text="Delete" 
                    onclick="btnCityCorWordDelete_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
            <center>
                <div id="divCityCorWordAdd" runat="server">
                    <strong>New Word:</strong> &nbsp
                    <asp:TextBox ID="txtCityCorNewWord" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnCityCorNewWordSave" runat="server" Text="Save" 
                        onclick="btnCityCorNewWordSave_Click" /> &nbsp
                    <asp:Button ID="btnCityCorNewWordCancel" runat="server" Text="Cancel" 
                        onclick="btnCityCorNewWordCancel_Click" />
                </div>              
            </center>
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divCityCorWordEdit" runat="server">
                    <strong>Selected Word:</strong> &nbsp
                    <asp:TextBox ID="txtCityCorWordEdit" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnCityCorEditWordUpdate" runat="server" Text="Update" 
                        onclick="btnCityCorEditWordUpdate_Click" /> &nbsp
                    <asp:Button ID="btnCityCorEditWordCancel" runat="server" Text="Cancel" 
                        onclick="btnCityCorEditWordCancel_Click" />
                </div>
             </center>
            </td>
         </tr>
    </table>
    </center>
    </ContentTemplate>
    </asp:UpdatePanel>
    
    <hr />
    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
    <ContentTemplate>    
    <strong>Pouroshova</strong>
    <br />
        <asp:Label ID="lblPouMessage" runat="server" ForeColor="#FF0066"></asp:Label>
    <center>  
        <table>
        <tr>
            <td>
                <strong>Name:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drPouroshovaName" runat="server" 
                    onselectedindexchanged="drPouroshovaName_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>                
                <asp:Button ID="btnPouAdd" runat="server" Text="Add" 
                    onclick="btnPouAdd_Click" />                
            </td>
            <td>                
                <asp:Button ID="btnPouEdit" runat="server" Text="Edit" 
                    onclick="btnPouEdit_Click" />                
            </td>
            <td>
                <asp:Button ID="btnPouDelete" runat="server" Text="Delete" 
                    onclick="btnPouDelete_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
            <center>
                <div id="divPouroshovaAdd" runat="server">
                    <strong>New Pouroshova:</strong> &nbsp
                    <asp:TextBox ID="txtNewPouroshova" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnNewPouSave" runat="server" Text="Save" 
                        onclick="btnNewPouSave_Click" /> &nbsp
                    <asp:Button ID="btnNewPouCancel" runat="server" Text="Cancel" 
                        onclick="btnNewPouCancel_Click" />
                </div>              
            </center>
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divPouroshovaEdit" runat="server">
                    <strong>Selected Pouroshova:</strong> &nbsp
                    <asp:TextBox ID="txtEditPouroshova" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnEditPuoUpdate" runat="server" Text="Update" 
                        onclick="btnEditPuoUpdate_Click" /> &nbsp
                    <asp:Button ID="btnEdtiPouCancel" runat="server" Text="Cancel" 
                        onclick="btnEdtiPouCancel_Click" />
                </div>
            </center>
            </td>
         </tr>
         <tr>
            <td>
                <strong>Assigned District:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drPouDist" runat="server" 
                    onselectedindexchanged="drPouDist_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td colspan="2">    
                <asp:Button ID="btnPouDistAssign" runat="server" Text="Assign" 
                    onclick="btnPouDistAssign_Click" />
            </td>
            <td>    
                <asp:Button ID="btnPouDistDelete" runat="server" Text="Delete" 
                    onclick="btnPouDistDelete_Click" />
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divPouroshovaDist" runat="server">
                    <asp:DropDownList ID="drPouDistAdd" runat="server" 
                        onselectedindexchanged="drPouDistAdd_SelectedIndexChanged">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList> &nbsp &nbsp
                    <asp:Button ID="btnPouDistAdd" runat="server" Text="Add" 
                        onclick="btnPouDistAdd_Click" /> &nbsp &nbsp
                    <asp:Button ID="Button2" runat="server" Text="Cancel" />
                </div>
            </center>
            </td>
         </tr>
         <tr>
            <td>
                <strong>Assigned Upozilla:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drPouUpozilla" runat="server" 
                    onselectedindexchanged="drPouUpozilla_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td colspan="2">    
                <asp:Button ID="btnPouUpozillaAssign" runat="server" Text="Assign" 
                    onclick="btnPouUpozillaAssign_Click" />
            </td>
            <td>    
                <asp:Button ID="btnPouUpozillaDelete" runat="server" Text="Delete" 
                    onclick="btnPouUpozillaDelete_Click" />
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divPouroshovaUpozilla" runat="server">
                    <asp:DropDownList ID="drPouUpozillaAdd" runat="server" 
                        onselectedindexchanged="drPouUpozillaAdd_SelectedIndexChanged">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList> &nbsp &nbsp
                    <asp:Button ID="btnPouUpozillaAdd" runat="server" Text="Add" 
                        onclick="btnPouUpozillaAdd_Click" /> &nbsp &nbsp
                    <asp:Button ID="Button3" runat="server" Text="Cancel" />
                </div>
            </center>
            </td>
         </tr>
        <tr>
            <td>
               <strong>Assigned Word:</strong> 
            </td>
            <td>
                <asp:DropDownList ID="drPouWord" runat="server" 
                    onselectedindexchanged="drPouWord_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btnPouWordAdd" runat="server" Text="Add" 
                    onclick="btnPouWordAdd_Click" />
            </td>
            <td>
                <asp:Button ID="btnPouWordEdit" runat="server" Text="Edit" 
                    onclick="btnPouWordEdit_Click" />
            </td>
            <td>
                <asp:Button ID="btnPouWordDelete" runat="server" Text="Delete" 
                    onclick="btnPouWordDelete_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
            <center>
                <div id="divPouroshovaWordAdd" runat="server">
                    <strong>New Word:</strong> &nbsp
                    <asp:TextBox ID="txtNewPouWord" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnPouNewWordSave" runat="server" Text="Save" 
                        onclick="btnPouNewWordSave_Click" style="height: 26px" /> &nbsp
                    <asp:Button ID="btnPouNewWordCancel" runat="server" Text="Cancel" 
                        onclick="btnPouNewWordCancel_Click" />
                </div>              
            </center>
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divPouroshovaWordEdit" runat="server">
                    <strong>Selected Word:</strong> &nbsp
                    <asp:TextBox ID="txtEditPouWord" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnPouEditWordUpdate" runat="server" Text="Update" 
                        onclick="btnPouEditWordUpdate_Click" /> &nbsp
                    <asp:Button ID="btnPouEditWordCancel" runat="server" Text="Cancel" 
                        onclick="btnPouEditWordCancel_Click" />
                </div>
            </center>
            </td>
         </tr>
    </table>
    </center>
    </ContentTemplate>
    </asp:UpdatePanel>
    
    <hr />
    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
    <ContentTemplate> 
    <strong>Distribution of Parlament Seat</strong>
    <br />
        <asp:Label ID="lblSeatMessage" runat="server" ForeColor="#FF0066"></asp:Label>
    <center>
    <table>
        <tr>
            <td>
               <strong>Seat Name:</strong> 
            </td>
            <td>
                <asp:DropDownList ID="drSeatName" runat="server" 
                    onselectedindexchanged="drSeatName_SelectedIndexChanged" 
                    style="height: 22px" AutoPostBack="True">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btnSeatNameAdd" runat="server" Text="Add" 
                    onclick="btnSeatNameAdd_Click" />
            </td>
            <td>
                <asp:Button ID="btnSeatNameEdit" runat="server" Text="Edit" 
                    onclick="btnSeatNameEdit_Click" />
            </td>
            <td>
                <asp:Button ID="btnSeatNameDelete" runat="server" Text="Delete" 
                    onclick="btnSeatNameDelete_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
            <center>
                <div id="divSeatNameAdd" runat="server">
                    <strong>New Seat:</strong> &nbsp
                    <asp:TextBox ID="txtNewSeat" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnNewSeatSave" runat="server" Text="Save" 
                        onclick="btnNewSeatSave_Click" /> &nbsp
                    <asp:Button ID="btnNewSeatCancel" runat="server" Text="Cancel" 
                        onclick="btnNewSeatCancel_Click" />
                </div>              
            </center>
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divSeatNameEdit" runat="server">
                    <strong>Selected Seat:</strong> &nbsp
                    <asp:TextBox ID="txtEditSeat" runat="server"></asp:TextBox> <br />
                    <asp:Button ID="btnEditSeatUpdate" runat="server" Text="Update" 
                        onclick="btnEditSeatUpdate_Click" /> &nbsp
                    <asp:Button ID="btnEditSeatCancel" runat="server" Text="Cancel" 
                        onclick="btnEditSeatCancel_Click" />
                </div>
            </center>
            </td>
         </tr>
         <tr>
            <td>
                <strong>Assigned District:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drSeatDist" runat="server" 
                    onselectedindexchanged="drSeatDist_SelectedIndexChanged" 
                    style="height: 22px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td colspan="2">    
                <asp:Button ID="btnSeatDistAssign" runat="server" Text="Assign" 
                    onclick="btnSeatDistAssign_Click" />
            </td>
            <td>    
                <asp:Button ID="btnSeatDistDelete" runat="server" Text="Delete" 
                    onclick="btnSeatDistDelete_Click" />
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divAssignDistrict" runat="server">
                    <asp:DropDownList ID="drSeatDistAdd" runat="server" 
                        onselectedindexchanged="drSeatDistAdd_SelectedIndexChanged">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList> &nbsp &nbsp
                    <asp:Button ID="btnSeatDistAdd" runat="server" Text="Add" 
                        onclick="btnSeatDistAdd_Click" /> &nbsp &nbsp
                    <asp:Button ID="Button4" runat="server" Text="Cancel" />
                </div>
            </center>
            </td>
         </tr>
         <tr>
            <td>
                <strong>Assigned Upozilla:</strong>
            </td>
            <td>
                <asp:DropDownList ID="drSeatUpozilla" runat="server" 
                    onselectedindexchanged="drSeatUpozilla_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td colspan="2">    
                <asp:Button ID="btnSeatUpozillaAssign" runat="server" Text="Assign" 
                    onclick="btnSeatUpozillaAssign_Click" style="height: 26px" />
            </td>
            <td>    
                <asp:Button ID="btnSeatUpozillaDelete" runat="server" Text="Delete" 
                    onclick="btnSeatUpozillaDelete_Click" />
            </td>
         </tr>
         <tr>
            <td colspan="5">
            <center>
                <div id="divAssighUpozilla" runat="server">
                    <asp:DropDownList ID="drSeatUpozillaAdd" runat="server" 
                        onselectedindexchanged="drSeatUpozillaAdd_SelectedIndexChanged">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList> &nbsp &nbsp
                    <asp:Button ID="btnSeatUpozillaAdd" runat="server" Text="Add" 
                        onclick="btnSeatUpozillaAdd_Click" /> &nbsp &nbsp
                    <asp:Button ID="Button5" runat="server" Text="Cancel" />
                </div>
            </center>
            </td>
         </tr>
    </table>
    </center>
    </ContentTemplate>
    </asp:UpdatePanel>
    <hr />    
</asp:Content>

