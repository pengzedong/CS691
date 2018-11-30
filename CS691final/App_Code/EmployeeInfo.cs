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
        
        //check Director account
        public bool checkDirector() {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string quary = "select * from Employee where Username=@username";
            SqlCommand comd = new SqlCommand(quary, conn);
            comd.Parameters.AddWithValue("@username", UserName);
            SqlDataReader dr = comd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                if (dr["Position"].ToString().Equals("Director"))
                {
                    dr.Close();
                    conn.Close();
                    return true;
                }
            }
            return false;
        }//end directorcheck 

        //delete Employee account
        public void DeleteEmployee() {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string quary = "delete from Employee where Name=@name";
            SqlCommand comd = new SqlCommand(quary, conn);
            comd.Parameters.AddWithValue("@name", Name);
            comd.ExecuteNonQuery();
            conn.Close();

        }

        //change employee position to director
        public void ChangeEmployeePositionToDirector() {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string quary = "update employee set employee.position='Director' where Name=@name";
            SqlCommand comd = new SqlCommand(quary, conn);
            comd.Parameters.AddWithValue("@name", Name);
            comd.ExecuteNonQuery();
            conn.Close();
        }//end change employee position to director

        //change employee position to waiter
        public void ChangeEmployeePositionToWaiter()
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string quary = "update employee set employee.position='Waiter' where Name=@name";
            SqlCommand comd = new SqlCommand(quary, conn);
            comd.Parameters.AddWithValue("@name", Name);
            comd.ExecuteNonQuery();
            conn.Close();
        }// end change employee position to waiter

    }
}