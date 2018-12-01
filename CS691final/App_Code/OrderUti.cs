using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CS691final.App_Code
{
    public class OrderUti
    {
        public string Id { get; set; }
        public string UserName { get; set; }
        public string OrderFood { get; set; }
        public double Price { get; set; }
        public string StoreId { get; set; }
        public DateTime Ordertime { get; set; }
        public string Status { get; set; }
        public string Waiter { get; set; }



        //insert order info to database
        public void InsertOrder ()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qryStr = "insert into [Orderhistory] (UserName,OrderFood,Price,StoreID,OrderTime,Status,Waiter)values (@username,@orderfood,@price,@storeId,@ordertime,'Order Recevied','null')";
            ////@@IDENTITY returns the last identity value generated for any table in the current session
            SqlCommand cmd = new SqlCommand(qryStr, conn);

            cmd.Parameters.AddWithValue("@username", UserName);
            cmd.Parameters.AddWithValue("@orderfood", OrderFood);
            cmd.Parameters.AddWithValue("@price", Price);
            cmd.Parameters.AddWithValue("@storeId", StoreId);
            cmd.Parameters.AddWithValue("@ordertime", Ordertime);
            
            cmd.ExecuteNonQuery();
           
            conn.Close();

        }//close insertOrderCart method

        //add waiter for each order, it set by owner 
        public void Updatawaiter()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string updataStr = "update OrderHistory Set OrderHistory.Waiter=@waiter ,OrderHistory.Status ='Order in-preparation' where OrderHistory.OrderID=@id";
            SqlCommand comd = new SqlCommand(updataStr, conn);
            comd.Parameters.AddWithValue("@waiter", this.Waiter);
            comd.Parameters.AddWithValue("@id", this.Id);
            comd.ExecuteNonQuery();
            conn.Close();
        }//end Updatawaiter

        //updata order status
        public void UpdateOrderStatus() {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string updataStr = "update OrderHistory Set OrderHistory.Status=@status where OrderHistory.OrderID=@id";
            SqlCommand comd = new SqlCommand(updataStr, conn);
            comd.Parameters.AddWithValue("@status", this.Status);
            comd.Parameters.AddWithValue("@id", this.Id);
            comd.ExecuteNonQuery();
            conn.Close();


        }//end updata order status







    }
}