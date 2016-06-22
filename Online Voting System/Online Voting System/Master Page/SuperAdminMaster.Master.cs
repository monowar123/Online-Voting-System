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

namespace Online_Voting_System.SuperAdmin
{
    public partial class SuperAdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Remove("role");
            Session.Remove("pageId");
            Session.Remove("adminName");
            Session.Remove("btnSave");
            Response.Redirect("~/Log In.aspx");
        }
    }
}
