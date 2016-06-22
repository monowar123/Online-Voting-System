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
using System.Data.SqlClient;
using System.Collections.Generic;
using Online_Voting_System.BusinessLogic;

namespace Online_Voting_System.SuperAdmin
{
    public partial class Edit : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["btnSave"].ToString() == "NotClicked")
            {
                try
                {
                    Gateway gateWayObject = new Gateway();
                    DataTable dataTable = new DataTable();
                    string sqlString = "select * from PageInfo where pageId='" + Session["pageId"].ToString() + "'";

                    dataTable = gateWayObject.SelectData(sqlString);
                    if (dataTable.Rows.Count == 1)
                    {
                        DataRow dr = dataTable.Rows[0];
                        lblPageName.Text = "Page Name: " + dr["pageId"].ToString();
                        lblModifyDate.Text = "Last modified: " + dr["modifydate"].ToString();
                        lblModifiedBy.Text = "Modified by: " + dr["modifiedby"].ToString();
                        myEditor.Text = dr["pageContent"].ToString();
                        Session["btnSave"] = "Clicked";
                    }
                }
                catch (Exception ex)
                {
                    Response.Redirect("~/Error.aspx?Error=" + ex.Message);
                }
            }
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Gateway gateWayObject = new Gateway();
                string selectString = "select vname from VotarInfo where votar_id='" + Session["adminId"].ToString() + "'";
                DataTable dataTable = new DataTable();
                dataTable = gateWayObject.SelectData(selectString);
                DataRow dr = dataTable.Rows[0];

                string updateString = "update PageInfo set pageContent='" + myEditor.Text + "', modifydate='" + DateTime.Now + "', modifiedby='" + dr["vname"] + "' where pageId='" + Session["pageId"].ToString() + "'";
                if (gateWayObject.updateData(updateString))
                {
                    lblSaveMessage.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Error.aspx?Error=" + ex.Message);
            }            
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("SuperAdminHome.aspx",true);
        }
    }
}
