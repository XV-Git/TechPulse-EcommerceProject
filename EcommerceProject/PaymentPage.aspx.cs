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
    public partial class PaymentPage : System.Web.UI.Page   // Sarat.V
    {
        Connection ob = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Payment Page";

            SqlCommand Accno = new SqlCommand();
            Accno.CommandType = CommandType.StoredProcedure;
            Accno.CommandText = "SP_GetAccountID";
            Accno.Parameters.AddWithValue("@id", Session["uid"]);
            int AccID = Convert.ToInt32(ob.Fn_Scalar(Accno));

            PaymentServices.ServiceClient Payob = new PaymentServices.ServiceClient();
            Session["AccBal"] = Payob.GetBalance(AccID);

            Label4.Text = Session["AccBal"].ToString();
            Label5.Text = Session["Gtot"].ToString();

            if (Convert.ToInt32(Session["AccBal"]) < Convert.ToInt32(Session["Gtot"]))
            {
                ImageButton1.Visible = false;
                Panel1.Visible = true;
                Label6.Text = "Insufficient Balance in Account !";
                ImageButton2.Visible = false;
                Button3.Visible = false;
            }

        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            int NewBal = Convert.ToInt32(Session["Accbal"]) - Convert.ToInt32(Session["Gtot"]);
            SqlCommand Newbalance = new SqlCommand();
            Newbalance.CommandType = CommandType.StoredProcedure;
            Newbalance.CommandText = "SP_NewAccBalance";
            Newbalance.Parameters.AddWithValue("@id", Session["uid"]);
            Newbalance.Parameters.AddWithValue("@bal", NewBal);
            int retval = ob.Fn_NonQuery(Newbalance);
            if (retval == 1)
            {
                ImageButton1.Visible = false;
                Panel1.Visible = true;
                Label6.Text = "Payment Successfull ! Send a feedback on your Payment Experience";

                SqlCommand max = new SqlCommand();
                max.CommandType = CommandType.StoredProcedure;
                max.CommandText = "SP_OrderMaxID";
                max.Parameters.AddWithValue("@id", Session["uid"]);
                max.Parameters.AddWithValue("@stat", "Ordered");
                int maxval = Convert.ToInt32(ob.Fn_Scalar(max));

                for (int i = 1; i <= maxval; i++)
                {
                    SqlCommand GetQuan = new SqlCommand();
                    GetQuan.CommandType = CommandType.StoredProcedure;
                    GetQuan.CommandText = "SP_GetQuanForProduct";
                    GetQuan.Parameters.AddWithValue("@id", Session["uid"]);
                    GetQuan.Parameters.AddWithValue("@stat", "Ordered");
                    SqlDataReader dr = ob.Fn_Reader(GetQuan);
                    int qty = 0, pid = 0;
                    while (dr.Read())
                    {
                        qty = Convert.ToInt32(dr["Quantity"].ToString());
                        pid = Convert.ToInt32(dr["Prod_ID"].ToString());
                    }

                    SqlCommand st = new SqlCommand();
                    st.CommandType = CommandType.StoredProcedure;
                    st.CommandText = "SP_ProdStockupdate";
                    st.Parameters.AddWithValue("@quan", qty);
                    st.Parameters.AddWithValue("@pid", pid);
                    ob.Fn_NonQuery(st);

                    // stat setting to paid
                    SqlCommand OrderStat = new SqlCommand();
                    OrderStat.CommandType = CommandType.StoredProcedure;
                    OrderStat.CommandText = "SP_OrderStatUpdate";
                    OrderStat.Parameters.AddWithValue("@id", pid);
                    ob.Fn_NonQuery(OrderStat);

                }
            }

        }
    }
}