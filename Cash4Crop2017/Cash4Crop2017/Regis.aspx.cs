using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Cash4Crop2017
{
    public partial class Regis : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand command = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            command.Connection = con;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                if (NameTxb.Text == string.Empty && SurnameTxb.Text == string.Empty && CellNoTxb.Text == string.Empty && EmailTxb.Text == string.Empty && PasswordTxb.Text == string.Empty)
                {
                    string message = "Oops looks like some boxes might be empty. Please fill in all the boxes below to register successfully !";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", "<script> alert('"+message+"') </script>");
                }

                else
                {
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["Cash4CropConnection"].ToString();
                    con.Open();
                    command.CommandText = "insert into UserTbl values('" + NameTxb.Text + "','" + SurnameTxb.Text + "','" + CellNoTxb.Text + "','" + EmailTxb.Text + "','" + PasswordTxb.Text + "')";
                    command.ExecuteNonQuery();
                    con.Close();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "<Scripts>", "<script> alert('Saved')</script>");
                    Page.Response.Redirect("Log.aspx");
                }

            }

            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", "<script> alert('" + ex.GetType().ToString() + "') </script>");
            }
        }
    }
}