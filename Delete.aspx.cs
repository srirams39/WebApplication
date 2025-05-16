using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (Session["Email"]==null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String strEmail = Session["Email"].ToString().Trim();
            Label1.Text = "";

            if (txtEmail.Text == strEmail)
            {
                SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand cmd = new SqlCommand(SqlDataSource1.DeleteCommand);

                cmd.Connection = conn;
                cmd.Parameters.AddWithValue("@User_Email", txtCpass.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("DeleteConfirmationPage.aspx");
            }
            else
            {
                Label1.Text = "You may only delete the logged in account.";
            }
        }
    }
}