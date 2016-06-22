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

namespace Online_Voting_System.SuperAdmin
{
    public partial class AdminList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["adminId"] != null)
                {
                    try
                    {
                        Gateway gateWay = new Gateway();
                        string selectString = "select VotarInfo.vname, AdminInfo.email, admintype, adminstatus from VotarInfo, AdminInfo where AdminInfo.votar_id=VotarInfo.votar_id and AdminInfo.votar_id='" + Session["adminId"].ToString() + "'";
                        DataTable dataTable = new DataTable();
                        dataTable = gateWay.SelectData(selectString);

                        dataTable.Columns["vname"].ColumnName = "Admin Name";
                        dataTable.Columns["email"].ColumnName = "Email Address";
                        dataTable.Columns["admintype"].ColumnName = "Admin Type";
                        dataTable.Columns["adminstatus"].ColumnName = "Admin Status";

                        GridView1.DataSource = dataTable;
                        GridView1.DataBind();
                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
        }
    }
}
