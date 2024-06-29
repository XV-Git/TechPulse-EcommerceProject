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
    public partial class ViewCart : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlCommand uname = new SqlCommand();
                uname.CommandType = CommandType.StoredProcedure;
                uname.CommandText = "SP_CartUserName";
                uname.Parameters.AddWithValue("@id", Session["uid"]);
                string name = obj.Fn_Scalar(uname);
                Label1.Text = "Items in " + name + "'s cart";
                CartBind();
            }

        }

        public void CartBind()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_CartGridBind";
            cmd.Parameters.AddWithValue("@uid", Session["uid"]);
            DataSet ds = obj.Fn_Adapter(cmd);
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            CartBind();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            CartBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_CartItemRemove";
            cmd.Parameters.AddWithValue("@id", getid);
            obj.Fn_NonQuery(cmd);
            CartBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox quant = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            int Newquant = Convert.ToInt32(quant.Text);

            SqlCommand price = new SqlCommand();
            price.CommandType = CommandType.StoredProcedure;
            price.CommandText = "SP_GetUnitPrice";
            price.Parameters.AddWithValue("@pid", getid);
            string unitp = obj.Fn_Scalar(price);
            int unitprice = Convert.ToInt32(unitp);
            int Newtotal = unitprice * Newquant;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_CartUpdate";
            cmd.Parameters.AddWithValue("@prodid", getid);
            cmd.Parameters.AddWithValue("@quan", Newquant);
            cmd.Parameters.AddWithValue("@newpric", Newtotal);
            int retval = obj.Fn_NonQuery(cmd);
            if (retval == 1)
            {
                Label2.Visible = true;
                Label2.Text = "Cart Updated Successfully";
            }
            GridView1.EditIndex = -1;
            CartBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_CartMaxID";
            int maxcart = Convert.ToInt32(obj.Fn_Scalar(cmd)); // Get no: of times to iterate
            for (int i = 1; i <= maxcart; i++)
            {
                //Get each val from Cart
                SqlCommand cartdata = new SqlCommand();
                cartdata.CommandType = CommandType.StoredProcedure;
                cartdata.CommandText = "SP_DataFromCart";
                cartdata.Parameters.AddWithValue("id", i);
                SqlDataReader dr = obj.Fn_Reader(cartdata);
                int uid = 0, pid = 0, quan = 0, pric = 0;
                //string stat = "";
                while (dr.Read())
                {
                    uid = Convert.ToInt32(dr["User_ID"].ToString());
                    pid = Convert.ToInt32(dr["Prod_ID"].ToString());
                    quan = Convert.ToInt32(dr["Quantity"].ToString());
                    pric = Convert.ToInt32(dr["Price"].ToString());
                }
                // Order ins
                string dat = DateTime.Now.Date.ToString("yyyy-MM-dd");
                SqlCommand order = new SqlCommand();
                order.CommandType = CommandType.StoredProcedure;
                order.CommandText = "SP_CartToOrderInsert";
                order.Parameters.AddWithValue("@uid", uid);
                order.Parameters.AddWithValue("@pid", pid);
                order.Parameters.AddWithValue("@quan", quan);
                order.Parameters.AddWithValue("@pric", pric);
                order.Parameters.AddWithValue("@dat", dat);
                order.Parameters.AddWithValue("@stat", "Ordered");
                obj.Fn_NonQuery(order);
                
                //Cart Flush
                SqlCommand cdel = new SqlCommand();
                cdel.CommandType = CommandType.StoredProcedure;
                cdel.CommandText = "SP_CartFlush";
                cdel.Parameters.AddWithValue("@id", i);
                obj.Fn_NonQuery(cdel);
            }
            // Bill Gtot
            SqlCommand Gtot = new SqlCommand();
            Gtot.CommandType = CommandType.StoredProcedure;
            Gtot.CommandText = "SP_BillGrandTotal";
            Gtot.Parameters.AddWithValue("@uid", Session["uid"]);
            Gtot.Parameters.AddWithValue("@stat", "Ordered");
            int GrandTot = Convert.ToInt32(obj.Fn_Scalar(Gtot));
            //Bill ins
            string datt = DateTime.Now.Date.ToString("yyyy-MM-dd");
            SqlCommand bill = new SqlCommand();
            bill.CommandType = CommandType.StoredProcedure;
            bill.CommandText = "SP_BillInsert";
            bill.Parameters.AddWithValue("@dat", datt);
            bill.Parameters.AddWithValue("@uid", Session["uid"]);
            bill.Parameters.AddWithValue("@Gtot", GrandTot);
            obj.Fn_NonQuery(bill);

            Response.Redirect("ViewBillDetails.aspx");
        }
    }
}