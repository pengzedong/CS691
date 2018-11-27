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
    public partial class OrderConfirm : System.Web.UI.Page

    {
        string cartId;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Write("<script language=javascript> var agree; agree=confirm('You have to log in first'); window.location='Login.aspx';</script>");

            }

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "select top 1 * from ShoppingCart where UserName =@username order by id desc";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@username", Session["user"]);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();

            FoodListView.Text = dr[2].ToString();
            FoodPriceView.Text = dr[3].ToString()+"$";
            cartId = dr[0].ToString();
            dr.Close();
            conn.Close();

        }

        //submit the order 
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ShoppingCart cart = new ShoppingCart();
            cart.Id = cartId;
            cart.ReadRecordById();
            

            OrderUti order = new OrderUti();
            order.UserName = cart.UserName;
            order.OrderFood = cart.OrderFood;
            order.Price = cart.Price;
            order.StoreId = DropDownListStoreLocation.SelectedItem.ToString();
            order.Ordertime = DateTime.Now ;
            order.InsertOrder();
            Response.Redirect("Home page.aspx");

        }
    }
}