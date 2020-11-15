using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB8Q4
{
    public partial class employeeInfo : System.Web.UI.Page
    {
        private string connectionstr=
            WebConfigurationManager.ConnectionStrings["Employee"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text="";
        }

        protected void insert_Click(object sender, EventArgs e)
        {
           SqlConnection con=new SqlConnection(connectionstr);
           string str= "insert into Works(person_name,Company_name,Salary) Values(@person_name,@Company_name,@Salary);";
           str += "insert into Lives(person_name,Street,City) Values(@person_name,@Street,@City)";
           SqlCommand com =new SqlCommand(str,con);
            com.Parameters.AddWithValue("@person_name",name.Text);
            com.Parameters.AddWithValue("@Company_name", companyName.Text);
            com.Parameters.AddWithValue("@Salary", Convert.ToInt32(salary.Text));
            com.Parameters.AddWithValue("@Street", street.Text);
            com.Parameters.AddWithValue("@City", city.Text);
            
            try
            {
                con.Open();
                com.ExecuteNonQuery();
            }
            catch(Exception err)
            {
                Label1.Text=err.Message;
            }
            finally
            {
                con.Close(); 
            }
        }
        protected void retrieve_Click(object sender, EventArgs e)
        {
            string str=
                "Select l.person_name,l.City from Works w,Lives l where w.Company_name='"+searchEmployee.Text
                + "' and l.person_name=w.person_name";
            SqlConnection con= new SqlConnection(connectionstr); 
            SqlCommand com =new SqlCommand(str,con); 
            SqlDataReader reader;
            try
            {
                con.Open(); 
                reader=com.ExecuteReader(); 
                GridView2.DataSource=reader;
                GridView2.DataBind();
                Label3.Text= "Employee Details:";

            }
            catch (Exception err)
            {
                Label2.Text = err.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}