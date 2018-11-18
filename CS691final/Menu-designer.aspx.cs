﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;

namespace CS691final
{
    public partial class Menu_designer : System.Web.UI.Page
    {
        String NewItemName;
        protected void Page_Load(object sender, EventArgs e)
        {
            menu_item_designer itemReader = new menu_item_designer();
           
            
            itemReader.ID = "1";
            itemReader.ReadRecordById();
            
            Label1.Text = itemReader.FoodName;
        }

        protected void btnSubmitChange_Click(object sender, EventArgs e)
        {

            try
            {
                if (String.IsNullOrEmpty(NewItemName))
                {
                    menu_item_designer itemInsert = new menu_item_designer();

                    itemInsert.FoodName = tbxName.Text;
                    itemInsert.IngredientsInfo = tbxIngredients.Text;
                    itemInsert.AllergenInfo = tbxAllergen.Text;
                    itemInsert.CategoriesInfo = Convert.ToDouble(tbxCategories.Text);
                    itemInsert.Price = Convert.ToDouble(tbxPrice.Text);
                    itemInsert.InsertItem();
                    Response.Redirect("Menu-designer.aspx");


                }
            }
            catch (Exception ex) {
                lblError.Text = ex.Message;

            }

        }

        protected void btnSubmitDelete_Click(object sender, EventArgs e)
        {
            menu_item_designer itemDelete = new menu_item_designer();
            for (int i = 0; i < cblCheckDeleteItem.Items.Count; i++) {
                if (cblCheckDeleteItem.Items[i].Selected) {
                    itemDelete.FoodName = cblCheckDeleteItem.Items[i].Text;
                    itemDelete.DeleteItem();
                    Response.Redirect("Menu-designer.aspx");
                }

            }
        }
    }
}