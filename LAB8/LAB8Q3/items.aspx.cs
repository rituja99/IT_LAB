using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB8Q3
{
    public partial class items : System.Web.UI.Page
    {
       private string conectionstr
             = WebConfigurationManager.ConnectionStrings["Products"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
           {
                display();
           }
        }

        protected void update_Click(object sender, EventArgs e)
        {
           string str = "Update Items Set price=@price where flavour=@flavour";
           SqlConnection con =new SqlConnection(conectionstr);
           SqlCommand com=new SqlCommand(str,con);
           com.Parameters.AddWithValue("@price",priceTB.Text);
           com.Parameters.AddWithValue("@flavour", "Vanilla");
            try
            {
                con.Open();
                com.ExecuteNonQuery();
                display();
            }         
            catch(Exception err)
            {
                label1.Text = err.Message;
            }
            finally
            {
                con.Close();
            }

        }
        protected void display()
        {
            string str = "Select * from Items";
            SqlConnection con = new SqlConnection(conectionstr);
            SqlCommand com=new SqlCommand(str,con);
            SqlDataReader reader;
            try
            {
                con.Open();
                reader = com.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

            }
            catch(Exception err)
            {
                label1.Text = err.Message;
            }
            finally
            {
                con.Close();
            }
          
        }
    }
}