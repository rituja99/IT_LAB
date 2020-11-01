using System;
using System.Web;
using System.Web.UI;

namespace carManufacturer_QueryString
{

    public partial class DisplayPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs args)
        {
            carManufacturer.Text = "Car Manufacturer: " + Request.QueryString["Item"];
            ModelName.Text = "Model Name: " + Request.QueryString["Model"];
            
        }
    }
}
