using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace AESystem
{
    public partial class studentView : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userLogin.aspx");
        }

        protected void Page_Load3(object sender, EventArgs e)
        {

            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringRegister"].ConnectionString;

            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("SELECT [studentEmail] FROM [tableStudent] " +
                "WHERE ([studentEmail] = @studentEmail)", conn);

            SqlCommand cmd = new SqlCommand("SELECT [studentEmail] FROM [tableStudent] " +
                "WHERE ([studentEmail] = @studentEmail)", conn);

           // DataTable dt = new DataTable();

          //  da.Fill(dt);
            //TextBox1.Text = cmd.ExecuteScalar().ToString();
//            TextBox1.Text = dt.Rows[0][0].ToString();

           // TextBox2.Text = dt.Rows[0][1].ToString();

            /*
            string strConnectionString = ConfigurationManager.ConnectionStrings["rptConnection"].ConnectionString;

            SqlConnection myConnect = new SqlConnection(strConnectionString);

            string strCommandText = "SELECT * FROM tableStudent WHERE UserId =@studentEmail";
            SqlCommand cmd = new SqlCommand(strCommandText, myConnect);
            cmd.Parameters.AddWithValue("@studentEmail", txtEmail.text());

            myConnect.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();

            reader.Close();
            myConnect.Close();
            */

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
