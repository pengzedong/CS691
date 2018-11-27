using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;

namespace CS691final
{
    public partial class EmployeeRegistration : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["owner"] == null)
            {
                Response.Write("<script language=javascript> var agree; agree=confirm('You have to be owner first!!!'); window.location='Login.aspx';</script>");

            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            EmployeeInfo employee = new EmployeeInfo();
            employee.UserName = tbxUsername.Text;
            employee.Name = tbxName.Text;
            
            employee.Password = tbxPassword.Text;
            employee.StoreId= DropDownListStoreLocation.SelectedItem.ToString();

            if (!employee.CheckUserExit())
            {
                employee.InsertEmployeeData();
                Response.Write("<script> alert('Welcome to FloverTown')</script>");
                //Response.AddHeader("refresh", "3;url=Login-admi.aspx");
                Response.Redirect("Login - admi.aspx");
            }
            else
            {
                lblWarming.Text = "The username already exit!";
                lblWarming.ForeColor = System.Drawing.Color.Red;
                //Response.AddHeader("refresh", "3;url=Login.aspx");

            }





        }
    }
}