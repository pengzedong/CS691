using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace CS691final.App_Code
{
    public class CustomerInfo
    {
        //instance variable
        public string UserName { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        
        public void InsertCustomerData()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string qryStr = "insert into [Customer] (Username,Name,Email,Password)values (@username,@name,@email,@password) ";
            ////@@IDENTITY returns the last identity value generated for any table in the current session
            SqlCommand cmd = new SqlCommand(qryStr, conn);

            cmd.Parameters.AddWithValue("@username", this.UserName);
            cmd.Parameters.AddWithValue("@name", this.Name);
            cmd.Parameters.AddWithValue("@email", this.Email);
            cmd.Parameters.AddWithValue("@password", EncrytPassword.encryptString(Password));
            cmd.ExecuteNonQuery();
            conn.Close();

        }//close InsertCustomerDate() method
        public bool CheckUserExit()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string quary = "select * from Customer where Username=@username";
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


        public bool checkPassword()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string quary = "select * from Customer where Username=@username";
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