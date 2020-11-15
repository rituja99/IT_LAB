using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Web.Configuration;
using System.Web.DynamicData;
using System.Web.UI.WebControls;

namespace LAB8Q2
{
    public partial class Legends : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Dictionary<int, string> genre = new Dictionary<int, string>();
                genre.Add(1, "Comedy");
                genre.Add(2, "Action");
                genre.Add(3, "Animation");
                genreList.DataSource = genre;
                genreList.DataTextField = "Value";
                this.DataBind();
            }
        }
        protected void genreSelect(object sender, EventArgs e)
        {
            string connectionstr 
                = WebConfigurationManager.ConnectionStrings["Legends"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstr);
            string str = "select name,Id from Legends where category=@category";
            SqlCommand com = new SqlCommand(str, con);
           com.Parameters.AddWithValue("@category",genreList.SelectedItem.Text );
            SqlDataReader reader;
            try
            {
                con.Open();
                reader = com.ExecuteReader();
                actorList.Items.Clear();
                while (reader.Read())
                {
                   ListItem item= new ListItem(); 
                   item.Text= reader["name"].ToString();
                   item.Value= reader["Id"].ToString();
                   actorList.Items.Add(item);
                }
                reader.Close();
            }
            catch (Exception err)
            {
                Label1.Text = "Error: "+ err.Message;
            }
            finally
            {
                con.Close();
            }
        }

       
    }
}