using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Threading;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using Org.BouncyCastle.Asn1.Cms;

namespace FoodLabelBank
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void hfUserID_ValueChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Class1 db = new Class1();
            MySqlCommand command = new MySqlCommand("INSERT INTO userlogin(user_FullName,user_Mail,user_Name,user_Pass) VALUES(@FullName,@Mail,@UName,@Pass)", db.getConnection());

            command.Parameters.Add("@FullName", MySqlDbType.VarChar).Value = TextBox1.Text;
            command.Parameters.Add("@Mail", MySqlDbType.VarChar).Value = TextBox2.Text;
            command.Parameters.Add("@UName", MySqlDbType.VarChar).Value = TextBox3.Text;
            command.Parameters.Add("@Pass", MySqlDbType.VarChar).Value = TextBox4.Text;

            db.openConnection();

            if(checkUsername())
            {
                lblErrorMessage.Text = "Choose Another Username";
            }
            else
            {
                if (command.ExecuteNonQuery() == 1)
                {
                    Response.Write("Account Created.");
                    Thread.Sleep(4000);
                    Response.Redirect("LoginPage.aspx");
                }
                else
                {
                    lblErrorMessage.Text = "Choose Another Username";
                }
            }

            
                
            db.closeConnection();            
            
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox1.Focus();
            
            
        }

        public Boolean checkUsername()
        {
            Class1 db = new Class1();
            String username = TextBox3.Text;

            DataTable table = new DataTable();

            MySqlDataAdapter adapter = new MySqlDataAdapter();

            MySqlCommand command = new MySqlCommand("SELECT * FROM userlogin WHERE user_Name = @UName", db.getConnection());

            command.Parameters.Add("@UName", MySqlDbType.VarChar).Value = username;

            adapter.SelectCommand = command;

            adapter.Fill(table);

            if (table.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}