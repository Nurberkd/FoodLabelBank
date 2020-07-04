using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ubiety.Dns.Core.Records;
using System.Configuration;

namespace FoodLabelBank
{
    public partial class AdminControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Class1 db = new Class1();
            db.openConnection();
            string productname = Convert.ToString(TextBox1.Text);
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM productlist WHERE productName LIKE '%" + productname + "%'", db.getConnection());

            DataTable dt = new DataTable();
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
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM productlist " + wherequery + "", db.getConnection());
            DataTable dt = new DataTable();
            da.Fill(dt);

            gvProduct.DataSource = dt;
            gvProduct.DataBind();
            db.closeConnection();


        }

        protected void gvProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            int productID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Class1 db = new Class1();

            db.openConnection();
            MySqlDataReader dr;
            MySqlCommand cfor = new MySqlCommand("SELECT productName,productCat,productSubCat FROM  productlist WHERE productID='" + productID + "'", db.getConnection());
            dr = cfor.ExecuteReader();           
            if (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
                ddlcategories.SelectedValue = dr[1].ToString();
                ddlsubcategories.SelectedValue = dr[2].ToString();
            }
            db.closeConnection();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            Class1 db = new Class1();
            db.openConnection();
            try
            {
                Stream sm = FileUpload1.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(sm);
                byte[] bytes = br.ReadBytes((Int32)sm.Length);
                MySqlCommand command = new MySqlCommand("INSERT INTO productlist(productName,productCat,productSubCat,ImagePath) VALUES(@Name,@Cat,@SubCat,@ImagePath)", db.getConnection());
                MySqlCommand command2 = new MySqlCommand("INSERT INTO productlist(ImagePath) VALUES(@ImagePath)", db.getConnection());
                command.Parameters.Add("@Name", MySqlDbType.VarChar).Value = TextBox1.Text;
                command.Parameters.Add("@Cat", MySqlDbType.VarChar).Value = ddlcategories.Text;
                if (ddlsubcategories.Text == "Select SubCategories(Optional)")
                {
                    command.Parameters.Add("@SubCat", MySqlDbType.VarChar).Value = "";
                }
                else
                {
                    command.Parameters.Add("@SubCat", MySqlDbType.VarChar).Value = ddlsubcategories.Text;
                }
                command.Parameters.AddWithValue("@ImagePath", bytes);
                command.ExecuteNonQuery();



                lblSuccessMessage.Text = "Succesfully Added";

            }
            catch (Exception ex)
            {

                lblErrorMessage.Text = ex.Message;
            }
            db.closeConnection();
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            Class1 db = new Class1();
            db.openConnection();

            try
            {
                string i = TextBox1.Text;
                //MySqlDataReader dr;
                MySqlCommand com = new MySqlCommand("delete from productlist where productName='" + i + "'", db.getConnection());
                com.ExecuteNonQuery();
                lblSuccessMessage.Text = "Succesfully Deleted";
            }
            catch (Exception ex )
            {
                lblErrorMessage.Text = ex.Message;
            }            
            db.closeConnection();


        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            hfProductID.Value = "";
            TextBox1.Text = "";
            ddlcategories.SelectedIndex = 0;
            ddlsubcategories.SelectedIndex = 0;
            lblErrorMessage.Text = lblSuccessMessage.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPage.aspx");
        }
    }
}
