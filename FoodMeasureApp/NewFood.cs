using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace FoodMeasureApp
{
    public partial class NewFood : UserControl
    {
        MySqlConnection Conn;
        public NewFood()
        {
            InitializeComponent();
            Conn = Connection.InitDB();
        }

        private void NewFood_Load(object sender, EventArgs e)
        {

        }
        private void SearchFood()
        {
            etelekGrid.Rows.Clear();
            string FoodName = FoodNameBox.Text+"%";
            TextValidation(FoodName);
            string query = "SELECT * FROM foods WHERE Elelmiszer LIKE @FoodName";
            MySqlCommand cmd = new MySqlCommand(query, Conn);
            cmd.Parameters.AddWithValue("@FoodName", FoodName);
            cmd.Parameters["@FoodName"].Direction = ParameterDirection.Input;
            Conn.Open();
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                etelekGrid.Rows.Add(new object[] {
                    reader["Elelmiszer"].ToString(),
                    Convert.ToDouble(reader["Energia_KJ"]),
                    Convert.ToDouble(reader["Energia_Kcal"]),
                    Convert.ToDouble(reader["Feherje"]),
                    Convert.ToDouble(reader["Zsir"]),
                    Convert.ToDouble(reader["Szenhidrat"]),
                    Convert.ToDouble(reader["Natrium"]),
                    Convert.ToDouble(reader["Kalium"]),
                    Convert.ToDouble(reader["Kalcium"]),
                    Convert.ToDouble(reader["Magnezium"]),
                    Convert.ToDouble(reader["Retinol"]),
                    Convert.ToDouble(reader["E_vitamin"])
                });
            }




            Conn.Close();
        }
        

        private void FoodNameBox_TextChanged(object sender, EventArgs e)
        {
            if (!(FoodNameBox.Text == ""))
            {
                SearchFood();
            }
            else
            {
                etelekGrid.Rows.Clear();
            }
        }
        private string TextValidation(string foodname)
        {
            int maxchars = 15;
            if (foodname.Length > maxchars)
            {
                MessageBox.Show("Túl hosszú szöveget adott meg!");
                FoodNameBox.Text = "";
            }
            if (FoodNameBox.TextLength > 10 )
            {
                FoodNameBox.Width += 15;
            }
            foodname.Trim();
            foodname.ToLower();
            
            return foodname;
        }
    }
}
