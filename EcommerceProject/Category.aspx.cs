using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EcommerceProject  //Sarat.V
{
    public partial class Category : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Visible = false;
            Label5.Visible = false;
            if (!IsPostBack)
            {
                GridBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string catimg = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(catimg));

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_Category";

            cmd.Parameters.AddWithValue("@catnam", TextBox1.Text);
            cmd.Parameters.AddWithValue("@img",catimg);
            cmd.Parameters.AddWithValue("@desc",TextBox2.Text);
            cmd.Parameters.AddWithValue("@stat","Available");
            int retval = obj.Fn_NonQuery(cmd);
            if (retval == 1)
            {
                Label5.Visible = true;
                Label5.Text = "Category Inserted Successfully";
            }
            else
            {
                Label5.Visible = true;
                Label5.Text = "Error in Insertion";
            }
            

        }

        public void GridBind()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_Catbind";
            DataSet ds = obj.Fn_Adapter(cmd);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = !Panel1.Visible;
            GridBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[index].Value);
            TextBox txtdesc = (TextBox)GridView1.Rows[index].Cells[1].Controls[0];

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_CatDescEdit";
            cmd.Parameters.AddWithValue("@newdesc", txtdesc.Text);
            cmd.Parameters.AddWithValue("@id", getid);
            int retval= obj.Fn_NonQuery(cmd);
            if (retval == 1)
            {
                Label11.Visible = true;
                Label11.Text = "Description Updated Successfully";
            }
                      
        }
    }
}