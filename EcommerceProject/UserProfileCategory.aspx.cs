using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EcommerceProject  //Sarat.V
{
    public partial class UserProfileCategory : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SP_UserCategoryBind";
                DataSet ds = obj.Fn_Adapter(cmd);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }


        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int GetCat_ID = Convert.ToInt32(e.CommandArgument);
            Session["Cat_ID"] = GetCat_ID;
            Response.Redirect("UserProfileProduct.aspx");
        }

    }
}