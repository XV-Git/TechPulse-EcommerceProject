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
    public partial class AdminOrderProcess : System.Web.UI.Page //Sarat.V
    {
        Connection ob = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = "Orders To Process";
            if (!IsPostBack)
            {
                GridBind();
            }

            //Unprocessd order chk
            SqlCommand emty = new SqlCommand();
            emty.CommandType = CommandType.StoredProcedure;
            emty.CommandText = "SP_AdminOrderEmptychk";
            int retval = Convert.ToInt32(ob.Fn_Scalar(emty));
            if (retval == 0)
            {
                Label5.Visible = true;
                Label5.Text = "No Unprocessed Orders Left";
            }
            
        }

        public void GridBind()
        {
            SqlCommand grid = new SqlCommand();
            grid.CommandType = CommandType.StoredProcedure;
            grid.CommandText = "SP_AdminViewOrderGrid";
            DataSet ds = ob.Fn_Adapter(grid);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);

            SqlCommand order = new SqlCommand();
            order.CommandType = CommandType.StoredProcedure;
            order.CommandText = "SP_AsminOrderStatusupdt";
            order.Parameters.AddWithValue("@id", getid);
            int retval = ob.Fn_NonQuery(order);
            if (retval == 1)
            {
                Label5.Visible = true;
                Label5.Text = "Order Status Updated";
            }
            GridBind();
        }
    }
}