using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodLabelBank
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Class1 db = new Class1();
            db.openConnection();
            string productname = Convert.ToString(TextBox1.Text);
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM productlist WHERE productName LIKE '%"+productname+"%'", db.getConnection());

            DataTable dt= new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('There is no product name like this.')</script>");
            }
            else
            {

                gvProduct.DataSource = dt;
                gvProduct.DataBind();
                db.closeConnection();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Class1 db = new Class1();
            db.openConnection();
            string productcategory = Convert.ToString(ddlcategories.SelectedValue);
            string productcategory1 = "'" + productcategory + "'";
            string productsubcategory = "'" + Convert.ToString(ddlsubcategories.SelectedValue) + "'";
            string wherequery;
            
            if (productsubcategory == "'Select SubCategories(Optional)'")
            { 
                wherequery = "WHERE productCat=" + productcategory1 + "";
            }
            else
            {
                wherequery = "WHERE productCat=" + productcategory1 + " and productSubCat=" + productsubcategory + "";
                
            }
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM productlist "+ wherequery+"", db.getConnection());
            DataTable dt = new DataTable();
            da.Fill(dt);

            gvProduct.DataSource = dt;
            gvProduct.DataBind();
            db.closeConnection();


        }

        void GriddFill()
        {
            Class1 db = new Class1();
            db.openConnection();
            MySqlDataAdapter sqlDa = new MySqlDataAdapter("productViewAll",db.getConnection());
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            gvProduct.DataSource = dtbl;
            gvProduct.DataBind();
            db.closeConnection();
        }
        

        protected void gvProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            int productID = Convert.ToInt32((sender as LinkButton).CommandArgument);         

            Response.Redirect("ShowData.aspx?rollno=" + productID);

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}