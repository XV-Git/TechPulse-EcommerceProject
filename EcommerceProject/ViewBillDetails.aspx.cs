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

    public partial class ViewBillDetails : System.Web.UI.Page  // Sarat.V
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand una = new SqlCommand();
            una.CommandType = CommandType.StoredProcedure;
            una.CommandText = "SP_CartUserName";
            una.Parameters.AddWithValue("@id", Session["uid"]);
            string name = obj.Fn_Scalar(una);
            Label1.Text = "Invoice For " + name;

            SqlCommand invdeet = new SqlCommand();
            invdeet.CommandType = CommandType.StoredProcedure;
            invdeet.CommandText = "SP_BillGetDeet";
            invdeet.Parameters.AddWithValue("@id", Session["uid"]);
            SqlDataReader dr = obj.Fn_Reader(invdeet);
            string dat = " ";
            int Bno = 0, Gtot = 0;
            while (dr.Read())
            {
                dat = dr["Bill_Date"].ToString();
                Bno = Convert.ToInt32(dr["Bill_ID"].ToString());
                Gtot = Convert.ToInt32(dr["Grand_Total"].ToString());
            }
            Label2.Text = "Invoice Number : #" + Bno;
            Label3.Text = "Invoice Date   : " + dat;
            Label4.Text = "Order Summary";

            SqlCommand BGrid = new SqlCommand();
            BGrid.CommandType = CommandType.StoredProcedure;
            BGrid.CommandText = "SP_BillGrid";
            BGrid.Parameters.AddWithValue("@id", Session["uid"]);
            BGrid.Parameters.AddWithValue("@stat","Ordered");
            DataSet ds = obj.Fn_Adapter(BGrid);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            Label5.Text = "Total Amount To be Paid is :₹ " + Gtot;
            Session["Gtot"] = Gtot;



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentPage.aspx");
        }
    }
}