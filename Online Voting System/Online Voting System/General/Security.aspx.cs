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
    public partial class Security : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divUserName.Visible = false;
            divPassword.Visible = false;
            divEmail.Visible = false;
            divAlternateEmail.Visible = false;
            divQuestion.Visible = false;
        }

        protected void userNameEdit_Click(object sender, EventArgs e)
        {
            divUserName.Visible = true;
        }

        protected void btnUserNameSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnUserNameCancel_Click(object sender, EventArgs e)
        {

        }

        protected void passwordEdit_Click(object sender, EventArgs e)
        {
            divPassword.Visible = true;
        }

        protected void btnPasswordSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnPasswordCancel_Click(object sender, EventArgs e)
        {

        }

        protected void emailEdit_Click(object sender, EventArgs e)
        {
            divEmail.Visible = true;
        }

        protected void btnEmailSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnEmailCancel_Click(object sender, EventArgs e)
        {

        }

        protected void alternaeEmalEdit_Click(object sender, EventArgs e)
        {
            divAlternateEmail.Visible = true;
        }

        protected void btnAlternateEmailSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnAlternateEmailCancel_Click(object sender, EventArgs e)
        {

        }

        protected void questionEdit_Click(object sender, EventArgs e)
        {
            divQuestion.Visible = true;
        }

        protected void btnQuestionSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnQuestionCancel_Click(object sender, EventArgs e)
        {

        }
    }
}
