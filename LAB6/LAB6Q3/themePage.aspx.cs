using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6Q3
{
    public partial class themePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Theme"] !=null)
            {
                themeList.Items.FindByText(Session["Theme"].ToString()).Selected =true;

            }
        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["Theme"] != null)
            {
                Page.Theme =Session["Theme"].ToString();
                if(Session["Theme"].ToString() =="Summer")
                {
                    pageBody.Attributes.Add("bgcolor", "#B7FFFF");
                    Label1.Text ="Summer";
                }
                else if (Session["Theme"].ToString() == "Monsoon")
                {
                    pageBody.Attributes.Add("bgcolor", "#D8D8D8");
                    Label1.Text = "Monsoon";
                }
            }
        }
        protected void changeTheme(object sender, EventArgs e)
        {
            Session["Theme"] = themeList.SelectedValue;
            Response.Redirect(Request.FilePath);
        }
    }



}