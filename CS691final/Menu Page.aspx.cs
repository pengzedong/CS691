using System;
using System.Collections.Generic;
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
        protected string menuName1 = "";
        protected string menuDetail1 = "";
        protected string menu02 = "";
        protected string menu03 = "";



        protected void Page_Load(object sender, EventArgs e)
        {

            menu_item_designer AdDesigner = new menu_item_designer();
            AdDesigner.ReadNewestAdvertising();
            advertising = AdDesigner.AD;




        }
    }
}