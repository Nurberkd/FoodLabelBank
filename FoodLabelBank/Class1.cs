using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodLabelBank
{
    public class Class1
    {
        MySqlConnection connection = new MySqlConnection("server=localhost;userid=root;password=;database=foodlabelbank");

        public void openConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }

        }
        public void closeConnection()
        {
            if (connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();
            }

        }
        public MySqlConnection getConnection()
        {
            return connection;
        }

    }

    
}