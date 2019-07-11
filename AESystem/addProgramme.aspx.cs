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
    public partial class addProgramme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAcceptProgramme_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringProgrammeAdd"].ConnectionString);
                conn.Open();
                string checkProgramme = "select count(*) from tableProgramme where ProgrammeAbbreviation='" + txtProgrammeAbbreviation.Text + "'";
                SqlCommand cmd = new SqlCommand(checkProgramme, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 0)
                {
                    string insertQuery = "INSERT INTO tableProgramme(programmeName,ProgrammeAbbreviation) values (@programmeName,@ProgrammeAbbreviation)";
                    SqlCommand cmd2 = new SqlCommand(insertQuery, conn);
                    cmd2.Parameters.AddWithValue("@programmeName", txtProgrammeName.Text);
                    cmd2.Parameters.AddWithValue("@programmeAbbreviation", txtProgrammeAbbreviation.Text);
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script>alert('Programme has been added successfully!');</script>");
                }
                else if (temp > 0)
                {
                    Response.Write("<script>alert('Programme has already been defined!');</script>");
                }

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error!: ');</script>" + ex.ToString());
            }
            this.gwProgrammeAdd.DataBind();
        }

        protected void btnBackProg_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminDashboard.aspx");
        }
    }
}