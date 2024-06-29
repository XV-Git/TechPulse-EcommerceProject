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
    public partial class UserProductDetails : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SP_UserProductBind";
                cmd.Parameters.AddWithValue("@id", Session["Product_ID"]);
                DataSet ds = obj.Fn_Adapter(cmd);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_CartMaxID";
            string MaxCartID = obj.Fn_Scalar(cmd);
            int tempcartid = 0;
            if (MaxCartID == "")
            {
                tempcartid = 1;
            }
            else
            {
                int newcartid = Convert.ToInt32(MaxCartID);
                tempcartid = newcartid + 1;
            }

            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.CommandText = "SP_GetUnitPrice";
            cmd1.Parameters.AddWithValue("@pid", Session["Product_ID"]);
            string unitp = obj.Fn_Scalar(cmd1);
            int unitprice = Convert.ToInt32(unitp);
            TextBox txtval = (TextBox)DataList1.Controls[0].FindControl("TextBox1");
            int Quant = Convert.ToInt32(txtval.Text);
            int TotalP = unitprice * Quant;

            SqlCommand exist = new SqlCommand();
            exist.CommandType = CommandType.StoredProcedure;
            exist.CommandText = "SP_CartExistingItem";
            exist.Parameters.AddWithValue("@id", Session["Product_ID"]);
            int ret = Convert.ToInt32(obj.Fn_Scalar(exist));
            if (ret == 1)
            {
                SqlCommand getq = new SqlCommand();
                getq.CommandType = CommandType.StoredProcedure;
                getq.CommandText = "SP_GetQuantity";
                getq.Parameters.AddWithValue("@id", Session["Product_ID"]);
                SqlDataReader dr = obj.Fn_Reader(getq);
                int Oldqty = 0;
                while (dr.Read())
                {
                    Oldqty = Convert.ToInt32(dr["Quantity"].ToString());
                }

                int NewQty = Oldqty + Quant;
                int TotalPrice = NewQty * unitprice;

                SqlCommand updatquan = new SqlCommand();
                updatquan.CommandType = CommandType.StoredProcedure;
                updatquan.CommandText = "SP_CartUpdate";
                updatquan.Parameters.AddWithValue("@prodid", Session["Product_ID"]);
                updatquan.Parameters.AddWithValue("@quan", NewQty);
                updatquan.Parameters.AddWithValue("@newpric", TotalPrice);
                obj.Fn_NonQuery(updatquan);


            }
            else
            {
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.CommandText = "SP_CartIDInsert";
                cmd2.Parameters.AddWithValue("@cartid", tempcartid);
                cmd2.Parameters.AddWithValue("@userid", Session["uid"]);
                cmd2.Parameters.AddWithValue("@prodid", Session["Product_ID"]);
                cmd2.Parameters.AddWithValue("@Quan", Quant);
                cmd2.Parameters.AddWithValue("@Total", TotalP);
                obj.Fn_NonQuery(cmd2);
            }

            Response.Redirect("ViewCart.aspx");
        }
    }
}