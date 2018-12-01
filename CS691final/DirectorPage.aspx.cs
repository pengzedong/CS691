using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;

namespace CS691final
{
    public partial class Waiter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmitStatus_Click(object sender, EventArgs e)
        {
            OrderUti order = new OrderUti();
            string status = DropDownListStatus.SelectedItem.Text.ToString();

            for (int i = 0; i < CheckBoxListOrderRecived.Items.Count; i++)
            {

                if (CheckBoxListOrderRecived.Items[i].Selected)
                {
                    order.Id = CheckBoxListOrderRecived.Items[i].Value;
                    order.Status = status;
                    order.UpdateOrderStatus();
                }
            }
            for (int i = 0; i < CheckBoxListInPreparation.Items.Count; i++)
            {
                if (CheckBoxListInPreparation.Items[i].Selected)
                {
                    order.Id = CheckBoxListInPreparation.Items[i].Value;
                    order.Status = status;
                    order.UpdateOrderStatus();
                }
            }

            for (int i = 0; i < CheckBoxListFianlTouch.Items.Count; i++)
            {
                if (CheckBoxListFianlTouch.Items[i].Selected)
                {
                    order.Id = CheckBoxListFianlTouch.Items[i].Value;
                    order.Status = status;
                    order.UpdateOrderStatus();
                }
            }

            for (int i = 0; i < CheckBoxListOnTheWay.Items.Count; i++)
            {
                if (CheckBoxListOnTheWay.Items[i].Selected)
                {
                    order.Id = CheckBoxListOnTheWay.Items[i].Value;
                    order.Status = status;
                    order.UpdateOrderStatus();
                }
            }


            for (int i = 0; i < CheckBoxListFinished.Items.Count; i++)
            {
                if (CheckBoxListFinished.Items[i].Selected)
                {
                    order.Id = CheckBoxListFinished.Items[i].Value;
                    order.Status = status;
                    order.UpdateOrderStatus();
                }
            }
            Response.Redirect("DirectorPage.aspx");
        }


    }
}