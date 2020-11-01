using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentForm_Lab6Q1
{

    public partial class Default : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs args)
        {
                if(!IsPostBack)
                {
                    houseList.Items.Add("Jhelum");
                    houseList.Items.Add("Chenab");
                    houseList.Items.Add("Teesta");
                    houseList.Items.Add("Ganga");
                    houseList.Items.Add("Kaveri");
                    houseList.Items.Add("Narmada");

                    candList.Items.Add("Riya Mathur");
                    candList.Items.Add("Aditya Mittal");
                    candList.Items.Add("Yash Aurora");
                    candList.Items.Add("Meera Agarwal");
                    candList.Items.Add("Asmita Mehra");
                    candList.Items.Add("Arpit Bhaskar");

            }
            
        }
        public void contactValid_ServerValidate(Object sender, ServerValidateEventArgs a)
        {
            try
            {
                bool isvalid = true;
                if (contact.Text.Length == 10)
                {
                    foreach(char e in contact.Text)
                    {
                        if(e<'0'|| e>'9')
                        {
                            isvalid = false;
                            contactValid.ErrorMessage = "Contact Number must contain only digits.";
                            break;
                        }
                    }
                }
                else
                {
                    contactValid.ErrorMessage = "Contact Number must contain only 10 digits.";
                    isvalid = false;
                }
                a.IsValid = isvalid;
                

            }
            catch
            {
                a.IsValid = false;
            }
        }
        public void submit_Click(object sender, EventArgs args)
        {
            if(this.IsValid)
            {
                success.Text = "Submitted Successfully!!";
            }
            else
            {
                success.Text = "Submission Failed";
            }
        }

    }
}
