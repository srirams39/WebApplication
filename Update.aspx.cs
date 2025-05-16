using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);

                    SqlCommand cmd = new SqlCommand(SqlDataSource1.SelectCommand);

                    cmd.Connection = conn;
                    cmd.Parameters.AddWithValue("@User_Email", Session["Email"].ToString());

                    conn.Open();

                    SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                    while (rdr.Read())
                    {
                        lblEmail.Text = rdr[0].ToString().Trim();
                    }
                    conn.Close();

                }
            }
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand(SqlDataSource1.UpdateCommand);
            cmd.Connection = conn;
            cmd.Parameters.AddWithValue("@User_Email", lblEmail.Text);
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