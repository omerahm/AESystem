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
    public partial class addTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAddTeacher"].ConnectionString);
                conn.Open();
                string checkCNIC = "select count(*) from tableTeacher where teacherCNIC='" + txtTeacherCNIC.Text + "'";
                SqlCommand cmd = new SqlCommand(checkCNIC, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("<script>alert('Teacher already exists, please re-enter.');</script>");
                    Response.End();
                }
                conn.Close();
            }
        }

        protected void btnTeacherRegister_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAddTeacher"].ConnectionString);
                conn.Open();
                string insertQuery = "INSERT INTO tableteacher(teacherName,teacherAddress,teacherCNIC,teacherPhone,teacherEmail,teacherPassword) values (@teacherName,@teacherAddress,@teacherCNIC,@teacherPhone,@teacherEmail,@teacherPassword)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@teacherName", txtTeacherName.Text);
                cmd.Parameters.AddWithValue("@teacherAddress", txtTeacherAddress.Text);
                cmd.Parameters.AddWithValue("@teacherPassword", txtTeacherPassword.Text);
                cmd.Parameters.AddWithValue("@teacherEmail", txtTeacherEmail.Text);
                cmd.Parameters.AddWithValue("@teacherCNIC", txtTeacherCNIC.Text);
                cmd.Parameters.AddWithValue("@teacherPhone", txtTeacherPhone.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Teacher has been registered successfully!');</script>");
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