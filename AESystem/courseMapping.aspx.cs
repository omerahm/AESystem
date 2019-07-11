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
    public partial class courseMapping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMapCourse_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringCMapping"].ConnectionString);
                conn.Open();
                string checkCourseMapping = "select count(*) from tableCourseMapping where courseID='" + DropDownListStudentCourse.Text + "' AND studentID='" + DropDownListStudentName.Text + "'" ;
                SqlCommand cmd = new SqlCommand(checkCourseMapping, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 0)
                {
                    string insertQuery = "INSERT INTO tableCourseMapping(studentID,courseID) values (@studentID,@courseID)";
                    SqlCommand cmd2 = new SqlCommand(insertQuery, conn);
                    cmd2.Parameters.AddWithValue("@studentID", DropDownListStudentName.Text);
                    cmd2.Parameters.AddWithValue("@courseID", DropDownListStudentCourse.Text);
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script>alert('Course has been mapped successfully!');</script>");
                }
                else if (temp > 0)
                {
                    Response.Write("<script>alert('Course has already been mapped!');</script>");
                }

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error! ');</script>" + ex.ToString());
            }
        }

        protected void btnCourseMappingBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminDashboard.aspx");
        }
    }
}