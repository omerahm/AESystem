using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AESystem
{
    public partial class studentDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignout_Click(object sender, EventArgs e)
        {
            Response.Redirect("userLogin.aspx");
        }

        protected void btnRollNumberSlip_Click(object sender, EventArgs e)
        {
            Response.Redirect("reportRollNumberSlip.aspx");
        }

        protected void btnStudentDatesheet_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentslip.aspx");
        }
    }
}