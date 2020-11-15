using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Runtime.InteropServices.ComTypes;
using System.Runtime.InteropServices;

namespace LAB8Q1
{
    public partial class staff : System.Web.UI.Page
    {
        private string connctionstr = WebConfigurationManager.ConnectionStrings["housekeeperdb"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillList();
            }
        }
        protected void fillList()
        {
            staffList.Items.Clear();
            string str = "select * from staff";
            SqlConnection con = new SqlConnection(connctionstr);
            SqlCommand com = new SqlCommand(str, con);
            SqlDataAdapter adapter = new SqlDataAdapter(com);
            DataSet set = new DataSet();
            try
            {
                con.Open();
                adapter.Fill(set, "Staff");
            }
            catch (Exception c)
            {
                Label1.Text = c.Message;
            }
            finally
            {
                con.Close();
            }
            foreach (DataRow row in set.Tables["Staff"].Rows)
            {
                ListItem item = new ListItem();
                item.Text = row["staffId"].ToString();
                item.Value = row["staffId"].ToString();
                staffList.Items.Add(item);
            }
        }
        protected void updateClick(object sender, EventArgs e)
        {
            string str = "UPDATE staff SET City = @City, State=(Select State from CityState where City=@City)WHERE staffId =@staffId";
            SqlConnection con = new SqlConnection(connctionstr);
            SqlCommand com = new SqlCommand(str, con);
            int count = 0;
            com.Parameters.AddWithValue("@staffId",staffList.SelectedItem.Value);
            com.Parameters.AddWithValue("@City", cityList.SelectedItem.Value);
            Label1.Text =str;
            try
            {
                con.Open();
                count = com.ExecuteNonQuery();
                DetailsView1.Visible=false;
                Label1.Text = count.ToString() + " record(s) updated";

            }
            catch (Exception c)
            {
                Label1.Text = c.Message;
            }
            finally
            {
                con.Close();
            }
            if (count > 0)
            {
                fillList();
            }
        }

        protected void Display(object sender, EventArgs e)
        {
            Label1.Text = "";
            string str = "select * from staff WHERE staffId=" +staffList.SelectedItem.Value +";";
            SqlConnection con = new SqlConnection(connctionstr);
            SqlCommand com = new SqlCommand(str, con);
            SqlDataAdapter adapter = new SqlDataAdapter(com);
            DataSet set = new DataSet();
            try
            {
                con.Open();
                adapter.Fill(set, "Staff");
               
            }
            catch (Exception c)
            {
                Label1.Text = c.Message;
            }
            finally
            {
                con.Close();
            }

            DetailsView1.Visible = true;
            DetailsView1.DataSource=set;
            DetailsView1.DataBind();
            
        }
    }


}