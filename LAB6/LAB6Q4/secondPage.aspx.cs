using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6Q4
{
    public partial class secondPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string info ="";
            if (Session["info"] != null)
            {
                switch (Session["info"].ToString())
                {
                    case "OnePlus Nord":
                        info = Session["info"].ToString() +
                            "<br/>&nbsp&nbsp" +
                            "DISPLAY:&nbspFluid AMOLED, 90Hz, HDR10+,&nbspSize: 6.44 inches<br/>" +
                            "MEMORY: 128/256GB 6/8GB RAM<br/>CAMERA: Rear: 48 MP(Quad camera)&nbspFront:&nbsp32MP<br/>" +
                            "Battery: 4115 mAh<br/>";
                        break;
                    case "Oppo F17":
                        info = Session["info"].ToString() +
                            "<br/>&nbsp&nbsp" +
                            "DISPLAY:&nbspSuper AMOLED,&nbspSize: 6.43 inches<br/>" +
                            "MEMORY: 128GB 8GB RAM<br/>CAMERA: Rear: 48 MP(Quad camera)&nbspFront:&nbsp16MP<br/>" +
                            "Battery: 4015 mAh<br/>";
                        break;
                    case "Samsung S20":
                        info = Session["info"].ToString() +
                            "<br/>&nbsp&nbsp" +
                            "DISPLAY:&nbspSuper AMOLED, 120Hz, HDR10+,&nbspSize: 6.2 inches<br/>" +
                            "MEMORY: 128GB 8GB RAM<br/>CAMERA: Rear: 64 MP(Triple)&nbspFront:&nbsp10MP<br/>" +
                            "Battery: 4000 mAh<br/>";
                        break;

                    case "iPhone 11":
                        info = Session["info"].ToString() +
                            "<br/>&nbsp&nbsp" +
                            "DISPLAY:&nbspLiquid Retina IPS LCD,&nbspSize: 6.1 inches<br/>" +
                            "MEMORY: 64/128/256GB 4GB RAM<br/>CAMERA: Rear: 12 MP(ual)&nbspFront:&nbsp12MP<br/>" +
                            "Battery: 3110 mAh<br/>";
                        break;
                }
                Label1.Text = info;
            }
        }
        protected void back(object sender, EventArgs e)
        {
           

            Response.Redirect("firstPage.aspx");
        }
    }
}