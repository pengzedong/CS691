using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;

namespace CS691final
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            CustomerInfo customer = new CustomerInfo();
            customer.UserName = tbxUsername.Text;
            customer.Name = tbxName.Text;
            customer.Email = tbxEmail.Text;
            customer.Password = tbxPassword.Text;


            if (!customer.CheckUserExit())
            {
                customer.InsertCustomerData();
                Response.Write("<script> alert('Welcome to FloverTown')</script>");
                Response.Redirect("Login.aspx");
               // Response.AddHeader("refresh", "3;url=Login.aspx");
            }
            else {
                lblWarming.Text = "The username already exit!";
                lblWarming.ForeColor = System.Drawing.Color.Red;
                //Response.AddHeader("refresh", "3;url=Login.aspx");

            }

           
            


        }
    }
}