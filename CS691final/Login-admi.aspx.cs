using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS691final
{
    public partial class Login_admi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var user = tbxUsername.Text.ToString();
            var password = tbxPassword.Text.ToString();
            if (!user.Equals("abc") & !password.Equals("good"))
            {
                lblSubmitWarming.Text = "The user name or password is not correct";
            }


            if (user.Equals("abc") & password.Equals("good")){
                Response.Redirect("Login.aspx");
            }




        }
    }
}