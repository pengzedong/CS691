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
            menu_item_designer menuitem;
            List<menu_item_designer> itemList =new List<menu_item_designer>();
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "select top 10 * from Food_menu";
            SqlCommand cmd = new SqlCommand(qry, conn);
            
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read()){

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

            nameList.Add(Label1);
            nameList.Add(Label2);
            nameList.Add(Label3);
            nameList.Add(Label4);
            nameList.Add(Label5);
            nameList.Add(Label6);
            nameList.Add(Label7);
            nameList.Add(Label8);
            nameList.Add(Label9);
            nameList.Add(Label10);

            infoList.Add(Label11);
            infoList.Add(Label12);
            infoList.Add(Label13);
            infoList.Add(Label14);
            infoList.Add(Label15);
            infoList.Add(Label16);
            infoList.Add(Label17);
            infoList.Add(Label18);
            infoList.Add(Label19);
            infoList.Add(Label20);

            priceList.Add(Label21);
            priceList.Add(Label22);
            priceList.Add(Label23);
            priceList.Add(Label24);
            priceList.Add(Label25);
            priceList.Add(Label26);
            priceList.Add(Label27);
            priceList.Add(Label28);
            priceList.Add(Label29);
            priceList.Add(Label30);



            for (int i = 0; i < itemList.Count; i++)
            {
                nameList[i].Text = itemList[i].FoodName;
                infoList[i].Text = "Ingreients:  "+ itemList[i].IngredientsInfo + "  " + "Allergen Information:  " +  itemList[i].AllergenInfo +  "  "  + "Categories:  " + itemList[i].CategoriesInfo;
                priceList[i].Text = itemList[i].Price.ToString();
            }



            menu_item_designer AdDesigner = new menu_item_designer();
            advertising = " ";
            AdDesigner.ReadNewestAdvertising();
            advertising = AdDesigner.AD;
          
        }

        protected void btnSubmitChange_Click(object sender, EventArgs e)
        {

            try
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

        protected void btnSubmitNewAdvert_Click(object sender, EventArgs e)
        {
            try
            {
                menu_item_designer advertAdd = new menu_item_designer();
                advertAdd.AD = tbxNewAdvert.Text;
                advertAdd.InsertAdvertising();
            }
            catch (Exception ex) {
                lblError2.Text = ex.Message;
            }
        }
    }
}