using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Instructors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ddlinstructor.DataBind();

                //set selected index
                ddlinstructor.SelectedIndex = 0;

                SqlConnection connIns = new SqlConnection(dsinsinfo.ConnectionString);

                SqlCommand cmdIns = new SqlCommand(dsinsinfo.SelectCommand);

                cmdIns.Connection = connIns;
                cmdIns.Parameters.AddWithValue("@Ins_ID", ddlinstructor.SelectedValue);

                //open connection
                connIns.Open();

                //populate data reader
                SqlDataReader reader = cmdIns.ExecuteReader();

                while (reader.Read())
                {
                    lblName.Text = reader[1].ToString() + reader[2].ToString();
                    lblBio.Text = reader[3].ToString();
                    img_ins.ImageUrl = reader[4].ToString();
                }
                connIns.Close();
            
            }
        }

        protected void ddlinstructor_SelectedIndexChanged(object sender, EventArgs e)
        {
            //build sqlconnection
            SqlConnection connIns = new SqlConnection(dsinsinfo.ConnectionString);

            //

            //build command
            SqlCommand cmdIns = new SqlCommand(dsinsinfo.SelectCommand);

            cmdIns.Connection = connIns;
            cmdIns.Parameters.AddWithValue("@Ins_ID", ddlinstructor.SelectedValue);

            //open connection
            connIns.Open();
            //populate data reader
            SqlDataReader reader = cmdIns.ExecuteReader();

            while (reader.Read())
            {
                lblName.Text = reader[1].ToString() + reader[2].ToString();
                lblBio.Text = reader[3].ToString();
                img_ins.ImageUrl = reader[4].ToString();
            }
            connIns.Close();
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
