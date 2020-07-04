using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Data.SqlClient;

namespace FoodLabelBank
{
    public partial class ShowData : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            Class1 db = new Class1();
            db.openConnection();
            TextBox1.Text = Request.QueryString["rollno"].ToString();
            int i;
            i = int.Parse(TextBox1.Text);

            MySqlDataAdapter sda = new MySqlDataAdapter("select productName,productCat,productSubCat,ImagePath from productlist where productID='" + i + "'", db.getConnection());
            MySqlDataReader dr;
            MySqlCommand com = new MySqlCommand();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvProduct.DataSource = dt;
            gvProduct.DataBind();
            com = new MySqlCommand("select productName,productCat,productSubCat,ImagePath from productlist where productID='" + i + "'", db.getConnection());
            dr = com.ExecuteReader();
            
            if(dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();

            }
            

            db.closeConnection();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])dr["ImagePath"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPage.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}