using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;

namespace CS691final
{
    public partial class CustomerOrderView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderUti Orderitem;
            List<OrderUti> Viewer = new List<OrderUti>();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "select top 6 * from OrderHistory where UserName=@username and Status !='Finished' order by Ordertime";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("username", Session["user"]);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Orderitem = new OrderUti();
                Orderitem.Id = dr["OrderID"].ToString();
                Orderitem.UserName = dr["UserName"].ToString();
                Orderitem.OrderFood = dr["OrderFood"].ToString();
                Orderitem.Price = Convert.ToDouble(dr["Price"].ToString());
                Orderitem.StoreId =  dr["StoreID"].ToString();
                Orderitem.Waiter =  dr["Waiter"].ToString();
                Orderitem.Status = dr["Status"].ToString();
                Viewer.Add(Orderitem);

            }

            dr.Close();
            conn.Close();

            List<Label> orderList = new List<Label>();

            orderList.Add(lblOrderView1);
            orderList.Add(lblOrderView2);
            orderList.Add(lblOrderView3);
            orderList.Add(lblOrderView4);
            orderList.Add(lblOrderView5);
            orderList.Add(lblOrderView6);

            for (int i = 0; i < Viewer.Count; i++)
            {
                orderList[i].Text = (i+1 + ". ID: "+ Viewer[i].Id.ToString() + ". UserName: " + Viewer[i].UserName.ToString() + ". OrderFood: " + Viewer[i].OrderFood.ToString() + ". Price: " + Viewer[i].Price.ToString() + ". Store Name: " + Viewer[i].StoreId.ToString() + ". Waiter Name: " + Viewer[i].Waiter.ToString() + ". Order Status: " + Viewer[i].Status.ToString());
               
            }

        }
    }
}