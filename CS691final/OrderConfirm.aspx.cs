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
        double a;
        double aa ;
        string b;
        string c;

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
            FoodPriceView.Text = dr[3].ToString() + "$";
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

            //Response.Write(FoodPriceView.Text);
            //Response.Write(FoodPriceView.ToString());
            //Response.Write(FoodPriceView.Text.ToString());
            //Response.Write(Double.Parse(FoodPriceView.Text));
            //Response.Write(Double.Parse(FoodPriceView.ToString()));
            //Response.Write(Double.Parse(FoodPriceView.Text.ToString()));
            //Response.Write(Convert.ToDouble(FoodPriceView.Text));
            //Response.Write(Convert.ToDouble(FoodPriceView.ToString()));
            //Response.Write(Convert.ToDouble(FoodPriceView.Text.ToString()));


            //Response.Write(Convert.ToDouble(FoodPriceView.Text.ToString()));

            Response.Write(aa);

            order.Price = aa;
            //Double.Parse(FoodPriceView.Text.ToString());


            //Convert.ToDouble(FoodPriceView.Text);
            order.StoreId = DropDownListStoreLocation.SelectedItem.ToString();
            order.Ordertime = DateTime.Now;
            order.InsertOrder();
            Response.Redirect("Home page.aspx");

        }

        protected void RadioButtonListTip_SelectedIndexChanged(object sender, EventArgs e)
        {
            ShoppingCart cart = new ShoppingCart();
            cart.Id = cartId;
            cart.ReadRecordById();

            if (RadioButtonListTip.SelectedValue.Equals("0.1"))
            {
                FoodPriceView.Text = (cart.Price + (cart.Price * 0.1)).ToString();
                tbxCustomize.Visible = false;
                btnAddCustomizeTip.Visible = false;
            }
            if (RadioButtonListTip.SelectedValue.Equals("0.15"))
            {
                FoodPriceView.Text = (cart.Price + (cart.Price * 0.15)).ToString();
                tbxCustomize.Visible = false;
                btnAddCustomizeTip.Visible = false;
            }
            if (RadioButtonListTip.SelectedValue.Equals("0.2"))
            {
                FoodPriceView.Text = (cart.Price + (cart.Price * 0.2)).ToString();
                tbxCustomize.Visible = false;
                btnAddCustomizeTip.Visible = false;
            }
            if (RadioButtonListTip.SelectedValue.Equals("1"))
            {
                tbxCustomize.Visible = true;
                btnAddCustomizeTip.Visible = true;

            }

            //Response.Redirect("OrderConfirm.aspx");

        }

        protected void btnAddCustomizeTip_Click(object sender, EventArgs e)
        {
            ShoppingCart cart = new ShoppingCart();
            cart.Id = cartId;
            cart.ReadRecordById();
            FoodPriceView.Text = (cart.Price + Convert.ToDouble(tbxCustomize.Text.ToString())).ToString();
            b = FoodPriceView.Text;
            c = FoodPriceView.Text.ToString();
            aa = Convert.ToDouble(c);
            a= Double.Parse(FoodPriceView.Text.ToString());
            Response.Write(aa);
            // Response.Write(Double.Parse(FoodPriceView.Text.ToString()));


        }
    }
}