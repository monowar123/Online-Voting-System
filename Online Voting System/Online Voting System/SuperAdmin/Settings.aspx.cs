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
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            divDivisionAdd.Visible = false;
            divDivisionEdit.Visible = false;

            divDistrictAdd.Visible = false;
            divDistrictEdit.Visible = false;

            divUpozillaAdd.Visible = false;
            divUpozillaEdit.Visible = false;

            divUnionAdd.Visible = false;
            divUnionEdit.Visible = false;

            divSeatNameAdd.Visible = false;
            divSeatNameEdit.Visible = false;
            divAssignDistrict.Visible = false;
            divAssighUpozilla.Visible = false;

            divCityCorNameAdd.Visible = false;
            divCityCorNameEdit.Visible = false;
            divCityCorDistrict.Visible = false;
            divCityCorUpozilla.Visible = false;
            divCityCorWordAdd.Visible = false;
            divCityCorWordEdit.Visible = false;

            divPouroshovaAdd.Visible = false;
            divPouroshovaEdit.Visible = false;
            divPouroshovaDist.Visible = false;
            divPouroshovaUpozilla.Visible = false;
            divPouroshovaWordAdd.Visible = false;
            divPouroshovaWordEdit.Visible = false;

            if (!IsPostBack)
            {
                try
                {
                    string selectDivision = "select divName from Division";
                    string selectDistrict = "select distName from District";
                    string selectCityCorporation = "select cityCorName from CityCorporation";
                    string selectPouroshova = "select pouName from Pouroshova";

                    DataTable dataTable = new DataTable();
                    Gateway gataWay = new Gateway();

                    dataTable = gataWay.SelectData(selectDivision);
                    foreach (DataRow dr in dataTable.Rows)
                    {
                        drDivision.Items.Add(dr["divName"].ToString());                        
                    }
                    dataTable.Clear();

                    dataTable = gataWay.SelectData(selectDistrict);
                    foreach (DataRow dr in dataTable.Rows)
                    {
                        drCityCorDistAdd.Items.Add(dr["distName"].ToString());
                        drPouDistAdd.Items.Add(dr["distName"].ToString());
                        drSeatDistAdd.Items.Add(dr["distName"].ToString());
                    }
                    dataTable.Clear();

                    dataTable = gataWay.SelectData(selectCityCorporation);
                    foreach (DataRow dr in dataTable.Rows)
                    {
                        drCityCorName.Items.Add(dr["cityCorName"].ToString());
                    }
                    dataTable.Clear();

                    dataTable = gataWay.SelectData(selectPouroshova);
                    foreach (DataRow dr in dataTable.Rows)
                    {
                        drPouroshovaName.Items.Add(dr["pouName"].ToString());
                    }
                    dataTable.Clear();

                }
                catch (Exception ex)
                {
                    Response.Redirect("~/Error.aspx?Error=" + ex.Message);
                }
            }
        }

        protected void drDivision_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                drDistrict.Items.Clear();
                drDistrict.Items.Add("--SELECT--");
                string selectString = "select distName from District, Division where District.divId=Division.divId and Division.divName='" + drDivision.SelectedItem.ToString() + "'";
                DataTable dataTable = new DataTable();
                Gateway gateWay = new Gateway();
                dataTable = gateWay.SelectData(selectString);
                foreach (DataRow dr in dataTable.Rows)
                {
                    drDistrict.Items.Add(dr["distName"].ToString());
                }
            }
            catch (Exception ex)
            {
                lblSetStructureMessage.Text = ex.Message;
            }

        }

        protected void btnDivisionAdd_Click(object sender, EventArgs e)
        {
            txtNewDivision.Text = string.Empty;
            divDivisionAdd.Visible = true;
        }

        protected void btnDivisionEdit_Click(object sender, EventArgs e)
        {
            divDivisionEdit.Visible = true;
            txtEditDivision.Text = drDivision.SelectedItem.ToString();
        }

        protected void btnDivisionDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewDivSave_Click(object sender, EventArgs e)
        {
            if (txtNewDivision.Text != string.Empty)
            {
                try
                {
                    string insertString = "insert into [Division] (divId, divName) values (@divId, @divName)";
                    string selectStirng = "select divName from Division where divName='" + txtNewDivision.Text + "'";
                    List<SqlParameter> parameter = new List<SqlParameter>();
                    Gateway gateWayObject = new Gateway();
                    DataTable dataTable = new DataTable();
                    dataTable = gateWayObject.SelectData(selectStirng);
                    if (dataTable.Rows.Count > 0)
                    {
                        throw new Exception("The name already exist.");
                    }
                    parameter.Add(new SqlParameter("@divId", Guid.NewGuid().ToString()));
                    parameter.Add(new SqlParameter("@divName", txtNewDivision.Text));

                    if (gateWayObject.InsertData(insertString, parameter))
                    {
                        drDivision.Items.Add(txtNewDivision.Text);
                        //drDivision.Items.Clear();
                        lblSetStructureMessage.Text = "Item saved successfully.";
                    }
                }
                catch (Exception ex)
                {
                    lblSetStructureMessage.Text = ex.Message;
                }
            }
            else
            {
                lblSetStructureMessage.Text = "Field should not be empty.";
            }
        }

        protected void btnNewDivCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditDivUpdate_Click(object sender, EventArgs e)
        {
            if (txtEditDivision.Text != string.Empty)
            {
                try
                {
                    string updateString = "update Division set divName='" + txtEditDivision.Text + "' where divName='" + drDivision.SelectedItem.ToString() + "'";
                    Gateway gateWay = new Gateway();
                    string selectString = "select divName from Division where divName='" + txtEditDivision.Text + "'";
                    DataTable dataTable = new DataTable();
                    dataTable = gateWay.SelectData(selectString);
                    if (dataTable.Rows.Count > 0)
                    {
                        throw new Exception("The name already exist.");
                    }
                    if (gateWay.updateData(updateString))
                    {
                        lblSetStructureMessage.Text = "Data updated.";
                        drDivision.Items.RemoveAt(drDivision.SelectedIndex);
                        drDivision.Items.Add(txtEditDivision.Text);
                    }
                }
                catch (Exception ex)
                {
                    lblSetStructureMessage.Text = ex.Message;
                }
            }
            else
            {
                lblSetStructureMessage.Text = "Field should not be empty.";
            }
        }

        protected void btnEditDivCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnDistrictAdd_Click(object sender, EventArgs e)
        {
            divDistrictAdd.Visible = true;
            txtNewDistrict.Text = string.Empty;
        }

        protected void btnDistrictEdit_Click(object sender, EventArgs e)
        {
            divDistrictEdit.Visible = true;
            txtEditDistrict.Text = drDistrict.SelectedItem.ToString();
        }

        protected void btnDistrictDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewDistSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNewDistrict.Text != string.Empty)
                {
                    if (drDivision.SelectedIndex != 0)
                    {
                        string selectString = "select divId from Division where divName='" + drDivision.SelectedItem.ToString() + "'";
                        string insertStirng = "insert into [District] (distId, distName, divId) values(@distId, @distName, @divId)";
                        string findDuplicate = "select distName from District where distName='" + txtNewDistrict.Text + "'";

                        Gateway gateWay = new Gateway();
                        DataTable dataTable = new DataTable();

                        dataTable = gateWay.SelectData(findDuplicate);
                        if (dataTable.Rows.Count > 0)
                        {
                            throw new Exception("The name already exist");
                        }
                        dataTable.Clear();

                        dataTable = gateWay.SelectData(selectString);
                        DataRow dr = dataTable.Rows[0];

                        List<SqlParameter> parameter = new List<SqlParameter>();
                        parameter.Add(new SqlParameter("@distId", Guid.NewGuid().ToString()));
                        parameter.Add(new SqlParameter("@distName", txtNewDistrict.Text));
                        parameter.Add(new SqlParameter("@divId", dr["divId"].ToString()));

                        if (gateWay.InsertData(insertStirng, parameter))
                        {
                            drDistrict.Items.Add(txtNewDistrict.Text);
                            lblSetStructureMessage.Text = "Item inserted successfully.";
                        }
                    }
                    else
                    {
                        lblSetStructureMessage.Text = "Please select a division.";
                    }
                }
                else
                {
                    lblSetStructureMessage.Text = "Field should not be empty.";
                }
            }
            catch (Exception ex)
            {
                lblSetStructureMessage.Text = ex.Message;
            }
        }

        protected void btnNewDistCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditDistUpdate_Click(object sender, EventArgs e)
        {
            if (txtEditDistrict.Text != string.Empty)
            {
                try
                {
                    string updateString = "update District set distName='" + txtEditDistrict.Text + "' where distName='" + drDistrict.SelectedItem.ToString() + "'";
                    Gateway gateWay = new Gateway();
                    string selectString = "select distName from District where distName='" + txtEditDistrict.Text + "'";
                    DataTable dataTable = new DataTable();
                    dataTable = gateWay.SelectData(selectString);
                    if (dataTable.Rows.Count > 0)
                    {
                        throw new Exception("The name already exist.");
                    }
                    if (gateWay.updateData(updateString))
                    {
                        lblSetStructureMessage.Text = "Data updated.";
                        drDistrict.Items.RemoveAt(drDistrict.SelectedIndex);
                        drDistrict.Items.Add(txtEditDistrict.Text);
                    }
                }
                catch (Exception ex)
                {
                    lblSetStructureMessage.Text = ex.Message;
                }
            }
            else
            {
                lblSetStructureMessage.Text = "Field should not be empty.";
            }
        }

        protected void btnEditDistCancel_Click(object sender, EventArgs e)
        {

        }

        protected void drUpozilla_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                drUnion.Items.Clear();
                drUnion.Items.Add("--SELECT--");
                string selectString = "select unionName from [Union], Upozilla where [Union].upoId=Upozilla.upoId and Upozilla.upoName='" + drUpozilla.SelectedItem.ToString() + "'";
                DataTable dataTable = new DataTable();
                Gateway gateWay = new Gateway();
                dataTable = gateWay.SelectData(selectString);
                foreach (DataRow dr in dataTable.Rows)
                {
                    drUnion.Items.Add(dr["unionName"].ToString());
                }
            }
            catch (Exception ex)
            {
                lblSetStructureMessage.Text = ex.Message;
            }
        }

        protected void btnUpozillaAdd_Click(object sender, EventArgs e)
        {
            divUpozillaAdd.Visible = true;
            txtNewUpozilla.Text = string.Empty;
        }

        protected void btnUpozillaEdit_Click(object sender, EventArgs e)
        {
            divUpozillaEdit.Visible = true;
            txtEditUpozilla.Text = drUpozilla.SelectedItem.ToString();
        }

        protected void btnUpozillaDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewUpozillaSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNewUpozilla.Text != string.Empty)
                {
                    if (drDistrict.SelectedIndex != 0)
                    {
                        string selectString = "select distId from District where distName='" + drDistrict.SelectedItem.ToString() + "'";
                        string insertStirng = "insert into [Upozilla] (upoId, upoName, distId) values(@upoId, @upoName, @distId)";
                        string findDuplicate = "select upoName from Upozilla where upoName='" + txtNewUpozilla.Text + "'";

                        Gateway gateWay = new Gateway();
                        DataTable dataTable = new DataTable();

                        dataTable = gateWay.SelectData(findDuplicate);
                        if (dataTable.Rows.Count > 0)
                        {
                            throw new Exception("The name already exist");
                        }
                        dataTable.Clear();

                        dataTable = gateWay.SelectData(selectString);
                        DataRow dr = dataTable.Rows[0];

                        List<SqlParameter> parameter = new List<SqlParameter>();
                        parameter.Add(new SqlParameter("@upoId", Guid.NewGuid().ToString()));
                        parameter.Add(new SqlParameter("@upoName", txtNewUpozilla.Text));
                        parameter.Add(new SqlParameter("@distId", dr["distId"].ToString()));

                        if (gateWay.InsertData(insertStirng, parameter))
                        {
                            drUpozilla.Items.Add(txtNewUpozilla.Text);
                            lblSetStructureMessage.Text = "Item inserted successfully.";
                        }
                    }
                    else
                    {
                        lblSetStructureMessage.Text = "Please select a district.";
                    }
                }
                else
                {
                    lblSetStructureMessage.Text = "Field should not be empty.";
                }
            }
            catch (Exception ex)
            {
                lblSetStructureMessage.Text = ex.Message;
            }
        }

        protected void btnNewUpozillaCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpozillaEditUpdate_Click(object sender, EventArgs e)
        {
            if (txtEditUpozilla.Text != string.Empty)
            {
                try
                {
                    string updateString = "update Upozilla set upoName='" + txtEditUpozilla.Text + "' where upoName='" + drUpozilla.SelectedItem.ToString() + "'";
                    Gateway gateWay = new Gateway();
                    string selectString = "select upoName from Upozilla where upoName='" + txtEditUpozilla.Text + "'";
                    DataTable dataTable = new DataTable();
                    dataTable = gateWay.SelectData(selectString);
                    if (dataTable.Rows.Count > 0)
                    {
                        throw new Exception("The name already exist.");
                    }
                    if (gateWay.updateData(updateString))
                    {
                        lblSetStructureMessage.Text = "Data updated.";
                        drUpozilla.Items.RemoveAt(drUpozilla.SelectedIndex);
                        drUpozilla.Items.Add(txtEditUpozilla.Text);
                    }
                }
                catch (Exception ex)
                {
                    lblSetStructureMessage.Text = ex.Message;
                }
            }
            else
            {
                lblSetStructureMessage.Text = "Field should not be empty.";
            }
        }

        protected void btnUpozillaEditCancel_Click(object sender, EventArgs e)
        {

        }

        protected void drUnion_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnUnionAdd_Click(object sender, EventArgs e)
        {
            divUnionAdd.Visible = true;
            txtNewUnion.Text = string.Empty;
        }

        protected void btnUnionEdit_Click(object sender, EventArgs e)
        {
            divUnionEdit.Visible = true;
            txtEditUnion.Text = drUnion.SelectedItem.ToString();
        }

        protected void btnUnionDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewUnionSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNewUnion.Text != string.Empty)
                {
                    if (drUpozilla.SelectedIndex != 0)
                    {
                        string selectString = "select upoId from Upozilla where upoName='" + drUpozilla.SelectedItem.ToString() + "'";
                        string insertStirng = "insert into [Union] (unionId, unionName, upoId) values(@unionId, @unionName, @upoId)";
                        string findDuplicate = "select unionName from [Union] where unionName='" + txtNewUnion.Text + "'";

                        Gateway gateWay = new Gateway();
                        DataTable dataTable = new DataTable();

                        dataTable = gateWay.SelectData(findDuplicate);
                        if (dataTable.Rows.Count > 0)
                        {
                            throw new Exception("The name already exist");
                        }
                        dataTable.Clear();

                        dataTable = gateWay.SelectData(selectString);
                        DataRow dr = dataTable.Rows[0];

                        List<SqlParameter> parameter = new List<SqlParameter>();
                        parameter.Add(new SqlParameter("@unionId", Guid.NewGuid().ToString()));
                        parameter.Add(new SqlParameter("@unionName", txtNewUnion.Text));
                        parameter.Add(new SqlParameter("@upoId", dr["upoId"].ToString()));

                        if (gateWay.InsertData(insertStirng, parameter))
                        {
                            drUnion.Items.Add(txtNewUnion.Text);
                            lblSetStructureMessage.Text = "Item inserted successfully.";
                        }
                    }
                    else
                    {
                        lblSetStructureMessage.Text = "Please select a upozilla.";
                    }
                }
                else
                {
                    lblSetStructureMessage.Text = "Field should not be empty.";
                }
            }
            catch (Exception ex)
            {
                lblSetStructureMessage.Text = ex.Message;
            }
        }

        protected void btnNewUnionCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditUnionUpdate_Click(object sender, EventArgs e)
        {
            if (txtEditUnion.Text != string.Empty)
            {
                try
                {
                    string updateString = "update [Union] set unionName='" + txtEditUnion.Text + "' where unionName='" + drUnion.SelectedItem.ToString() + "'";
                    Gateway gateWay = new Gateway();
                    string selectString = "select unionName from [Union] where unionName='" + txtEditUnion.Text + "'";
                    DataTable dataTable = new DataTable();
                    dataTable = gateWay.SelectData(selectString);
                    if (dataTable.Rows.Count > 0)
                    {
                        throw new Exception("The name already exist.");
                    }
                    if (gateWay.updateData(updateString))
                    {
                        lblSetStructureMessage.Text = "Data updated.";
                        drUnion.Items.RemoveAt(drUnion.SelectedIndex);
                        drUnion.Items.Add(txtEditUnion.Text);
                    }
                }
                catch (Exception ex)
                {
                    lblSetStructureMessage.Text = ex.Message;
                }
            }
            else
            {
                lblSetStructureMessage.Text = "Field should not be empty.";
            }
        }

        protected void btnEditUnionCancel_Click(object sender, EventArgs e)
        {

        }

        protected void drElectionType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnElectionTypeDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewTypeSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewTypeCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditTypeUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditTypeCancel_Click(object sender, EventArgs e)
        {

        }

        protected void drCityCorName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCityCorAdd_Click(object sender, EventArgs e)
        {
            divCityCorNameAdd.Visible = true;
            txtNewCityCor.Text = string.Empty;
        }

        protected void btnCityCorEdit_Click(object sender, EventArgs e)
        {
            divCityCorNameEdit.Visible = true;
            txtEditCityCor.Text = drCityCorName.SelectedItem.ToString();
        }

        protected void btnCityCorDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewCityCorSave_Click(object sender, EventArgs e)
        {
            if (txtNewCityCor.Text != string.Empty)
            {
                try
                {
                    string insertString = "insert into [CityCorporation] (cityCorId, cityCorName) values (@cityCorId, @cityCorName)";
                    string selectStirng = "select cityCorName from CityCorporation where cityCorName='" + txtNewCityCor.Text + "'";
                    List<SqlParameter> parameter = new List<SqlParameter>();
                    Gateway gateWayObject = new Gateway();
                    DataTable dataTable = new DataTable();
                    dataTable = gateWayObject.SelectData(selectStirng);
                    if (dataTable.Rows.Count > 0)
                    {
                        throw new Exception("The name already exist.");
                    }
                    parameter.Add(new SqlParameter("@cityCorId", Guid.NewGuid().ToString()));
                    parameter.Add(new SqlParameter("@cityCorName", txtNewCityCor.Text));

                    if (gateWayObject.InsertData(insertString, parameter))
                    {
                        drCityCorName.Items.Add(txtNewCityCor.Text);
                        lblCityCorMessage.Text = "Item saved successfully.";
                    }
                }
                catch (Exception ex)
                {
                    lblCityCorMessage.Text = ex.Message;
                }
            }
            else
            {
                lblCityCorMessage.Text = "Field should not be empty.";
            }
        }

        protected void btnNewCityCorCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditCityCorUpdate_Click(object sender, EventArgs e)
        {
            if (txtEditCityCor.Text != string.Empty)
            {
                try
                {
                    string updateString = "update CityCorporation set cityCorName='" + txtEditCityCor.Text + "' where cityCorName='" + drCityCorName.SelectedItem.ToString() + "'";
                    Gateway gateWay = new Gateway();
                    string selectString = "select cityCorName from CityCorporation where cityCorName='" + txtEditCityCor.Text + "'";
                    DataTable dataTable = new DataTable();
                    dataTable = gateWay.SelectData(selectString);
                    if (dataTable.Rows.Count > 0)
                    {
                        throw new Exception("The name already exist.");
                    }
                    if (gateWay.updateData(updateString))
                    {
                        lblCityCorMessage.Text = "Data updated.";
                        drCityCorName.Items.RemoveAt(drCityCorName.SelectedIndex);
                        drCityCorName.Items.Add(txtEditCityCor.Text);
                    }
                }
                catch (Exception ex)
                {
                    lblCityCorMessage.Text = ex.Message;
                }
            }
            else
            {
                lblCityCorMessage.Text = "Field should not be empty.";
            }
        }

        protected void btnEditCityCorCancel_Click(object sender, EventArgs e)
        {

        }

        protected void drCityCorDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCityCorDistAssign_Click(object sender, EventArgs e)
        {
            divCityCorDistrict.Visible = true;
        }

        protected void btnCityCorDistDelete_Click(object sender, EventArgs e)
        {

        }

        protected void drCityCorDistAdd_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCityCorDistAdd_Click(object sender, EventArgs e)
        {
            if (drCityCorName.SelectedIndex != 0 && drCityCorDistAdd.SelectedIndex != 0)
            {

            }
        }

        protected void drCityCorUpozilla_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCityCorUpozillaAssign_Click(object sender, EventArgs e)
        {
            divCityCorUpozilla.Visible = true;
        }

        protected void btnCityCorUpozillaDelete_Click(object sender, EventArgs e)
        {

        }

        protected void drCityCorUpozillaAdd_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCityCorUpozillaAdd_Click(object sender, EventArgs e)
        {

        }

        protected void drCityCorWord_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCityCorWordAdd_Click(object sender, EventArgs e)
        {
            divCityCorWordAdd.Visible = true;
        }

        protected void btnCityCorWordEdit_Click(object sender, EventArgs e)
        {
            divCityCorWordEdit.Visible = true;
        }

        protected void btnCityCorWordDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnCityCorNewWordSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnCityCorNewWordCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnCityCorEditWordUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnCityCorEditWordCancel_Click(object sender, EventArgs e)
        {

        }

        protected void drPouroshovaName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPouAdd_Click(object sender, EventArgs e)
        {
            divPouroshovaAdd.Visible = true;
            txtNewPouroshova.Text = string.Empty;
        }

        protected void btnPouEdit_Click(object sender, EventArgs e)
        {
            divPouroshovaEdit.Visible = true;
            txtEditPouroshova.Text = drPouroshovaName.SelectedItem.ToString();
        }

        protected void btnPouDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewPouSave_Click(object sender, EventArgs e)
        {
            if (txtNewPouroshova.Text != string.Empty)
            {
                try
                {
                    string insertString = "insert into [Pouroshova] (pouId, pouName) values (@pouId, @pouName)";
                    string selectStirng = "select pouName from Pouroshova where pouName='" + txtNewPouroshova.Text + "'";
                    List<SqlParameter> parameter = new List<SqlParameter>();
                    Gateway gateWayObject = new Gateway();
                    DataTable dataTable = new DataTable();
                    dataTable = gateWayObject.SelectData(selectStirng);
                    if (dataTable.Rows.Count > 0)
                    {
                        throw new Exception("The name already exist.");
                    }
                    parameter.Add(new SqlParameter("@pouId", Guid.NewGuid().ToString()));
                    parameter.Add(new SqlParameter("@pouName", txtNewPouroshova.Text));

                    if (gateWayObject.InsertData(insertString, parameter))
                    {
                        drPouroshovaName.Items.Add(txtNewPouroshova.Text);
                        lblPouMessage.Text = "Item saved successfully.";
                    }
                }
                catch (Exception ex)
                {
                    lblPouMessage.Text = ex.Message;
                }
            }
            else
            {
                lblPouMessage.Text = "Field should not be empty.";
            }
        }

        protected void btnNewPouCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditPuoUpdate_Click(object sender, EventArgs e)
        {
            if (txtEditPouroshova.Text != string.Empty)
            {
                try
                {
                    string updateString = "update Pouroshova set pouName='" + txtEditPouroshova.Text + "' where pouName='" + drPouroshovaName.SelectedItem.ToString() + "'";
                    Gateway gateWay = new Gateway();
                    string selectString = "select pouName from Pouroshova where pouName='" + txtEditPouroshova.Text + "'";
                    DataTable dataTable = new DataTable();
                    dataTable = gateWay.SelectData(selectString);
                    if (dataTable.Rows.Count > 0)
                    {
                        throw new Exception("The name already exist.");
                    }
                    if (gateWay.updateData(updateString))
                    {
                        lblPouMessage.Text = "Data updated.";
                        drPouroshovaName.Items.RemoveAt(drPouroshovaName.SelectedIndex);
                        drPouroshovaName.Items.Add(txtEditPouroshova.Text);
                    }
                }
                catch (Exception ex)
                {
                    lblPouMessage.Text = ex.Message;
                }
            }
            else
            {
                lblPouMessage.Text = "Field should not be empty.";
            }
        }

        protected void btnEdtiPouCancel_Click(object sender, EventArgs e)
        {

        }

        protected void drPouDist_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPouDistAssign_Click(object sender, EventArgs e)
        {
            divPouroshovaDist.Visible = true;
        }

        protected void btnPouDistDelete_Click(object sender, EventArgs e)
        {

        }

        protected void drPouDistAdd_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPouDistAdd_Click(object sender, EventArgs e)
        {

        }

        protected void drPouUpozilla_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPouUpozillaAssign_Click(object sender, EventArgs e)
        {
            divPouroshovaUpozilla.Visible = true;
        }

        protected void btnPouUpozillaDelete_Click(object sender, EventArgs e)
        {

        }

        protected void drPouUpozillaAdd_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPouUpozillaAdd_Click(object sender, EventArgs e)
        {

        }

        protected void drPouWord_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPouWordAdd_Click(object sender, EventArgs e)
        {
            divPouroshovaWordAdd.Visible = true;
        }

        protected void btnPouWordEdit_Click(object sender, EventArgs e)
        {
            divPouroshovaWordEdit.Visible = true;
        }

        protected void btnPouWordDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnPouNewWordSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnPouNewWordCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnPouEditWordUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnPouEditWordCancel_Click(object sender, EventArgs e)
        {

        }

        protected void drSeatName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSeatNameAdd_Click(object sender, EventArgs e)
        {
            divSeatNameAdd.Visible = true;
        }

        protected void btnSeatNameEdit_Click(object sender, EventArgs e)
        {
            divSeatNameEdit.Visible = true;
        }

        protected void btnSeatNameDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewSeatSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewSeatCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditSeatUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditSeatCancel_Click(object sender, EventArgs e)
        {

        }

        protected void drSeatDist_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSeatDistAssign_Click(object sender, EventArgs e)
        {
            divAssignDistrict.Visible = true;
        }

        protected void btnSeatDistDelete_Click(object sender, EventArgs e)
        {

        }

        protected void drSeatDistAdd_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSeatDistAdd_Click(object sender, EventArgs e)
        {

        }

        protected void drSeatUpozilla_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSeatUpozillaAssign_Click(object sender, EventArgs e)
        {
            divAssighUpozilla.Visible = true;
        }

        protected void btnSeatUpozillaDelete_Click(object sender, EventArgs e)
        {

        }

        protected void drSeatUpozillaAdd_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSeatUpozillaAdd_Click(object sender, EventArgs e)
        {

        }

        protected void drDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                drUpozilla.Items.Clear();
                drUpozilla.Items.Add("--SELECT--");
                string selectString = "select upoName from Upozilla, District where District.distId=Upozilla.distId and District.distName='" + drDistrict.SelectedItem.ToString() + "'";
                DataTable dataTable = new DataTable();
                Gateway gateWay = new Gateway();
                dataTable = gateWay.SelectData(selectString);
                foreach (DataRow dr in dataTable.Rows)
                {
                    drUpozilla.Items.Add(dr["upoName"].ToString());
                }
            }
            catch (Exception ex)
            {
                lblSetStructureMessage.Text = ex.Message;
            }
        }


    }
}
