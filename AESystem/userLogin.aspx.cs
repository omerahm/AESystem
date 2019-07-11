using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace AESystem
{
    public partial class userLogin : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SqlConnection conn =
                new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegister"].ConnectionString);

            SqlCommand cmd =
                new SqlCommand(
                    "SELECT * FROM tableStudent where studentEmail = @studentEmail and studentPassword = @studentPassword", conn);

            cmd.Parameters.AddWithValue("@studentPassword", txtPassword.Text);
            cmd.Parameters.AddWithValue("@studentEmail", txtEmail.Text);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            if (dataTable.Rows.Count > 0)
            {
                Session["id"] = txtEmail.Text;
                Response.Redirect("studentDashboard.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label1.Text = "Entered username/password is incorrect or user does not exist, please click create an account before use";
                Label1.ForeColor = Color.Red;
            }
        }
    }
}
