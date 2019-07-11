using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AESystem
{
    public partial class adminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRNS_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminview.aspx");
        }

        protected void btnAdminSignout_Click(object sender, EventArgs e)
        {
            Response.Redirect("userAdmin.aspx");
        }

        protected void btnAddProgramme_Click(object sender, EventArgs e)
        {
            Response.Redirect("addProgramme.aspx");
        }

        protected void btnAddTeacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("addTeacher.aspx");
        }

        protected void btnAddCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("addCourse.aspx");
        }

        protected void btnRollNumSlip_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminRNS.aspx");
        }

        protected void btnCourseMapping_Click(object sender, EventArgs e)
        {
            Response.Redirect("cMapping.aspx");
        }
    }
}