using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;

namespace CS691final
{
    public partial class Home_page : System.Web.UI.Page
    {
        protected string advertising = "";
         

        protected void Page_Load(object sender, EventArgs e)
        {

            menu_item_designer AdDesigner = new menu_item_designer();
            AdDesigner.ReadNewestAdvertising();
            advertising = AdDesigner.AD;
            if (Session["user"] != null) {
                ButtonLoginName.Visible = true;
                ButtonLoginName.Text = Session["user"].ToString();
               
            }
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void ButtonLoginName_Click(object sender, EventArgs e)
        {
             Response.Redirect("CustomerOrderView.aspx");
        }
    }
}