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

namespace Online_Voting_System.BusinessLogic
{
    public class DBConnection
    {
        private string connectionString = null;
        private SqlConnection sqlConn = null;

        public DBConnection()
        {
            connectionString = @"Data Source=MONOWAR-PC\SQLEXPRESS; Initial Catalog=Voting System; User ID=sa; Password=1234";
            sqlConn = new SqlConnection(connectionString);
        }

        public SqlConnection GetConnection
        {
            get
            {
                return sqlConn;
            }
            private set
            {
            }
        }
    }
}
