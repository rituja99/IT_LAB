using System;
using System.Web;
using System.Web.UI;

namespace magazineCover
{

    public partial class Default : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs args)
        {
            if(!IsPostBack)
            {
                lstimage.Items.Add("image1.png");
                lstimage.Items.Add("image2.png");
                lstimage.Items.Add("image3.png");
                lstimage.Items.Add("image4.png");

            }
        }

        protected void createCover(object sender, EventArgs args)
        {
            pnlCover.BackImageUrl = lstimage.SelectedItem.Text;
            lblTitle.Text = title.Text;
            lblInput.Text = inputText.Text;
        }
    }
}
