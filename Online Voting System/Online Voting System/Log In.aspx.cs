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
    public partial class Log_In : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == string.Empty || txtPassword.Text == string.Empty)
            {
                lblError.Text = "Field should not be empty.";
            }
            else if (DrRole.SelectedIndex == 0)
            {
                lblError.Text = "Select a role.";
            }
            else
            {
                try
                {
                    Gateway gateWayObject = new Gateway();
                    DataTable dataTable = new DataTable();

                    if (DrRole.SelectedItem.ToString() == "Super Admin")
                    {

                        string sqlString = "select * from AdminInfo where user_name='" + txtUserName.Text + "' and password='" + txtPassword.Text + "' and admintype='" + DrRole.SelectedItem.ToString() + "'";
                        dataTable = gateWayObject.SelectData(sqlString);

                        if (dataTable.Rows.Count == 1)
                        {
                            DataRow dr = dataTable.Rows[0];

                            if (dr["adminstatus"].ToString() == "Active")
                            {

                                Session["role"] = dr["admintype"].ToString();
                                Session["pageId"] = null;
                                //Session["adminName"] = dr["user_name"].ToString();
                                Session["adminId"] = dr["votar_id"].ToString();
                                
                                Response.Redirect("SuperAdmin/SuperAdminHome.aspx", false);
                                
                            }
                            else
                            {
                                lblError.Text = "This account is currently blocked.";
                            }
                        }
                        else
                        {
                            lblError.Text = "Invalid username, password or role";
                        }
                    }
                    else if (DrRole.SelectedItem.ToString() == "Admin")
                    {

                    }
                    else if (DrRole.SelectedItem.ToString() == "General")
                    {

                    }
                }
                catch (Exception ex)
                {
                    Response.Redirect("~/Error.aspx?Error=" + ex.Message);
                }
            }
        }
    }
}
