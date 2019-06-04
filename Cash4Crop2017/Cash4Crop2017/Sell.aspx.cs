using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




namespace Cash4Crop2017
{
    public partial class Sell : System.Web.UI.Page
    {
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlCommand command = new SqlCommand();
        DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            string Sessionlabel;
            Sessionlabel = Label6.Text = Session["Email"].ToString(); // call session value
            display();
            //ItemType();

            con.ConnectionString = ConfigurationManager.ConnectionStrings["Cash4CropConnection"].ToString();
            command.Connection = con;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (DescriptionTxb.Text == string.Empty && PriceTxb.Text == string.Empty && AddressTxb.Text == string.Empty)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Scripts>", "<script> alert('Please fill in the boxes below')</script>");
            }
            else
                {
                    if (FileUpload1.HasFile)
                    {

                        // retrieveing image 

                        string str = FileUpload1.FileName;
                        FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//Images//" + str);
                        string path = "~//Images//" + str.ToString();


                        // saving into sell info table

                        con.ConnectionString = ConfigurationManager.ConnectionStrings["Cash4CropConnection"].ToString();
                        con.Open();
                        SqlCommand command = new SqlCommand("insert into SellInfo values('" + Label6.Text + "','" + ItemTypezz.SelectedValue.ToString() + "','" + DescriptionTxb.Text + "','" + PriceTxb.Text + "','" + AddressTxb.Text + "','" + NameTxb.Text + "','" + NumberTxb.Text + "','" + path + "')", con);
                        command.ExecuteNonQuery();
                        //con.Close();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "<Scripts>", "<script> alert('Your data has been stored and your ad will be up within minutes') </script>");

                        // display


                        //command = new SqlCommand("select * from SellInfo where Email = '" + Label6.Text + "'", con);

                    SqlDataAdapter sda = new SqlDataAdapter("select * from SellInfo where Email = '"+Label6.Text+"'", con);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        DataBind();
                    con.Close();

                        // remove info from textboxes
                      
                        //still yet to code that

                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "<Scripts>", "<script> alert('Please upload an image') </script>");
                    }
                }
        }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Scripts>", "<script> alert('"+ex.GetType().ToString()+"') </script>");
        }
    }


        // methods
        public void display()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Cash4CropConnection"].ToString();
            command.Connection = con;
            sda = new SqlDataAdapter("select * from SellInfo where Email = '" + Label6.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            DataBind();
        }


        //protected void Insert(object sender, EventArgs e)
        //{
        //    string Email = Label6.Text;
        //    string itemType = ItemDescriptionTxb.Text;
        //    string ItemPrice = ItemPriceTxb.Text;
        //    string constr = ConfigurationManager.ConnectionStrings["Cash4CropConnection"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("Procedure1"))
        //        {
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            cmd.Parameters.AddWithValue("@Action", "INSERT");
        //            cmd.Parameters.AddWithValue("@ItemName", ItemName);
        //            cmd.Parameters.AddWithValue("@ItemDescription", ItemDescription);
        //            cmd.Parameters.AddWithValue("@ItemPrice", ItemPrice);
        //            cmd.Connection = con;
        //            con.Open();
        //            cmd.ExecuteNonQuery();
        //            con.Close();
        //        }
        //    }
        //    this.display();
        //}


        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                GridView1.EditIndex = e.NewEditIndex;
                this.display();
            }

            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", "<script> alert('"+ex.GetType().ToString()+"') </script>");
            }

        }


        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string ItemType = (row.FindControl("ItemType") as TextBox).Text;
            string Description = (row.FindControl("Description") as TextBox).Text;
            string Price = (row.FindControl("Price") as TextBox).Text;
            string Address = (row.FindControl("Address") as TextBox).Text;
            string Name = (row.FindControl("Name") as TextBox).Text;
            string CellNo = (row.FindControl("CellNumber") as TextBox).Text;
            string constr = ConfigurationManager.ConnectionStrings["Cash4CropConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Procedure1"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "UPDATE");
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@ItemType", ItemType.ToString());
                    cmd.Parameters.AddWithValue("@Description", Description.ToString());
                    cmd.Parameters.AddWithValue("@Price", Price.ToString());
                    cmd.Parameters.AddWithValue("@Address", Address.ToString());
                    cmd.Parameters.AddWithValue("@Name", Name.ToString());
                    cmd.Parameters.AddWithValue("@CellNo", CellNo.ToString());
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            GridView1.EditIndex = -1;
            this.display();

        }


        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            try
            {
                GridView1.EditIndex = -1;
                this.display();
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", "<scripts> alert('" + ex.GetType().ToString() + "') </script>");
            }
        }


        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string constr = ConfigurationManager.ConnectionStrings["Cash4CropConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("Procedure1"))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Action", "DELETE");
                        cmd.Parameters.AddWithValue("@Id", Id);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                this.display();
            }

            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", "<scripts> alert('" + ex.GetType().ToString() + "') </script>");
            }

        }

        protected void ItemTypezz_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }


}