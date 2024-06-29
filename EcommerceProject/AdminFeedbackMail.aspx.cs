using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace EcommerceProject
{
    public partial class AdminFeedbackMail : System.Web.UI.Page //Sarat.V
    {
        Connection ob = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Reply Mail";

            SqlCommand usr = new SqlCommand();
            usr.CommandType = CommandType.StoredProcedure;
            usr.CommandText = "SP_FeedbackUserDetails";
            usr.Parameters.AddWithValue("@id", Session["FeedID"]);
            SqlDataReader dr = ob.Fn_Reader(usr);
            string em = " ", Nam = " ";
            while (dr.Read())
            {
                Nam = dr["User_Name"].ToString();
                em = dr["User_Email"].ToString();
            }

            Label5.Text = Nam;
            Label6.Text = em;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SendEmail2("Admin-TechPulse", "placeholder@email.com", "placeholderapass", Label5.Text, "otherplaceholder@email.com", "TechPulse-Feedback Reply",TextBox1.Text);


            //ins reply to feedtable
            SqlCommand rep = new SqlCommand();
            rep.CommandType = CommandType.StoredProcedure;
            rep.CommandText = "SP_FeedbackReplyInsert";
            rep.Parameters.AddWithValue("@id", Session["FeedID"]);
            rep.Parameters.AddWithValue("@txt", TextBox1.Text);
            ob.Fn_NonQuery(rep);

            SqlCommand feedstat = new SqlCommand();
            feedstat.CommandType = CommandType.StoredProcedure;
            feedstat.CommandText = "SP_FeedbackStatusCng";
            feedstat.Parameters.AddWithValue("@id", Session["FeedID"]);
            ob.Fn_NonQuery(feedstat);

            

            Response.Redirect("AdminViewFeedback.aspx");
        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("mail.tempmail.us.com", 468); //Outlook mail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
               client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
