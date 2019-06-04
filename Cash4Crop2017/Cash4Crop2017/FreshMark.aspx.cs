using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Cash4Crop2017
{
    public partial class FreshMark : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlCommand command = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["Cash4CropConnection"].ToString();
                command.Connection = con;
                display();
            }

            catch(Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", "<script> alert('" + ex.GetType().ToString() + "')</script>");
            }

        }

        private void display()
        {

            sda = new SqlDataAdapter("select * from SellInfo", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            DataBind();
        }
    }
}