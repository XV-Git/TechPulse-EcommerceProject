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
    public partial class AdminViewFeedback : System.Web.UI.Page
    {
        Connection ob = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = "Feedback From Users";

                SqlCommand feed = new SqlCommand();
                feed.CommandType = CommandType.StoredProcedure;
                feed.CommandText = "SP_AdminFeedbackGrid";
                DataSet ds = ob.Fn_Adapter(feed);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                //check feedbal tab emptee
                SqlCommand mty = new SqlCommand();
                mty.CommandType = CommandType.StoredProcedure;
                mty.CommandText = "SP_FeedbackEmptyChk";
                int retval = Convert.ToInt32(ob.Fn_Scalar(mty));
                if (retval == 0)
                {
                    Label5.Visible = true;
                    Label5.Text = "No Unreplied Feedback Available";
                }

            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["FeedID"] = getid;
            Response.Redirect("AdminFeedbackMail.aspx");

        }
    }
}