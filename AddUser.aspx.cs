using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WebApplication
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            //
            SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);

            SqlCommand cmd = new SqlCommand(SqlDataSource1.InsertCommand);

            cmd.Connection = conn;
            cmd.Parameters.AddWithValue("@User_Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@User_Pass", txtPass.Text);
            cmd.Parameters.AddWithValue("@User_FName", txtFname.Text);
            cmd.Parameters.AddWithValue("@User_LName", txtLname.Text);
            cmd.Parameters.AddWithValue("@User_YOB", Convert.ToInt32(txtYob.Text));

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("Login.aspx");
        }
    }
}