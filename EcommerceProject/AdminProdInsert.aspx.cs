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
        public partial class AdminProdInsert : System.Web.UI.Page
        {
            Connection obj = new Connection();
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "SP_ProdDropBind";
                    DataSet ds = obj.Fn_Adapter(cmd);
                    DropDownList1.DataSource = ds;
                    DropDownList1.DataValueField = "Cat_ID";
                    DropDownList1.DataTextField = "Cat_Name";
                    DropDownList1.DataBind();

                }

            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                string imag = "~/images/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(imag));

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SP_ProdInsert";
                cmd.Parameters.AddWithValue("@id", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pri", TextBox2.Text);
                cmd.Parameters.AddWithValue("@img", imag);
                cmd.Parameters.AddWithValue("@desc", TextBox3.Text);
                cmd.Parameters.AddWithValue("@stock", TextBox4.Text);
                cmd.Parameters.AddWithValue("@stat", "Available");
                int retval = obj.Fn_NonQuery(cmd);
                if (retval == 1)
                {
                    Label7.Visible = true;
                    Label7.Text = "Product Inserted Successfully";
                }

            }

            public void GridBind()
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SP_ProductBind";
                cmd.Parameters.AddWithValue("@id", DropDownList1.SelectedItem.Value);
                DataSet ds = obj.Fn_Adapter(cmd);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

            protected void Button1_Click1(object sender, EventArgs e)
            {
                Panel1.Visible = !Panel1.Visible;
                GridView1.Columns[6].Visible = false;
                GridBind();

            }

            protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
            {
                GridView1.EditIndex = e.NewEditIndex;
                GridView1.Columns[6].Visible = true;

                GridBind();
            }

            protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
            {
                GridView1.Columns[6].Visible = true;
                int index = e.RowIndex;
                int getid = Convert.ToInt32(GridView1.DataKeys[index].Value);

                RadioButtonList Radval = (RadioButtonList)GridView1.Rows[index].Cells[6].Controls[1];
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SP_ProductEditBind";
                cmd.Parameters.AddWithValue("@id", getid);
                cmd.Parameters.AddWithValue("@status", Radval.Text);
                int retval = obj.Fn_NonQuery(cmd);
                if (retval == 1)
                {
                    Label10.Visible = true;
                    Label10.Text = "Status Updated Successfully";
                }
                GridBind();
            }

            protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
            {
                GridView1.Columns[6].Visible = false;
                GridView1.EditIndex = -1;
                GridBind();

            }
            protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
            {
                GridBind();
            }
        }
    }