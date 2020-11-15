using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Services.Protocols;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB9Q2
{
    public partial class TravelAgency : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void details_Click(object sender, EventArgs e)
        {
            if (tourListBox.SelectedIndex != -1)
            {
                string queryStr = "TravelDetails.aspx?";
                queryStr += "Place=" + Server.UrlEncode(tourListBox.SelectedItem.Text);
                Response.Redirect(queryStr);
            }
        }
    }
}