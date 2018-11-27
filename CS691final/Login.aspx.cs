using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;

namespace CS691final
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            CustomerInfo customer = new CustomerInfo();
            customer.UserName = tbxUsername.Text;
            customer.Password = tbxPassword.Text.ToString();
            if (customer.checkPassword())
            {
                Session["user"] = tbxUsername.Text;
                LoginStatusMessage.Visible = true;
                LoginStatusMessage.Text = "Welcome Back, The page will go to Order page in second";
                //Response.AddHeader("refresh", "2;url=Order.aspx");
                Response.Redirect("Order.aspx");
            }
            else {
                LoginStatusMessage.Visible = true;
                LoginStatusMessage.Text = "User name or Password is not correct !";

            }
        }
    }
}