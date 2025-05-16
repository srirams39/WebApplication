using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    /*
* PAGE: Login.aspx.cs
* PROGRAMMER: Sri Ram Veldandi
* LAST UPDATED: 07/07/2024
* DESCRIPTION: This page is accepts user login credentials and compares them against
* what is stored in our database.
*/
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //nothing here
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // create variables for results
            string strEmail = "";
            string strPass = "";
            string strUser = "";

            //Create sqlConnection
            SqlConnection connLogin = new SqlConnection(SqlDataSource1.ConnectionString);

            //Create sqlCommand
            SqlCommand cmdLogin = new SqlCommand(SqlDataSource1.SelectCommand);

            //Connection for the command
            cmdLogin.Connection = connLogin;

            //parameters fir the command
            cmdLogin.Parameters.AddWithValue("@User_Email",txtemail.Text.Trim());
            cmdLogin.Parameters.AddWithValue("@User_Pass", txtpass.Text.Trim());

            //sql data reader to hold results
            SqlDataReader rdrLogin;

            //open connection to database
            connLogin.Open();

            //fill my data reader by executing select command
            rdrLogin = cmdLogin.ExecuteReader(System.Data.CommandBehavior.CloseConnection);


            //populate my variables from the database result
            while(rdrLogin != null && rdrLogin.Read())
            {
                strEmail = rdrLogin.GetString(0).Trim();
                strPass = rdrLogin.GetString(1).Trim();
                strUser = rdrLogin.GetString(2).Trim() + " " + rdrLogin.GetString(3).Trim();
            }

            
            //Login test to see if supplied credentials match database credentials
            if(strEmail.Trim() == txtemail.Text.Trim() && strPass.Trim() == txtpass.Text.Trim() && txtpass.Text != null)
            {
                //run if true
                Session["Login"] = strUser;
                Session["User"] = strUser;
                Session["Email"] = strEmail;
                //move them to a success page
                Response.Redirect("LoginSuccess.aspx");
            }
            else
            {
                //run this if not true
                lblerror.Text = "Invalid user name and password.";
            }
          connLogin.Close();
        }
    }
}