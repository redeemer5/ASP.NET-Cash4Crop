using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cash4Crop2017
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage();
                // edited
                string name = fromname.Text, email = fromemail.Text, contactNo = fromphone.Text, CallTime = DropDownList1.SelectedItem.ToString(), Comments = fromcomments.Text;

                SmtpClient SmtpServer = new
                SmtpClient("mail.cash4crop.co.za");
                mail.From = new
                MailAddress(email.ToString());
                mail.To.Add("admin@cash4crop.co.za");
                mail.Subject = "Cash4crop new client request";

                // edited
                mail.Body = "Name :" + name.ToString() + Environment.NewLine + "Email :" + email.ToString() + Environment.NewLine + "Contact no :" + contactNo.ToString() + Environment.NewLine + "Best Call Time :" + CallTime.ToString() + Environment.NewLine + "Comments :" + Comments.ToString();

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new
                System.Net.NetworkCredential("admin@cash4crop.co.za"
                ,
                "admin@crop123");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", " <script> alert('Your request has been sent. Thank you !') </script>");
                fromname.Text = "";
                fromemail.Text = "";
                fromphone.Text = "";
                fromcomments.Text = "";
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", " <script> alert('"+ex.GetType().ToString()+"') </script>");
            }
        }
    }
}