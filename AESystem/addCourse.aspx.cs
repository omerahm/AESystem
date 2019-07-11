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
    public partial class addCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCourse_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAddTeacher"].ConnectionString);
                conn.Open();
                string checkCourseCode = "select count(*) from tableCourse where courseCode='" + txtCourseCode.Text + "'";
                SqlCommand cmd = new SqlCommand(checkCourseCode, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 0)
                {
                    string insertQuery = "INSERT INTO tableCourse(courseName,courseCode,courseCH,courseProgrammeID) values (@courseName,@courseCode,@courseCH,@courseProgrammeID)";
                    SqlCommand cmd2 = new SqlCommand(insertQuery, conn);
                    cmd2.Parameters.AddWithValue("@courseName", txtCourseName.Text);
                    cmd2.Parameters.AddWithValue("@courseCode", txtCourseCode.Text);
                    cmd2.Parameters.AddWithValue("@courseCH", txtCreditHours.Text);
                    //     cmd2.Parameters.AddWithValue("@teacherID", DropDownListTeacher.Text);
                    cmd2.Parameters.AddWithValue("@courseProgrammeID", DropDownListProgrammes.Text);
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script>alert('Course has been added successfully!');</script>");
                }
                else if (temp > 0)
                    {
                    Response.Write("<script>alert('Course has already been defined!');</script>");
                }

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error! ');</script>" + ex.ToString());
            }
        }

        protected void btnBackAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminDashboard.aspx");
        }
    }
}