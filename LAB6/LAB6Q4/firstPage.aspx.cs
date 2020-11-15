using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6Q4
{
    public partial class firstPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void itemSelected(object sender, EventArgs e)
        {
            Label1.Text = mobileList.SelectedItem.Text;
        }

        protected void nextPage(object sender, EventArgs e)
        {
            Session["info"] =Label1.Text;

            Response.Redirect("secondPage.aspx");
        }
    }
}