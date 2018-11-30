using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace CS691final.App_Code
{
    public class ShoppingCart
    {
        public string Id { get; set; }
        public string UserName { get; set; }
        public string OrderFood { get; set; }
        public double Price { get; set; }
        

        //insert shoppint list info 
        public void InsertShoppingCart()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qryStr = "insert into [ShoppingCart] (UserName,OrderFood,Price)values (@username,@orderfood,@price)select @@identity ";
            ////@@IDENTITY returns the last identity value generated for any table in the current session
            SqlCommand cmd = new SqlCommand(qryStr, conn);

            cmd.Parameters.AddWithValue("@username", UserName);
            cmd.Parameters.AddWithValue("@orderfood",OrderFood);
            cmd.Parameters.AddWithValue("@price", Price);

            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            Id = dr[0].ToString();
            dr.Close();
            conn.Close();

        }//close insertShoppingCart method

        public void ReadRecordById()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qry = "select * from ShoppingCart where (Id =@id)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@id",Id);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            Id = dr["Id"].ToString();
            UserName = dr["UserName"].ToString();
            OrderFood = dr["OrderFood"].ToString();
             
            Price = Convert.ToDouble(dr["Price"].ToString());

            dr.Close();
            conn.Close();


        }
        public void UpdateCartPrice() {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qryStr = "Update ShoppingCart set  ShoppingCart.Price =@price where Id=@id ";
            ////@@IDENTITY returns the last identity value generated for any table in the current session
            SqlCommand cmd = new SqlCommand(qryStr, conn);            
            cmd.Parameters.AddWithValue("@id", Id);
            cmd.Parameters.AddWithValue("@price", Price);

            cmd.ExecuteNonQuery();
            conn.Close();

        }

         



    }
}