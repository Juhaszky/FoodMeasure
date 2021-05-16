using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace FoodMeasureApp
{
     static class Connection
    {
        static string ConnString = "server=localhost;user=root;database=foodmeasure;password=";
        public static MySqlConnection InitDB() 
        {
            return new MySqlConnection(ConnString);
        }
    }
}
