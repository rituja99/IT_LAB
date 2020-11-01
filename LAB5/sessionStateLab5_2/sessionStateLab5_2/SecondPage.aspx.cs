using System;
using System.Web;
using System.Web.UI;

namespace sessionStateLab5_2
{

    public partial class SecondPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs args)
        {
            name.Text = (string)Session["Name"];
            roll.Text = (string)Session["Roll"];
            subj.Text = (string)Session["Subject"];

        }
        protected void incCounter(object sender, EventArgs args)
        {
            HttpCookie cookie = Request.Cookies["CounterCookie"];
            if (cookie == null)
            {
                cookie = new HttpCookie("CounterCookie");
                cookie.Expires = DateTime.Now.AddMinutes(10);
                cookie["counter"] = "0";
                
            }
            else
            {
                cookie["counter"] = (Convert.ToInt32(cookie["counter"]) +1).ToString();  
            }
            Response.Cookies.Add(cookie);
            count.Text = cookie["counter"].ToString();
        }
    }
}
