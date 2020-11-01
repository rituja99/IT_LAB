using System;
using System.Web;
using System.Web.UI;

namespace LoginPage
{

    public partial class Default : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs args)
        {
            if(IsPostBack)
            {
                failed.Text = "";
            }
            else
            {
                Session["FailCounter"] = 0;
            }
        }
        public void submit_Click(object sender, EventArgs args)
        {
            Session["Email"] = emailID.Text;

            if (Application["Successcounter"] == null)
                Application["Successcounter"] = 0;
            

            if (emailID.Text != "ritujkalita1999@gmail.com" || pswd.Text != "rituz@12")
            {
                Session["FailCounter"] = Convert.ToInt32(Session["FailCounter"]) + 1;
                failed.Text = "Incorrect EmailID or Password " + Session["FailCounter"].ToString();
                if (Convert.ToInt32(Session["FailCounter"]) > 3)
                {
                    emailID.Text = "";
                    pswd.Text = "";
                    emailID.Enabled = false;
                    pswd.Enabled = false;
                }
            }
            else
            {
                Application["Successcounter"] = Convert.ToInt32(Application["Successcounter"]) + 1;
                Server.Transfer("WelcomePage.aspx");
            }
            
        }
    }
}
