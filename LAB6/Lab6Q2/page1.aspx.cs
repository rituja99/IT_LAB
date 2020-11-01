using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6Q2
{
    public partial class page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch(DropDownList3.SelectedItem.Text)
            {
                case "Mobiles":
                    image.ImageUrl = "pic1.jpg";
                    break;

                case "Laptops": image.ImageUrl = "dell-inspiron-7570-l.jpg";
                    break;

                case "Printers":
                    image.ImageUrl = "laptop.jpg";
                    break;
                default:
                    image.AlternateText = "";
                    break;
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DropDownList2.SelectedItem.Text)
            {
                case "Samsung":
                    Label1.Text = "Vendor: Samsung";
                    break;

                case "HP":
                    Label1.Text = "Vendor: HP";
                    break;

                case "Apple":
                    Label1.Text = "Vendor: Apple";
                    break;

                case "Dell":
                    Label1.Text = "Vendor: Dell";
                    break;


            }
        }
    }
}