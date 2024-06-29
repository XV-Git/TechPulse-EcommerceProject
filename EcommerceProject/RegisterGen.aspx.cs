using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceProject
{
    public partial class RegisterGen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminReg.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
                Response.Redirect("UserReg.aspx");
            
        }
    }
}