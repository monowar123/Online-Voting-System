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

namespace Online_Voting_System.Master_Page
{
    public partial class Main : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["role"].ToString() == "Super Admin")
            //Session["pageId"] = null;         
        }

        protected void hHome_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].ToString() == "Super Admin")
                {
                    Session["pageId"] = "Home";
                    Session["btnSave"] = "NotClicked";
                    Response.Redirect("/SuperAdmin/Edit.aspx", false);
                }
            }
            catch
            {
                
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void hVotarInfo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Votar Info.aspx");            
        }

        protected void hCandidateInfo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Candidate Info.aspx");
        }

        protected void hPartyInfo_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].ToString() == "Super Admin")
                {
                    Session["pageId"] = "PartyInfo";
                    Session["btnSave"] = "NotClicked";
                    Response.Redirect("/SuperAdmin/Edit.aspx", false);
                }
            }
            catch
            {
                Response.Redirect("~/Party Info.aspx");
            }
        }

        protected void hPolling_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].ToString() == "Super Admin")
                {
                    Response.Redirect("/SuperAdmin/SuperAdminHome.aspx", false);
                }
            }
            catch
            {
                Response.Redirect("~/Log In.aspx");
            }
        }

        protected void hAbout_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].ToString() == "Super Admin")
                {
                    Session["pageId"] = "About";
                    Session["btnSave"] = "NotClicked";
                    Response.Redirect("/SuperAdmin/Edit.aspx", false);
                }
            }
            catch
            {
                Response.Redirect("~/About.aspx");
            }
        }

        protected void hContactUs_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].ToString() == "Super Admin")
                {
                    Session["pageId"] = "ContactUs";
                    Session["btnSave"] = "NotClicked";
                    Response.Redirect("/SuperAdmin/Edit.aspx", false);
                }
            }
            catch
            {
                Response.Redirect("~/Contact Us.aspx");
            }
        }

        protected void hRules_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].ToString() == "Super Admin")
                {
                    Session["pageId"] = "Rules";
                    Session["btnSave"] = "NotClicked";
                    Response.Redirect("/SuperAdmin/Edit.aspx", false);
                }
            }
            catch
            {
                Response.Redirect("~/Rules.aspx");
            }
        }

        protected void hHelp_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].ToString() == "Super Admin")
                {
                    Session["pageId"] = "Help";
                    Session["btnSave"] = "NotClicked";
                    Response.Redirect("/SuperAdmin/Edit.aspx", false);
                }
            }
            catch
            {
                Response.Redirect("~/Help.aspx");
            }
        }

        protected void hMyAccount_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].ToString() == "Super Admin")
                {
                    Response.Redirect("/SuperAdmin/SuperAdminHome.aspx", false);
                }
            }
            catch
            {
                Response.Redirect("~/Log In.aspx");
            }
        }
    }
}
