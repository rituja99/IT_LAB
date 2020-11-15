using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB9Q3
{
    public partial class CityPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string constr = WebConfigurationManager.ConnectionStrings["cityDB"].ConnectionString;
                string str = "Select StateName from State";
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet set = new DataSet();

                try
                {
                    con.Open();
                    adapter.Fill(set, "State");
                }
                catch (Exception err)
                {
                    Label1.Text = err.Message;
                }
                finally
                {
                    con.Close();
                }
                Dictionary<int, string> stateList = new Dictionary<int, string>();
                int index = 0;
                foreach (DataRow row in set.Tables["State"].Rows)
                {
                    int key = index;
                    string value = row["StateName"].ToString();
                    stateList.Add(key, value);
                    index += 1;
                }
                DropDownList1.DataSource = stateList;
                DropDownList1.DataTextField = "Value";
                DropDownList1.DataValueField = "Value";
                DropDownList1.DataBind();
            }
           
        }

    }
}