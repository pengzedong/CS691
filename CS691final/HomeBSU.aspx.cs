using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;

namespace CS691final
{
    public partial class HomeBSU : System.Web.UI.Page
    {
        protected string adggg = "";

        protected void Page_Load(object sender, EventArgs e)
        { 

            menu_item_designer AdDesigner = new menu_item_designer();
            AdDesigner.ReadNewestAdvertisingBSU();
            adggg  = AdDesigner.AD;

            //check the user name if user login in, disploy customer order view page
            if (Session["user"] != null)
            {
                ButtonLoginName.Visible = true;
                ButtonLoginName.Text = Session["user"].ToString();

            }
        }

        protected void ButtonLoginName_Click(object sender, EventArgs e)
        {
            //go to order display page
            Response.Redirect("CustomerOrderView.aspx");
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.Equals("1"))
            {
                Response.Redirect("Home_page.aspx");
            }
            if (DropDownList1.SelectedValue.Equals("2"))
            {
                Response.Redirect("HomeBSU.aspx");
            }
            if (DropDownList1.SelectedValue.Equals("3"))
            {
                Response.Redirect("HomeMall.aspx");
            }
        }
    }
}