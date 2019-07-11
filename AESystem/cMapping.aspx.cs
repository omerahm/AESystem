using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AESystem
{
    public partial class cMapping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringCMConnect"].ConnectionString);
                conn.Open();
                //              string insertQuery = "INSERT INTO tableStudent(courseone,dateone,coursetwo,datetwo,coursethree,datethree,coursefour,datefour,coursefive,datefive,coursesix,datesix) values (@courseone,@dateone,@coursetwo,@datetwo,@coursethree,@datethree,@coursefour,@datefour,@coursefive,@datefive,@coursesix,@datesix)";
                string insertQuery = "UPDATE tableStudent SET CourseOne = '" + this.DropDownList2.Text + "', DateOne = '" + this.Calendar1.SelectedDate.ToShortDateString() + 
                                                          "', CourseTwo = '" + this.DropDownList3.Text + "', DateTwo = '" + this.Calendar2.SelectedDate.ToLongDateString() +
                                                          "', CourseThree = '" + this.DropDownList4.Text + "', DateThree = '" + this.Calendar3.SelectedDate.ToLongDateString() +
                                                          "', CourseFour = '" + this.DropDownList5.Text + "', DateFour = '" + this.Calendar4.SelectedDate.ToLongDateString() +
                                                          "', CourseFive = '" + this.DropDownList6.Text + "', DateFive = '" + this.Calendar5.SelectedDate.ToLongDateString() +
                                                          "', CourseSix = '" + this.DropDownList7.Text + "', DateSix = '" + this.Calendar6.SelectedDate.ToLongDateString() + "' where studentID=" + this.DropDownList1.Text + "";
                Response.Write(insertQuery);
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@CourseOne", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@DateOne", Calendar1.SelectedDate.Date);
                cmd.Parameters.AddWithValue("@CourseTwo", DropDownList3.Text);
                cmd.Parameters.AddWithValue("@DateTwo", Calendar2.SelectedDate.Date);
                cmd.Parameters.AddWithValue("@CourseThree", DropDownList4.Text);
                cmd.Parameters.AddWithValue("@DateThree", Calendar3.SelectedDate.Date);
                cmd.Parameters.AddWithValue("@CourseFour", DropDownList5.Text);
                cmd.Parameters.AddWithValue("@DateFour", Calendar4.SelectedDate.Date);
                cmd.Parameters.AddWithValue("@CourseFive", DropDownList6.Text);
                cmd.Parameters.AddWithValue("@DateFive", Calendar5.SelectedDate.Date);
                cmd.Parameters.AddWithValue("@CourseSix", DropDownList7.Text);
                cmd.Parameters.AddWithValue("@DateSix", Calendar6.SelectedDate.Date);

                Response.Write(insertQuery);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Course has been mapped successfully!');</script>");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: Exception!');</script>" + ex.ToString());
            }
        }

        protected void btnBackProg_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminDashboard.aspx");
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminDashboard.aspx");
        }
    }
}