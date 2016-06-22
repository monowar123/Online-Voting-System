<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Page/General.Master" CodeBehind="ApplyCandidate.aspx.cs" Inherits="Online_Voting_System.General.ApplyCandidate" %>

<asp:Content ID="applyCandidate_head" ContentPlaceHolderID="generalHead" runat="server">

</asp:Content>

<asp:Content ID="applyCandidate_body" ContentPlaceHolderID="generalBody" runat="server">
<center>
        <h2>Candidate Registration</h2>
    </center>
    <hr />
    <center>
    <table>
       <tr>
             <td>
             <center>
             <strong>Election Type</strong> &nbsp
             <asp:DropDownList ID="drElectionType" runat="server" 
                     onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>--SELECT--</asp:ListItem>
                 <asp:ListItem>MP Election</asp:ListItem>
                 <asp:ListItem>City Corporation Election</asp:ListItem>
                 <asp:ListItem>Union Porishod Election</asp:ListItem>
                 <asp:ListItem>Pouroshava Election</asp:ListItem>
                 
            </asp:DropDownList>
            </center>
             </td>
       </tr>
       
       <tr>
         <td class="style1" >
         <center>
             <div id="divMpElection" runat="server">
             <strong>MP Election</strong>
             <table>
             <tr>
               <td>
               <strong>Select party</strong> 
               </td>
               <td>
                 <asp:DropDownList ID="drMPElectionParty" runat="server" 
                       onselectedindexchanged="drMPElectionParty_SelectedIndexChanged">
                 <asp:ListItem>--SELECT--</asp:ListItem>
                 <asp:ListItem>Nutrul Party</asp:ListItem>
                 </asp:DropDownList>
               </td>
              </tr>
             
             <tr>
                 <td>
                 <strong>Select District</strong>
                 </td>
                 <td>
                 <asp:DropDownList ID="drMpElectionDistrict" runat="server">
                 <asp:ListItem>--SELECT--</asp:ListItem>
                 </asp:DropDownList>
                 </td>
             </tr>
             
             <tr> 
               <td>
               <strong>Select Seat</strong> 
               </td>
               <td>
               <asp:DropDownList ID="drMpElectionSeat" runat="server">
               <asp:ListItem>--SELECT--</asp:ListItem>
               </asp:DropDownList>
               </td>
             </tr>
             <tr>
                <td>
                <strong>Deposite Slip Number</strong> 
                </td>
                <td>
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>   
                 </td>
              </tr>
                 
                 <tr>
                     <td>
                     
                     <div id="DivNominaton" runat="server">
                     <strong>Nomination Code</strong>
                      <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td> 
                     </div>
                    
                     
                     </td>
             </tr>
             
             <tr>
                 <td>
                 <asp:Button ID="Button3" runat="server" Text="Apply as Candidate" />
                 </td>
                  <td>
                  <asp:Button ID="Button4" runat="server" Text="Cancel" />
                  </td>
             </tr>
             </table>
             </div>
       </center>
         </td>
       </tr>
       
       <tr>
        <td class="style1">
        <center>
            <div id="divCitycorporation" runat="server">
            <strong>City Corporation Election</strong>
            <table>
                <tr>
                    <td>
                    <strong>Apply as </strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="drCityCorporatonApply" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                            <asp:ListItem>Mayor</asp:ListItem>
                            <asp:ListItem>Councilor</asp:ListItem>
                        </asp:DropDownList> 
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Apply as Candidate" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Cancel" />
                    </td>
                </tr>
            </table>
            
            </div>
            </center>
       
        </td>
       </tr>
       
       <tr>
            <td class="style1">
                <div id="divPouroshova" runat="server">
                <center>
                <strong>Pouroshova Election</strong>
                    <table>
                    <tr>
                        <td>
                        <strong>Apply as </strong>
                        </td>
                        <td>
                            <asp:DropDownList ID="drPouroshovaApply" runat="server">
                            <asp:ListItem>--SELECT--</asp:ListItem>
                                <asp:ListItem>Chairman</asp:ListItem>
                                <asp:ListItem>Councilor</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:Button ID="Button5" runat="server" Text="Apply as Canddate" />
                        </td>
                        <td>
                            <asp:Button ID="Button6" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                    </table>
                    </center>
                </div>
            </td>   
       </tr>
       
       
       <tr>
           <td class="style1">
               <div id="divUnionelection" runat="server" >
               <center>
               <strong>Union Porishod Election</strong>
                   <table>
                   <tr>
                       <td>
                       <strong>Apply as </strong>
                       </td>
                       <td>
                           <asp:DropDownList ID="drUnionPorishodApply" runat="server">
                           <asp:ListItem>--SELECT--</asp:ListItem>
                               <asp:ListItem>Chairman</asp:ListItem>
                               <asp:ListItem>Councilor</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                   </tr>
                   
                   <tr>
                       <td>
                           <asp:Button ID="Button7" runat="server" Text="Apply as Candidate" />
                       </td>
                       <td>
                           <asp:Button ID="Button8" runat="server" Text="Cancel" />
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