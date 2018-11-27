using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CS691final.App_Code
{
    public class EmployeeInfo
    {
        //instance variable
        public string UserName { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string StoreId { get; set; }


        //add employ info to database
        public void InsertEmployeeData()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qryStr = "insert into [Employee] (Username,Name,Password,Position,StoreID)values (@username,@name,@password,'Waiter',@storeId) ";
            ////@@IDENTITY returns the last identity value generated for any table in the current session
            SqlCommand cmd = new SqlCommand(qryStr, conn);

            cmd.Parameters.AddWithValue("@username", this.UserName);
            cmd.Parameters.AddWithValue("@name", this.Name);
            cmd.Parameters.AddWithValue("@storeId", StoreId);
            cmd.Parameters.AddWithValue("@password", EncrytPassword.encryptString(Password));
            cmd.ExecuteNonQuery();
            conn.Close();

        }//close InsertCustomerDate() method

        //check dont have same username
        public bool CheckUserExit()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string quary = "select * from Employee where Username=@username";
            SqlCommand comd = new SqlCommand(quary, conn);
            comd.Parameters.AddWithValue("@username", this.UserName);
            SqlDataReader dr = comd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                conn.Close();
                return true;

            }
            else
            {
                dr.Close();
                conn.Close();
                return false;
            }
        }//close checkUserExit() method

        //check password is correct
        public bool checkPassword()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string quary = "select * from Employee where Username=@username";
            SqlCommand comd = new SqlCommand(quary, conn);
            comd.Parameters.AddWithValue("@username", UserName);
            SqlDataReader dr = comd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                if (dr["Password"].ToString().Equals(EncrytPassword.encryptString(Password)))
                {
                    dr.Close();
                    conn.Close();
                    return true;
                }
            }
            return false;
        }

        
    }
}