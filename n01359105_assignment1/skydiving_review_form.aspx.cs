using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01359105_assignment1
{
    public partial class skydiving_review_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();

                if (Page.IsValid)
                {
                    string Client_Name = aspx_client_name.Text.ToString();
                    string Client_Contact = aspx_client_contact.Text.ToString();
                    int Overall_Rating = Convert.ToInt32(aspx_overall_rating.Text);
                    string Client_Instructor = client_instructor.SelectedValue.ToString();
                    string Staff_Rating = staff_rating.SelectedValue.ToString();

                    confirm_box.InnerHtml = "Thank you for coming here and here is your summary: <br>";

                    confirm_box.InnerHtml += " Your name is: " + Client_Name + "<br>";
                    confirm_box.InnerHtml += " Your contact number is: " + Client_Contact + "<br>";
                    confirm_box.InnerHtml += " You give " + Overall_Rating.ToString() + " as an overall rating. <br>";
                    confirm_box.InnerHtml += " Your experience with staff was " + Staff_Rating + "<br>";               
                    confirm_box.InnerHtml += " Your Instructor was: " + Client_Instructor + "<br><br>";


                    if (Overall_Rating == 0)
                    {
                        confirm_box.InnerHtml += "According to your review, you would not visit again. <br>";
                    }
                    else if (Overall_Rating == 1)
                    {
                        confirm_box.InnerHtml += "According to your review, your experience was not enjoyable. <br>"; 
                    }
                    else if (Overall_Rating == 2)
                    {
                        confirm_box.InnerHtml += " According to your review, you seem quite dissatisfied. <br>";
                    }
                    else if (Overall_Rating == 3)
                    {
                        confirm_box.InnerHtml += " According to your review, your experience was not so bad. <br>";
                    }
                    else if (Overall_Rating == 4)
                    {
                        confirm_box.InnerHtml += " According to your review, you enjoyed to some extent . <br>";
                    }
                    else {
                        confirm_box.InnerHtml += " According to your review, you have enjoyed well and you will visit again. <br>";
                    }
                    

                }
            }
        }
    }
}