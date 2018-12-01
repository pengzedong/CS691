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
    public partial class Menu_designer : System.Web.UI.Page
    {


        protected string advertising = "";



        protected void Page_Load(object sender, EventArgs e)
        {

            //if (Session["owner"] == null)
            //{
            //    Response.Write("<script language=javascript> var agree; agree=confirm('You have to be owner first!!!'); window.location='Login.aspx';</script>");

            //}

            menu_item_designer menuitem;
            List<menu_item_designer> itemList = new List<menu_item_designer>();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "select top 12 * from Food_menu";
            SqlCommand cmd = new SqlCommand(qry, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                menuitem = new menu_item_designer();
                menuitem.ID = dr["Food_id"].ToString();
                menuitem.FoodName = dr["Food_Name"].ToString();
                menuitem.IngredientsInfo = dr["Food_ingredients"].ToString();
                menuitem.AllergenInfo = dr["Food_allergen_info"].ToString();
                menuitem.CategoriesInfo = Convert.ToDouble(dr["Food_categories"].ToString());
                menuitem.Price = Convert.ToDouble(dr["Food_price"].ToString());
                itemList.Add(menuitem);

            }

            dr.Close();
            conn.Close();

            List<Label> nameList = new List<Label>();
            List<Label> infoList = new List<Label>();
            List<Label> priceList = new List<Label>();

            nameList.Add(FoodNameLabel001);
            nameList.Add(FoodNameLabel002);
            nameList.Add(FoodNameLabel003);
            nameList.Add(FoodNameLabel004);
            nameList.Add(FoodNameLabel005);
            nameList.Add(FoodNameLabel006);
            nameList.Add(FoodNameLabel007);
            nameList.Add(FoodNameLabel008);
            nameList.Add(FoodNameLabel009);
            nameList.Add(FoodNameLabel010);
            nameList.Add(FoodNameLabel011);
            nameList.Add(FoodNameLabel012);

            infoList.Add(FoodInfoLabel001);
            infoList.Add(FoodInfoLabel002);
            infoList.Add(FoodInfoLabel003);
            infoList.Add(FoodInfoLabel004);
            infoList.Add(FoodInfoLabel005);
            infoList.Add(FoodInfoLabel006);
            infoList.Add(FoodInfoLabel007);
            infoList.Add(FoodInfoLabel008);
            infoList.Add(FoodInfoLabel009);
            infoList.Add(FoodInfoLabel010);
            infoList.Add(FoodInfoLabel011);
            infoList.Add(FoodInfoLabel012);

            priceList.Add(FoodPriceLabel001);
            priceList.Add(FoodPriceLabel002);
            priceList.Add(FoodPriceLabel003);
            priceList.Add(FoodPriceLabel004);
            priceList.Add(FoodPriceLabel005);
            priceList.Add(FoodPriceLabel006);
            priceList.Add(FoodPriceLabel007);
            priceList.Add(FoodPriceLabel008);
            priceList.Add(FoodPriceLabel009);
            priceList.Add(FoodPriceLabel010);
            priceList.Add(FoodPriceLabel011);
            priceList.Add(FoodPriceLabel012);



            for (int i = 0; i < itemList.Count; i++)
            {
                nameList[i].Text = itemList[i].FoodName;
                infoList[i].Text = "Ingreients:  " + itemList[i].IngredientsInfo + "  " + "Allergen Information:  " + itemList[i].AllergenInfo + "  " + "Categories:  " + itemList[i].CategoriesInfo;
                priceList[i].Text = itemList[i].Price.ToString();
            }



            menu_item_designer AdDesigner;
            AdDesigner = new menu_item_designer();

            advertising = " ";
            AdDesigner.ReadNewestAdvertising();
            //LabelAD.Text = AdDesigner.AD;
            advertising = AdDesigner.AD;

        }

        protected void btnSubmitChange_Click(object sender, EventArgs e)
        {
            //change menu item
            try
            {

                menu_item_designer itemInsert = new menu_item_designer();

                itemInsert.FoodName = tbxName.Text;
                itemInsert.IngredientsInfo = tbxIngredients.Text;
                itemInsert.AllergenInfo = tbxAllergen.Text;
                itemInsert.CategoriesInfo = Convert.ToDouble(tbxCategories.Text);
                itemInsert.Price = Convert.ToDouble(tbxPrice.Text);
                itemInsert.InsertItem();
                Response.Redirect("Menu_designer.aspx");



            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;

            }

        }//end menu item change button

        protected void btnSubmitDelete_Click(object sender, EventArgs e)
        {
            //menu item delete
            menu_item_designer itemDelete = new menu_item_designer();
            for (int i = 0; i < cblCheckDeleteItem.Items.Count; i++)
            {
                if (cblCheckDeleteItem.Items[i].Selected)
                {
                    itemDelete.FoodName = cblCheckDeleteItem.Items[i].Text;
                    itemDelete.DeleteItem();
                    Response.Redirect("Menu_designer.aspx");
                }

            }
        }//end menu item delete

        protected void btnSubmitNewAdvert_Click(object sender, EventArgs e)
        {
            //page advert change button
            try
            {
                menu_item_designer advertAdd = new menu_item_designer();
                advertAdd.AD = tbxNewAdvert.Text;
                advertAdd.InsertAdvertising();
                Response.Redirect("Menu_designer.aspx");
            }
            catch (Exception ex)
            {
                lblError2.Text = ex.Message;
            }
        }//end advert change button

        protected void btnBecomeDirector_Click(object sender, EventArgs e)
        {
            //set waiter to director 
            try {
                EmployeeInfo employee = new EmployeeInfo();
                employee.Name = RadioButtonListWaiterList.SelectedValue.ToString();
                employee.ChangeEmployeePositionToDirector();
                Response.Redirect("Menu_designer.aspx");

            }
            catch (Exception ex)
            {
                lblError2.Text = ex.Message;
            }
}

        protected void btnDeleteWaiterOrDirect_Click(object sender, EventArgs e)
        {
            //delete empployee account
            try
            {
                EmployeeInfo employee = new EmployeeInfo();
                employee.Name = RadioButtonDirector.SelectedValue.ToString();
                employee.DeleteEmployee();
                Response.Redirect("Menu_designer.aspx");

            }
            catch (Exception ex)
            {
                lblError2.Text = ex.Message;
            }
        }//end delete employee account button

        protected void btnBecomeWaiter_Click(object sender, EventArgs e)
        {
            //set dircor to become waiter button
            try
            {
                EmployeeInfo employee = new EmployeeInfo();
                employee.Name = RadioButtonDirector.SelectedValue.ToString();
                employee.ChangeEmployeePositionToWaiter();
                Response.Redirect("Menu_designer.aspx");

            }
            catch (Exception ex)
            {
                lblError2.Text = ex.Message;
            }
        }
    }
}