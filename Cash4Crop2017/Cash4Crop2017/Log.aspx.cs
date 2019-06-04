using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Cash4Crop2017
{
    public partial class Log : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                command.Connection = con;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["Cash4CropConnection"].ToString();
                con.Open();
                command.CommandText = "select Email,Password from UserTbl where Email ='" + EmailTxb.Text + "' and Password='" + PasswordTxb.Text + "'";
                sda.SelectCommand = command;
                command.Connection = con;
                sda.Fill(ds, "UserTbl");

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["Email"] = EmailTxb.Text;
                    Response.Redirect("Sell.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "<Scripts>", "<script> alert('Please make sure that you are a registered user and that yout log-in credentials are correct')</script>");
                }
            }

            catch(Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Scripts>", "<script> alert('"+ex.GetType().ToString()+"')</script>");
            }
        }
    }
}