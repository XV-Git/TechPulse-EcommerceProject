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
    public partial class UserProfileProduct : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SP_ProductBind";
                cmd.Parameters.AddWithValue("@id", Session["Cat_ID"]);
                DataSet ds = obj.Fn_Adapter(cmd);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }


        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int GetProd_ID = Convert.ToInt32(e.CommandArgument);
            Session["Product_ID"] = GetProd_ID;
            Response.Redirect("UserProductDetails.aspx");
        }
    }
}