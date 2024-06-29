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
    public partial class Feedback : System.Web.UI.Page //Sarat.V
    {
        Connection ob = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Feedback Page";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand feed = new SqlCommand();
            feed.CommandType = CommandType.StoredProcedure;
            feed.CommandText = "SP_FeedbackInsert";
            feed.Parameters.AddWithValue("@uid", Session["uid"]);
            feed.Parameters.AddWithValue("@mess", TextBox1.Text);
            feed.Parameters.AddWithValue("@stat", 0);
            int retval = ob.Fn_NonQuery(feed);
            if (retval == 1)
            {
                Label3.Visible = true;
                Label3.Text = "Feedback Submitted Successfully";
                Button2.Visible = true;
            }
        }
    }
}