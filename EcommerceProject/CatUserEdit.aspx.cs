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
    public partial class CatUserEdit : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.Columns[7].Visible = false;
                GridBind();
            }

        }
        public void GridBind()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_Userbind";
            DataSet ds = obj.Fn_Adapter(cmd);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.Columns[7].Visible = true;
            GridView1.EditIndex = e.NewEditIndex;
            GridBind();
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.Columns[7].Visible = true;
            GridView1.EditIndex = -1;
            GridBind();
        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            GridView1.Columns[7].Visible = true;
            int index = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[index].Value);
            RadioButtonList txtdesc = (RadioButtonList)GridView1.Rows[index].Cells[7].Controls[1];

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_UserStatusEdit";
            cmd.Parameters.AddWithValue("@stat", txtdesc.Text);
            cmd.Parameters.AddWithValue("@id", getid);
            int retval = obj.Fn_NonQuery(cmd);
            if (retval == 1)
            {
                Label2.Visible = true;
                Label2.Text = "User Status Updated Successfully";
            }
            GridBind();
        }
    }
}