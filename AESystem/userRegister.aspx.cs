using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AESystem
{
    public partial class userRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegister"].ConnectionString);
                conn.Open();
                string checkUser = "select count(*) from tableStudent where studentEmail='" + txtEmail.Text + "'";
                SqlCommand cmd = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("<script>alert('Student Already Exist');</script>");
                    Response.End();
                }
                conn.Close();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e){
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegister"].ConnectionString);
                conn.Open();
                string insertQuery = "INSERT INTO tableStudent(studentName,studentEmail,studentPassword,studentAddress,studentDegree,studentProgramme,studentExamType) values (@studentName,@studentEmail,@studentPassword,@studentAddress,@studentDegree,@studentProgramme,@studentExamType)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@studentName", txtName.Text);
                cmd.Parameters.AddWithValue("@studentAddress", txtAddress.Text);
                cmd.Parameters.AddWithValue("@studentPassword", txtPassword.Text);
                cmd.Parameters.AddWithValue("@studentEmail", txtEmail.Text);
                cmd.Parameters.AddWithValue("@studentDegree", ddlDegree.Text);
                cmd.Parameters.AddWithValue("@studentProgramme", ddlProgramme.Text);
                cmd.Parameters.AddWithValue("@studentExamType", ddlExamType.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Student has been registered successfully!');</script>");
                conn.Close();
            }
            catch (Exception ex){
                Response.Write("error" + ex.ToString());
            }
        }
    }
}