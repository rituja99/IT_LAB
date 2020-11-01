using System;
using System.Web;
using System.Web.UI;

namespace sessionStateLab5_2
{

    public partial class Default : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs args)
        {
            if(!IsPostBack)
            {
                lstSubj.Items.Add("Mathematics");
                lstSubj.Items.Add("Physics");
                lstSubj.Items.Add("Chemistry");
                lstSubj.Items.Add("History");
                lstSubj.Items.Add("Geography");
                lstSubj.Items.Add("Civics");
                lstSubj.Items.Add("Biology");
            }
        }

        protected void submit_Click(object sender, EventArgs args)
        {
            Session["Name"] = name.Text;
            Session["Roll"] = roll.Text;
            Session["Subject"] = lstSubj.SelectedItem.Text;
            Response.Redirect("SecondPage.aspx");
        }
    }
}
