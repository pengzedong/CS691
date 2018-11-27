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
    public partial class Menu_Page : System.Web.UI.Page
    {



        protected string advertising = "";
        



        protected void Page_Load(object sender, EventArgs e)
        {
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
                infoList[i].Text = itemList[i].IngredientsInfo + itemList[i].AllergenInfo + itemList[i].CategoriesInfo;
                priceList[i].Text = itemList[i].Price.ToString();
            }




            menu_item_designer AdDesigner = new menu_item_designer();
            AdDesigner.ReadNewestAdvertising();
            advertising = AdDesigner.AD;




        }

       
    }
}