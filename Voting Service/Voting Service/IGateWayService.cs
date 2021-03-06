﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace Voting_Service
{
    // NOTE: If you change the interface name "IService1" here, you must also update the reference to "IService1" in Web.config.
    [ServiceContract]
    public interface IGateWayService
    {

        [OperationContract]
        DataTable SelectData(string sqlString);

        [OperationContract]
        bool InsertData(string sqlString, List<SqlParameter> parameter);

        [OperationContract]
        bool updateData(string sqlString);

        [OperationContract]
        string testMessage();
    }

}
