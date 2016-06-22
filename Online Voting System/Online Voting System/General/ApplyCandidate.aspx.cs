using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace Online_Voting_System.General
{
    public partial class ApplyCandidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divMpElection.Visible = false;
            //DivNominaton.Visible = false;
            divPouroshova.Visible = false;
            divUnionelection.Visible = false;
            divCitycorporation.Visible = false;
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drElectionType.SelectedIndex == 1)
            {
                divMpElection.Visible = true;
                //DivNominaton.Visible = true;
            }
            if (drElectionType.SelectedIndex == 2)
            {
                divCitycorporation.Visible = true;
            }
            if (drElectionType.SelectedIndex == 3)
            {
                divUnionelection.Visible = true;
            }
            if (drElectionType.SelectedIndex == 4)
            {
                divPouroshova.Visible = true;
            }

        }

        protected void drMPElectionParty_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drMPElectionParty.SelectedIndex == 1)
            {
                DivNominaton.Visible = false;
            }
        }
    }
}
