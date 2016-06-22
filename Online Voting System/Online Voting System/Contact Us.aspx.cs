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
using Online_Voting_System.BusinessLogic;

namespace Online_Voting_System
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Gateway gateWayObject = new Gateway();
                DataTable dataTable = new DataTable();
                string sqlString = "select pageContent from PageInfo where pageId='ContactUs'";
                dataTable = gateWayObject.SelectData(sqlString);
                if (dataTable.Rows.Count == 1)
                {
                    DataRow dr = dataTable.Rows[0];
                    editableDiv.InnerHtml = dr["pageContent"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Error.aspx?Error=" + ex.Message);
            }
        }
    }
}
