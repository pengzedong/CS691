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

        public void InsertItem()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qryStr = "insert into [Food_Menu] (Food_Name,Food_ingredients,Food_allergen_info,Food_categories,Food_price)values (@name,@ingredients,@allergen,@categories,@price) select @@identity";
            ////@@IDENTITY returns the last identity value generated for any table in the current session
            SqlCommand cmd = new SqlCommand(qryStr, conn);
            
            cmd.Parameters.AddWithValue("@name", FoodName);
            cmd.Parameters.AddWithValue("@ingredients", IngredientsInfo);
            cmd.Parameters.AddWithValue("@allergen", AllergenInfo);
            cmd.Parameters.AddWithValue("@categories", CategoriesInfo);
            cmd.Parameters.AddWithValue("@price", Price);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            ID = dr[0].ToString();
            dr.Close();
            conn.Close();
        }
    

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

        public void DeleteItem()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "delete from Food_Menu where (Food_Name=@Name)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@Name", FoodName);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();

            dr.Close();
            conn.Close();


        }
    }
}