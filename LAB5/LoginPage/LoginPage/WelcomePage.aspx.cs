using System;
using System.Web;
using System.Web.UI;

namespace LoginPage
{

    public partial class WelcomePage : System.Web.UI.Page
    {
        public void Page_Load(object sender,EventArgs args)
        {
            loggeIn.Text = "YOU HAVE SUCCESSFULLY LOGGED IN" + Application["Successcounter"].ToString();
        }
    }
}
