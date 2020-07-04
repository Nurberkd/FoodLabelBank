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
    public partial class WebForm2 : System.Web.UI.Page
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

            MySqlCommand command = new MySqlCommand("SELECT * FROM userlogin WHERE user_Name = @UName and user_Pass = @Pass", db.getConnection());

            command.Parameters.Add("@UName", MySqlDbType.VarChar).Value = username;
            command.Parameters.Add("@Pass", MySqlDbType.VarChar).Value = password;

            adapter.SelectCommand = command;

            adapter.Fill(table);

            if(table.Rows.Count > 0)
            {
                lblSuccessMessage.Text = "Succesfully Added";
                Response.Redirect("SearchPage.aspx");
            }
            else
            {
                lblErrorMessage.Text = "Wrong Username or Password";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }

    }
}