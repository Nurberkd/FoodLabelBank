using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodLabelBank.WebForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Class1 db = new Class1();
            db.openConnection();
            try
            {
                Stream sm = FileUpload1.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(sm);
                byte[] bytes = br.ReadBytes((Int32)sm.Length);
                



                MySqlCommand command2 = new MySqlCommand("UPDATE productlist SET ImagePath=@ImagePath WHERE productID=@Name", db.getConnection());
                command2.Parameters.Add("@Name", MySqlDbType.VarChar).Value = TextBox1.Text;

                command2.Parameters.AddWithValue("@ImagePath", bytes);
                command2.ExecuteNonQuery();





            }
            catch (Exception ex)
            {

                
            }
            db.closeConnection();
        }
    }
    
}