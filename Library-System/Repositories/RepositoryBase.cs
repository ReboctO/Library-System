﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Libary_System.Repositories
{
   
    public class RepositoryBase
    {
        private readonly string _connectionString;
        public RepositoryBase()
        {
            _connectionString = " Server = (local); Database = MVVMLoginDb; Integrated Security=true ";
        }
        protected SqlConnection GetConnection()
        {
            return new SqlConnection();
        }
    }
}
