using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace EcommerceProject
{
    public partial class LoginGen : System.Web.UI.Page // Sarat.V
    {
        Connection ob = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_CountID";
            cmd.Parameters.AddWithValue("@una", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pw", TextBox2.Text);
            string retval = ob.Fn_Scalar(cmd);
            if (retval == "1")
            {
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.CommandText = "SP_Session";
                cmd1.Parameters.AddWithValue("@una", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@pw", TextBox2.Text);
                string retid = ob.Fn_Scalar(cmd1);
                Session["uid"] = retid;

                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.CommandText = "SP_LogType";
                cmd2.Parameters.AddWithValue("@una", TextBox1.Text);
                cmd2.Parameters.AddWithValue("@pw", TextBox2.Text);
                string Logtyp = ob.Fn_Scalar(cmd2);
                if (Logtyp == "Admin")
                {
                    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);
                    Response.Redirect("AdminProfile.aspx");
                }
                else if (Logtyp == "User")
                {
                    SqlCommand cmd3 = new SqlCommand();
                    cmd3.CommandType = CommandType.StoredProcedure;
                    cmd3.CommandText = "SP_UserStatusLogin";
                    cmd3.Parameters.AddWithValue("@id", Session["uid"]);
                    string UserStat = ob.Fn_Scalar(cmd3);
                    if (UserStat == "Active")
                    {
                        FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);
                        Response.Redirect("UserProfileCategory.aspx");
                    }
                    else
                    {
                        Label3.Visible = true;
                        Label3.Text = "The User Is Presently Blocked";
                    }
                }


            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Invalid Credentials";
            }

        }
    }
}