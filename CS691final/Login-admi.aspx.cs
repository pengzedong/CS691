using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;

namespace CS691final
{
    public partial class Login_admi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //var user = tbxUsername.Text.ToString();
            //var password = tbxPassword.Text.ToString();
            //if (!user.Equals("abc") & !password.Equals("good"))
            //{
            //    LoginStatusMessage.Visible = true;
            //    LoginStatusMessage.Text = "User name or Password is not correct !";
            //}


            //if (user.Equals("abc") & password.Equals("good")){
            //    Response.Redirect("Menu-designer.aspx");
            //}

            EmployeeInfo employee = new EmployeeInfo();
            employee.UserName = tbxUsername.Text;
            employee.Password = tbxPassword.Text.ToString();
            if (employee.checkPassword())
            {
                if (tbxUsername.Text.Equals("owner"))
                {
                    Session["owner"] = tbxUsername.Text;
                    Response.Redirect("Menu_designer.aspx");

                }
                if (employee.checkDirector()) {

                    Response.Redirect("DirectorPage.aspx");
                }

                LoginStatusMessage.Visible = true;
                LoginStatusMessage.Text = "Welcome Back ";
                //Response.AddHeader("refresh", "2;url=Order.aspx");
                
            }
            else
            {
                LoginStatusMessage.Visible = true;
                LoginStatusMessage.Text = "User name or Password is not correct !";

            }



        }


    }
}