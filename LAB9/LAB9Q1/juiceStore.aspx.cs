using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB9Q1
{
    public partial class juiceStore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                List<ListItem> fruits = new List<ListItem>();
                fruits.Add(new ListItem("Strawberry","40"));
                fruits.Add(new ListItem("Blueberry","60"));
                fruits.Add(new ListItem("Kiwi","70"));
                fruits.Add(new ListItem("Banana","35"));
                fruits.Add(new ListItem("Watermelon","45"));
                fruits.Add(new ListItem("Mango","40"));
                fruits.Add(new ListItem("Litchi","55"));
                fruits.Add(new ListItem("Cranberry","60"));
                fruitsList.DataSource = fruits;
                fruitsList.DataTextField = "Text";
                fruitsList.DataValueField = "Value";
                fruitsList.DataBind();

                List<ListItem> iceCream = new List<ListItem>();
                iceCream.Add(new ListItem("Vanilla","40"));
                iceCream.Add(new ListItem("Chocolate","50"));
                iceCream.Add(new ListItem("Blackcurrent","60"));
                iceCream.Add(new ListItem("Orea n Cookies","65"));
                iceCream.Add(new ListItem("Kit-Kat","70"));
                iceCream.Add(new ListItem("Coffee","65"));
                iceCream.Add(new ListItem("Butterscotch","50"));
                iceCreamList.DataTextField = "Text";
                iceCreamList.DataValueField = "Value";
                iceCreamList.DataSource = iceCream;
                iceCreamList.DataBind();

            }
        }

        protected void display(object sender, EventArgs e)
        {
            string str = "Fruits:";
            int sum = 0;
            foreach(ListItem ele in fruitsList.Items)
            {
                Label2.Text = ele.Value;
                if(ele.Selected)
                {
                    str += "<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ele.Text ;
                    sum += Int32.Parse(ele.Value.ToString());
                }
            }
            str += "<br/><br/>Ice-Cream:";
            foreach(ListItem ele in iceCreamList.Items)
            {
                if(ele.Selected)
                {
                    str += "<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ele.Text;
                    sum += Int32.Parse(ele.Value.ToString());
                    break;
                }
            }
            str += "<br/><br/>Price:       " + sum.ToString();
            Label2.Text = str;

        }
    }
}