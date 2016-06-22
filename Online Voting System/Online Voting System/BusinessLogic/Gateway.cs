using System;
using System.Data;
using System.Configuration;
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

namespace Online_Voting_System.BusinessLogic
{
    public class Gateway
    {
        #region Selection data

        public DataTable SelectData(string sqlString)
        {
            DBConnection dbConnectorObject = new DBConnection();
            SqlConnection sqlConnectionObject = new SqlConnection();
            try
            {
                sqlConnectionObject = dbConnectorObject.GetConnection;
                sqlConnectionObject.Open();

                DataTable dataTableObject = new DataTable();

                SqlDataAdapter sqlDataAdepterObject = new SqlDataAdapter(sqlString, sqlConnectionObject);


                sqlDataAdepterObject.Fill(dataTableObject);
                return dataTableObject;
            }

            catch (Exception ex)
            {
                throw new Exception("Database problem." + ex.Message);
            }

            finally
            {
                if (sqlConnectionObject.State == System.Data.ConnectionState.Open)
                    sqlConnectionObject.Close();
            }
        }
        #endregion

        #region Insert Data

        public bool InsertData(string sqlString, List<SqlParameter> parameter)
        {
            DBConnection DBConnectorObject = new DBConnection();
            SqlConnection sqlConnectionObject = new SqlConnection();
            sqlConnectionObject = DBConnectorObject.GetConnection;

            try
            {
                sqlConnectionObject.Open();
                SqlCommand sqlCommandObject = new SqlCommand(sqlString, sqlConnectionObject);

                foreach (SqlParameter pr in parameter)
                {
                    sqlCommandObject.Parameters.Add(pr);
                }

                int i = sqlCommandObject.ExecuteNonQuery();
                if (i > 0)
                    return true;
                else
                    return false;
            }

            catch (SqlException ex)
            {
                throw new Exception(" Database problem.\n" + ex.Message);
            }
            finally
            {
                if (sqlConnectionObject.State == System.Data.ConnectionState.Open)
                {
                    sqlConnectionObject.Close();
                }
            }
        }
        #endregion

        #region update

        public bool updateData(string sqlString)
        {
            DBConnection DBConnectorObject = new DBConnection();
            SqlConnection sqlConnectionObject = new SqlConnection();
            sqlConnectionObject = DBConnectorObject.GetConnection;

            try
            {
                sqlConnectionObject.Open();
                SqlCommand sqlCommandObject = new SqlCommand(sqlString, sqlConnectionObject);

                int i = sqlCommandObject.ExecuteNonQuery();

                if (i > 0)
                    return true;
                else
                    return false;
            }

            catch (SqlException ex)
            {
                throw new Exception(" Database problem.\n" + ex.Message);
            }
            finally
            {
                if (sqlConnectionObject.State == System.Data.ConnectionState.Open)
                {
                    sqlConnectionObject.Close();
                }
            }
        }
        #endregion
    }
}
