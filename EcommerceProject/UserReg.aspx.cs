using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EcommerceProject
{
    public partial class UserReg : System.Web.UI.Page // Sarat.V
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_LoginMaxID";
            string val = obj.Fn_Scalar(cmd);
            int TempReg = 0;
            if (val == "")
            {
                TempReg = 1;
            }
            else
            {

                TempReg = Convert.ToInt32(val) + 1;
            }


            SqlCommand Acc = new SqlCommand();
            Acc.CommandType = CommandType.StoredProcedure;
            Acc.CommandText = "SP_AccountDetail";
            Acc.Parameters.AddWithValue("@Uid", TempReg);
            Acc.Parameters.AddWithValue("@Accno", TextBox10.Text);
            Acc.Parameters.AddWithValue("@Bal", TextBox11.Text);
            obj.Fn_NonQuery(Acc);

            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.CommandText = "SP_UserInsert";
            // Input User tab
            cmd1.Parameters.AddWithValue("@id", TempReg);
            cmd1.Parameters.AddWithValue("@na", TextBox1.Text);
            cmd1.Parameters.AddWithValue("@ag", TextBox8.Text);
            cmd1.Parameters.AddWithValue("@addr", TextBox2.Text);
            cmd1.Parameters.AddWithValue("@pin", TextBox9.Text);
            cmd1.Parameters.AddWithValue("@ph", TextBox4.Text);
            cmd1.Parameters.AddWithValue("@em", TextBox3.Text);
            cmd1.Parameters.AddWithValue("@stat","Active");
            int ret = obj.Fn_NonQuery(cmd1);
            if (ret == 1)
            {
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.CommandText = "SP_LoginInsert";
                // Login insert tab
                cmd2.Parameters.AddWithValue("@RegID", TempReg);
                cmd2.Parameters.AddWithValue("@Una", TextBox5.Text);
                cmd2.Parameters.AddWithValue("@pw", TextBox6.Text);
                cmd2.Parameters.AddWithValue("@LType", "User");
                int ret2 = obj.Fn_NonQuery(cmd2);
                if (ret2 == 1)
                {
                    Label7.Visible = true;
                    Label7.Text = "User Registered Successfully. Login to Continue";
                    LinkButton1.Visible = true;
                }

            }
            else
            {
                Label7.Visible = true;
                Label7.Text = "Error in Registration. Try Again";
            }



        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_UserExist";
            cmd.Parameters.AddWithValue("@una", TextBox5.Text);
            string val = obj.Fn_Scalar(cmd);
            if (val == "1")
            {
                Label10.Visible = true;
                Label10.Text = "Username Already Exists";
            }
            else
            {
                Label10.Visible = false;
            }

        }
    }
}