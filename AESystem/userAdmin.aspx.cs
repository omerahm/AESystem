using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace AESystem
{
    public partial class userLogin : System.Web.UI.Page
    {
        protected void btnLoginAdmin_Click(object sender, EventArgs e)
        {

            SqlConnection conn =
                new SqlConnection(ConfigurationManager.ConnectionStrings["adminConnection"].ConnectionString);

            SqlCommand cmd =
                new SqlCommand(
                    "SELECT * FROM tableAdmin where adminEmail = @adminEmail and adminPassword = @adminPassword",
                    conn);

            cmd.Parameters.AddWithValue("@adminPassword", txtPasswordAdmin.Text);
            cmd.Parameters.AddWithValue("@adminEmail", txtEmailAdmin.Text);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();

            if (dataTable.Rows.Count > 0)
            {
                Session["id"] = txtEmailAdmin.Text;
                Response.Redirect("adminDashboard.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label2.Text = "Entered username is incorrect or user does not exist, please contact the system owner";
                Label2.ForeColor = Color.Red;
            }
        }
    }
}
