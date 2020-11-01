using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoppingCartCookie
{
    
    public partial class Default : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs args)
        {
            if(!IsPostBack)
            {
                items.Items.Add(new ListItem("Samsung Galaxy S20", "120000"));
                items.Items.Add(new ListItem("Samsung Zflip", "180000"));
                items.Items.Add(new ListItem("Samsung A50s", "21000"));
                items.Items.Add(new ListItem("iPhone 10", "90000"));
                items.Items.Add(new ListItem("Samsung M31", "20000"));
                items.Items.Add(new ListItem("One Plus Nord", "29000"));

            }
        }
        public void nextItem(object sender, EventArgs args)
        {
            HttpCookie cookie = Request.Cookies[username.Text];
            if (cookie == null)
            {
                cookie = new HttpCookie(username.Text);
                cookie.Expires = DateTime.Now.AddMinutes(5);
                cookie["userName"] = username.Text;
                cookie["cartItem"] = "";
            }
            foreach(ListItem item in items.Items)
            {
                if(item.Selected)
                {
                    cookie["cartItem"] += item.Text + ",";
                }
            }
            Response.Cookies.Add(cookie);
        }
        public void ViewList_Click(object sender, EventArgs args)
        {
            string[] cartitems;
            HttpCookie cookie = Request.Cookies[username.Text];
            if (cookie != null)
            {

                string itemlist = "Item List: <br/><br/>";
                userlabel.Text = "Welcome " + cookie["userName"];
                cartitems = cookie["cartItem"].Split(',');
                foreach (string ele in cartitems)
                {
                    itemlist += ele + "<br/><br/>";
                }
                itemsList.Text = itemlist;
            }
        }
        
        public void NewUser(object sender, EventArgs args)
        {
            username.Text = "";
            itemsList.Text = "";
            
        }
    }
}
