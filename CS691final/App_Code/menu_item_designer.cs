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
        public string AD { get; set; }
        public int pos { get; set; }


        //add item to food list
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
    

       //get newest advert from database
        public void ReadNewestAdvertising()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "select top 1 advertising from advert order by id desc";
            SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            AD = dr["advertising"].ToString();
            dr.Close();
            conn.Close();


        }

        //put new advert in the database
        public void InsertAdvertising ()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qryStr = "insert into [advert] (advertising )values (@advert) select @@identity";
            ////@@IDENTITY returns the last identity value generated for any table in the current session
            SqlCommand cmd = new SqlCommand(qryStr, conn);

            cmd.Parameters.AddWithValue("@advert", AD);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            dr.Close();
            conn.Close();
        }

        // delete food from menu
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