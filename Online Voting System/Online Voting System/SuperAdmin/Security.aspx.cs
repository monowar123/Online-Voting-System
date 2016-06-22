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
    public partial class Security : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divUserName.Visible = false;
            divPassword.Visible = false;
            divEmail.Visible = false;
            divAlternateEmail.Visible = false;
            divQuestion.Visible = false;
            if (Session["adminId"] != null)
            {
                Gateway gateWayObject = new Gateway();
                string selectString = "select user_name,email,alternateEmail,squestion from AdminInfo where votar_id='" + Session["adminId"].ToString() + "'";
                DataTable dataTable = new DataTable();
                dataTable = gateWayObject.SelectData(selectString);
                DataRow dr = dataTable.Rows[0];
                lblUserName.Text = dr["user_name"].ToString();
                lblEmail.Text = dr["email"].ToString();
                lblAlternateEmail.Text = dr["alternateEmail"].ToString();
                lblQuestion.Text = dr["squestion"].ToString();
            }
        }

        protected void userNameEdit_Click(object sender, EventArgs e)
        {
            divUserName.Visible = true;
            txtNewUserName.Text = string.Empty;
            txtUserNamePassword.Text = string.Empty;
        }

        protected void btnUserNameSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNewUserName.Text != string.Empty && txtUserNamePassword.Text != string.Empty)
                {
                    string updateString = "update AdminInfo set user_name='" + txtNewUserName.Text + "' where votar_id='" + Session["adminId"].ToString() + "' and password='" + txtUserNamePassword.Text + "'";
                    Gateway gateWay = new Gateway();
                    if (gateWay.updateData(updateString))
                    {
                        lblSecurity.Text = "Data updated Successfully.";
                        lblUserName.Text = txtNewUserName.Text;
                    }
                    else
                    {
                        lblSecurity.Text = "Password is not correct";
                    }
                }
                else
                {
                    throw new Exception("Field should not be empty.");
                }
            }
            catch (Exception ex)
            {
                lblSecurity.Text = ex.Message;
            }
        }

        protected void btnUserNameCancel_Click(object sender, EventArgs e)
        {

        }

        protected void passwordEdit_Click(object sender, EventArgs e)
        {
            divPassword.Visible = true;
            txtNewPassword.Text = string.Empty;
            txtConfirmNewPassword.Text = string.Empty;
            txtOldPassword.Text = string.Empty;
        }

        protected void btnPasswordSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNewPassword.Text != string.Empty && txtConfirmNewPassword.Text != string.Empty && txtOldPassword.Text != string.Empty)
                {
                    if (txtNewPassword.Text == txtConfirmNewPassword.Text)
                    {
                        string updateString = "update AdminInfo set password='" + txtNewPassword.Text + "' where password='" + txtOldPassword.Text + "' and votar_id='" + Session["adminId"].ToString() + "'";
                        Gateway gateWay = new Gateway();
                        if (gateWay.updateData(updateString))
                        {
                            lblSecurity.Text = "Data updated successfully.";
                        }
                        else
                        {
                            lblSecurity.Text = "Wrong Password.";
                        }
                    }
                    else
                    {
                        lblSecurity.Text = "Password does not match";
                    }
                }
                else
                {
                    lblSecurity.Text = "Field should not be empty";
                }
            }
            catch (Exception ex)
            {
                lblSecurity.Text = ex.Message;
            }
        }

        protected void btnPasswordCancel_Click(object sender, EventArgs e)
        {

        }

        protected void emailEdit_Click(object sender, EventArgs e)
        {
            divEmail.Visible = true;
            txtNewEmail.Text = string.Empty;
            txtEmailPassword.Text = string.Empty;
        }

        protected void btnEmailSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNewEmail.Text != string.Empty && txtEmailPassword.Text != string.Empty)
                {
                    string updateString = "update AdminInfo set email='" + txtNewEmail.Text + "' where votar_id='" + Session["adminId"].ToString() + "' and password='" + txtEmailPassword.Text + "'";
                    Gateway gateWay = new Gateway();
                    if (gateWay.updateData(updateString))
                    {
                        lblSecurity.Text = "Data updated Successfully.";
                        lblEmail.Text = txtNewEmail.Text;
                    }
                    else
                    {
                        lblSecurity.Text = "Password is not correct";
                    }
                }
                else
                {
                    throw new Exception("Field should not be empty.");
                }
            }
            catch (Exception ex)
            {
                lblSecurity.Text = ex.Message;
            }
        }

        protected void btnEmailCancel_Click(object sender, EventArgs e)
        {

        }

        protected void alternaeEmalEdit_Click(object sender, EventArgs e)
        {
            divAlternateEmail.Visible = true;
            txtAlternateEmail.Text = string.Empty;
            txtAlternateEmailPassword.Text = string.Empty;
        }

        protected void btnAlternateEmailSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtAlternateEmail.Text != string.Empty && txtAlternateEmailPassword.Text != string.Empty)
                {
                    string updateString = "update AdminInfo set alternateEmail='" + txtAlternateEmail.Text + "' where votar_id='" + Session["adminId"].ToString() + "' and password='" + txtAlternateEmailPassword.Text + "'";
                    Gateway gateWay = new Gateway();
                    if (gateWay.updateData(updateString))
                    {
                        lblSecurity.Text = "Data updated Successfully.";
                        lblAlternateEmail.Text = txtAlternateEmail.Text;
                    }
                    else
                    {
                        lblSecurity.Text = "Password is not correct";
                    }
                }
                else
                {
                    throw new Exception("Field should not be empty.");
                }
            }
            catch (Exception ex)
            {
                lblSecurity.Text = ex.Message;
            }
        }

        protected void btnAlternateEmailCancel_Click(object sender, EventArgs e)
        {
            
        }

        protected void questionEdit_Click(object sender, EventArgs e)
        {
            divQuestion.Visible = true;
            txtQuestion.Text = string.Empty;
            txtAnswer.Text = string.Empty;
            txtQuestionPassword.Text = string.Empty;
        }

        protected void btnQuestionSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtQuestion.Text != string.Empty && txtAnswer.Text != string.Empty && txtQuestionPassword.Text != string.Empty)
                {                    
                    string updateString = "update AdminInfo set squestion='" + txtQuestion.Text + "', sanswer='"+txtAnswer.Text+ "' where password='" + txtQuestionPassword.Text + "' and votar_id='" + Session["adminId"].ToString() + "'";
                    Gateway gateWay = new Gateway();
                    if (gateWay.updateData(updateString))
                    {
                        lblSecurity.Text = "Data updated successfully.";
                    }
                    else
                    {
                        lblSecurity.Text = "Wrong Password.";
                    }                    
                }
                else
                {
                    lblSecurity.Text = "Field should not be empty";
                }
            }
            catch (Exception ex)
            {
                lblSecurity.Text = ex.Message;
            }
        }

        protected void btnQuestionCancel_Click(object sender, EventArgs e)
        {

        }
    }
}
