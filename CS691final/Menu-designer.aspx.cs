using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CS691final.App_Code;


namespace CS691final
{
    public partial class Menu_designer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            menu_item_designer itemReader = new menu_item_designer();
            itemReader.ID = "00001";
            itemReader.ReadRecordById();
            
            Label1.Text = itemReader.FoodName;
        }
    }
}