using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodLabelBank
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Class1 db = new Class1();
            String username = TextBox1.Text;
            String password = TextBox2.Text;

            DataTable table = new DataTable();

            MySqlDataAdapter adapter = new MySqlDataAdapter();

            MySqlCommand command = new MySqlCommand("SELECT * FROM adminlogin WHERE adminName = @UName and adminPassword= @Pass", db.getConnection());

            command.Parameters.Add("@UName", MySqlDbType.VarChar).Value = username;
            command.Parameters.Add("@Pass", MySqlDbType.VarChar).Value = password;

            adapter.SelectCommand = command;

            adapter.Fill(table);

            if (table.Rows.Count > 0)
            {
                Response.Redirect("AdminControl.aspx");
            }
            else
            {
                lblErrorMessage.Text = "Wrong Password or Username";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPage.aspx");
        }



    }
}