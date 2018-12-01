using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;

namespace CS691final
{
    public partial class OrderManagePage : System.Web.UI.Page
    {
        protected void btnWork_Click(object sender, EventArgs e)
        {
            //add waiter information to the order table

            OrderUti orderUpData = new OrderUti();
            try
            {
                for (int i = 0; i < CheckBoxListOrderList.Items.Count; i++)
                {
                    if (CheckBoxListOrderList.Items[i].Selected)
                    {

                        orderUpData.Id = CheckBoxListOrderList.Items[i].Value;
                        orderUpData.Waiter = RadioButtonListWaiterList.SelectedValue.ToString();
                        orderUpData.Updatawaiter();

                    }

                }
                Response.Redirect("OrderManagePage.aspx");
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }//end add waiter button


        protected void Page_Load(object sender, EventArgs e)
        {
            //check only owner can use this page
            if (Session["owner"] == null)
            {
                Response.Write("<script language=javascript> var agree; agree=confirm('You have to be owner first!!!'); window.location='Login.aspx';</script>");

            }
        }
    }
}