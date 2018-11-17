using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace CS691final.App_Code
{
    public class menu_item_designer
    {
        public string ID { get; set; }
        public string FoodName { get; set; }
        public string IngredientsInfo { get; set; }
        public string AllergenInfo { get; set; }
        public double CategoriesInfo { get; set; }
        public double Price { get; set; }


        public void ReadRecordById()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "select * from Food_Menu where (Food_id=@id)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@id", ID);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            ID = dr["Food_id"].ToString();
            FoodName = dr["Food_Name"].ToString();
            IngredientsInfo = dr["Food_ingredients"].ToString();
            AllergenInfo = dr["Food_allergen_info"].ToString();
            CategoriesInfo = Convert.ToDouble(dr["Food_categories"].ToString());
            Price = Convert.ToDouble(dr["Food_price"].ToString());

            dr.Close();
            conn.Close();

            
        }
    }
}