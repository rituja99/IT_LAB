using System;
using System.Web;
using System.Web.UI;

namespace carManufacturer_QueryString
{

    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs args)
        {
            if(!IsPostBack)
            {
                carManufacturerList.Items.Add("Ford");
                carManufacturerList.Items.Add("Toyota");
                carManufacturerList.Items.Add("Mercedes");
                carManufacturerList.Items.Add("Bentley");
                carManufacturerList.Items.Add("Renault");
            }
        }

        protected void display(object sender, EventArgs args)
        {
            if(carManufacturerList.SelectedIndex==-1)
            {
                invalid.Text = "You must Select a manufacturer from the given List.";
            }
            string url = "DisplayPage.aspx?";
            url += "Item" + Server.UrlEncode(carManufacturerList.SelectedItem.Text) + "&";
            url += "Model=" + Server.UrlEncode(model_name.Text);
            Response.Redirect(url);

        }

        protected void linkModel(object sender, EventArgs args)
        {
            switch(carManufacturerList.SelectedItem.Text.ToString())
            {
                case "Ford": model_name.Text = "Ford Figo";
                    break;

                case "Toyota": model_name.Text = "Innova";
                    break;

                case "Mercedes": model_name.Text = "Mercedes-Benz GLS";
                    break;

                case "Bentley": model_name.Text = "Continental GT";
                    break;

                case "Renault": model_name.Text = "Renault KWID";
                    break;
            }
        }
    }
}
