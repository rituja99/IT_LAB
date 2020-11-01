using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employees
{

    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddl1.Items.Add(new ListItem("ID1", "p1"));
                ddl1.Items.Add(new ListItem("ID2", "p2"));
                ddl1.Items.Add(new ListItem("ID3", "p3"));
            }
        }

        protected void ddl1_SelectedIndexChanged(object sender, EventArgs args)
        {
            string value = ddl1.SelectedValue;
            string i = value.ToString();
            labelAns.Text = i;
            y_n.Text = "";
            ename.Text = "";
            doj.Text = "";
            switch(i)
            {
                case "p1":
                    image1.ImageUrl = "p1.jpg";
                    break;
                case "p2":
                    image1.ImageUrl = "p2.jpg";
                    break;
                case "p3":
                    image1.ImageUrl = "p3.jpg";
                    break;
                default:
                    image1.ImageUrl = "p4.jpg";
                    labelAns.Text = "NO Output";
                    break;
            } 
        }
        protected void Submit(object sender, EventArgs args)
        {
            DateTime now = DateTime.Now;
            DateTime dateOfJoining = Convert.ToDateTime(doj.Text);
            int diff = now.Year - dateOfJoining.Year;
            if(diff<5)
            {
                y_n.Text = "NO";
            }
            else
            {
                y_n.Text = "YES";
            }
        }
    }
}
